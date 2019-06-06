<?php

namespace App\Http\Controllers\Question;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;
use App\Models\Question;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Illuminate\Contracts\Debug\ExceptionHandler;
use Illuminate\Support\Facades\Redirect;
use App\Models\Category;

class QuestionController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth')->except(['get', 'getAnswers', 'show', 'answersToAnswer']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.question.show', compact('question'))->with('catinfo', $this->catinfo);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $request->validate([
        ]);
        request()->validate([
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'title' => 'required',
            //'category' => 'required',

        ]);
        if($request->hasFile('image'))
        {
            $imageName = time().'.'.request()->image->getClientOriginalExtension();
            request()->image->move(public_path('images/uploaded'), $imageName);
        }

        $category = collect(DB::select('
        SELECT id_category
        FROM category
        WHERE category.name = :name
        ', ['name' => request('catType')]))->first()->id_category;
        $question = new Question();
        $question->title = request('title');
        $question->description = request('description');
        $question->id_category = $category;
        $question->id_user = Auth::user()->id_user;
        if($request->hasFile('image'))
            $question->photo = $imageName;
        else
            $question->photo = null;
        if ($question->save()) {
            return redirect('/questions/' . $question->id_question);
        } else {
            return Redirect::back()->withErrors(['Unable to create a new question.']);
        }
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showCreate()
    {
        return view('pages.question.add')->with('catinfo',Category::all());
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_question)
    {
        $replaces = [
            'id_question' => $id_question
        ];
        $question = collect(DB::select('SELECT id_question, title, description, "date", votes, photo, deleted, id_category, id_user FROM question WHERE id_question = \':id_question\'', $replaces))->first();

        return view('pages.question.edit')->with('question', $question);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function update(Request $request, $id_question)
    {

        $request->validate([
            'title' => 'required',
            'description' => 'required',
            //'category' => 'required'
        ]);

        $question = Question::find($id_question);

        $question->title = request('title');
        $question->description = request('description');
        // $question->category = request('name');

        $question->save();

        return redirect('pages.question.show');
    }


    public function delete($id_question)
    {
        $question = Question::find($id_question);
        if(Auth::user()->id_user == $question->id_user)
        {
            $question->deleted = true;
            $question->save();
            return  'ok';
        }
        return 'error';
    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  Question $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        //TODO
        $question = Question::find();
        $question->deleted = true;
        $question->save();
        return redirect()->back()->withErrors('Wrong Password')->withInput();
    }

    public function topic($category)
    {

        return view('pages.question.topic');
    }

    public function show($id_question)
    {
        $user = NULL;
        if (Auth::check())
            $user = Auth::user()->id_user;
        $replaces = [
            'id_question' => $id_question,
            'id_user' => $user
        ];
        $question = collect(DB::select(
            '
        SELECT "user".username as username, "user".profilePhoto as profilePhoto, question.title as title, question.description as description, question."date" as date, question.votes as votes, question.id_question as id_question,question.deleted as deleted,question.photo as photo,
        (
            SELECT count(id_answer)
            FROM answer
            WHERE answer.id_question = :id_question
        ) as nr_answers, question.name as catName, question.icon as catIcon,
        (
            SELECT count(id_bestAnswer)
            FROM bestAnswer INNER JOIN answer ON ( bestAnswer.id_bestAnswer = answer.id_answer)
            WHERE answer.id_question= :id_question AND bestAnswer.active = true AND bestAnswer.deleted = false
            GROUP BY bestAnswer.id_bestAnswer
        ) as best,
        (
            SELECT type
            FROM voteQuestion
            WHERE voteQuestion.id_question = :id_question AND voteQuestion.username = :id_user
        ) as voteType
        FROM (question INNER JOIN category ON (category.id_category = question.id_category)) as question INNER JOIN "user" ON (question.id_user = "user".id_user)
        WHERE question.id_question = :id_question;
        ',
            $replaces
        ))->first();
        if ($question->deleted == true) {
            return redirect(URL::to('404'));
        }

        $answers = DB::select('
        SELECT answer.id_answer as id_answer,"user".username as username, "user".profilePhoto as profilePhoto, answer."text" as text, answer.date as date, answer.votes as votes, answer.photo as photo, answer.deleted as deleted,
        (
            SELECT count(secondAnswer)
            FROM comment
            WHERE comment.firstAnswer = answer.id_answer
            GROUP BY comment.firstAnswer
        ) as nr_answers,
        (
            SELECT count(id_bestAnswer)
            FROM bestAnswer
            WHERE bestAnswer.id_bestAnswer = answer.id_answer AND bestAnswer.active = true AND bestAnswer.deleted = false
            GROUP BY bestAnswer.id_bestAnswer
        ) as best,
        (
            SELECT type
            FROM voteAnswer
            WHERE voteAnswer.id_answer = answer.id_answer AND voteAnswer.username = :id_user
        ) as voteType
        FROM answer INNER JOIN "user" ON (answer.user_post = "user".id_user)
        WHERE answer.id_question = :id_question AND answer.id_answer NOT IN (
            SELECT secondAnswer
            FROM comment
        );
        ', $replaces);
        if (Auth::check())
            return view('pages.question.show')->with('question', $question)->with('answers', $answers)->with('user', 1);
        else
            return view('pages.question.show')->with('question', $question)->with('answers', $answers)->with('user', 0);
    }

    public function report($id_question)
    {
        $replace = [
            'reason' => request('text'),
            'id_question' => $id_question
        ];
        DB::beginTransaction();
        $id = collect(DB::select('
        INSERT INTO report("date", reason, id_question, id_answer)
        VALUES(now(), :reason, :id_question, null)
        RETURNING id_report;
        ', $replace))->first()->id_report;
        DB::select('
        INSERT INTO userReport(username, id_report)
        VALUES(:username, :id_report);
        ', ['username' => Auth::user()->id_user , 'id_report' => $id]);
        DB::commit();
        return 'ok';
    }

    public function answersToAnswer($id)
    {
        $user = NULL;
        if (Auth::check())
            $user = Auth::user()->id_user;
        $replaces = [
            'id_answer' => $id,
            'id_user' => $user
        ];
        $answers = DB::select('
        SELECT answer.id_answer as id_answer,"user".username as username, "user".profilePhoto as profilePhoto, answer."text" as text, answer.date as date, answer.votes as votes, answer.photo as photo,answer.id_question as id_question, answer.deleted as deleted,
        (
            SELECT count(secondAnswer)
            FROM comment
            WHERE comment.firstAnswer = answer.id_answer
            GROUP BY comment.secondAnswer
        ) as nr_answers ,
        (
            SELECT count(id_bestAnswer)
            FROM bestAnswer
            WHERE bestAnswer.id_bestAnswer = answer.id_answer AND bestAnswer.deleted = false
            GROUP BY bestAnswer.id_bestAnswer
        ) as best,
        (
            SELECT type
            FROM voteAnswer
            WHERE voteAnswer.id_answer = answer.id_answer AND voteAnswer.username = :id_user
        ) as voteType
        FROM (answer INNER JOIN comment ON (answer.id_answer =comment.secondAnswer)) as answer INNER JOIN "user" ON (answer.user_post = "user".id_user)
        WHERE answer.firstAnswer = :id_answer;
        ', $replaces);
        foreach ($answers as $answer) {
            if (Auth::check())
                $answer->auth = 1;
            else
                $answer->auth = 0;
        }

        return response()->json($answers);
    }
}
