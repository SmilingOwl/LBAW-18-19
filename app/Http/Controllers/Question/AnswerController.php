<?php

namespace App\Http\Controllers\Question;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\Answer;

class AnswerController extends Controller
{
    public function __construct()
    {
       $this->middleware('auth');
    }
    protected $redirectTo = '/404';



    public function delete($id_answer)
    {
        $answer = Answer::find($id_answer);
        if(Auth::user()->id_user == $answer->user_post)
        {
            $answer->deleted = true;
            $answer->save();
            return  'ok';
        }
        return 'error';
    }

    public function addToQuestion()
    {
        DB::transaction(function () {
            $replaces = [
                'text' => request('text'),
                'id_question' => request('id_question'),
                'user_post' => Auth::user()->id_user
            ];
            
            DB::select('
            INSERT INTO answer("text", "date", votes, photo,deleted, id_question, user_post)
            VALUES( :text, now(), 0, NULL, false, :id_question, :user_post);
            ',$replaces
            );
            $questionOwner = collect(DB::select('
            SELECT id_user
            FROM question
            WHERE id_question = :id_question
            ',['id_question' => request('id_question')]
            ))->first()->id_user;
            $questionOwnerUsername = collect(DB::select('
            SELECT "user".username as username
            FROM "user"
            WHERE "user".id_user = :id_user
            ',['id_user' => $questionOwner]
            ))->first()->username;
            $replaces = [
                'description' => $questionOwnerUsername.' answered your question',
                'type' => 'question',
                'view' => false,
                'questionTarget' => request('id_question'),
                'target' => $questionOwner,
                'creator' => Auth::user()->id_user
            ];
            DB::select('
            INSERT INTO notification (description, type, view,"date",questionTarget,target,creator)
            VALUES (:description, :type, :view, now(), :questionTarget,:target,:creator);
            ',$replaces
            );
        });
        

        return redirect()->back();
    }

    public function addToAnswer()
    {
        DB::transaction(function () {
            $replaces = [
                'text' => request('text'),
                'id_question' => request('id_question'),
                'user_post' => Auth::user()->id_user
            ];
            $id_answer= collect(DB::select('
            INSERT INTO answer("text", "date", votes, photo,deleted, id_question, user_post)
            VALUES( :text, now(), 0, NULL, false, :id_question, :user_post)
            RETURNING id_answer;
            ',$replaces
            ))->first()->id_answer;
            DB::select('
            INSERT INTO comment (firstAnswer, secondAnswer)
            VALUES (:firstAnswer,:secondAnswer);
            ',['firstAnswer' => request('id_answer') , 'secondAnswer'  => $id_answer]
            );
            
            $answerOwner = collect(DB::select('
            SELECT user_post as id_user
            FROM answer
            WHERE id_answer = :id_answer
            ',['id_answer' => request('id_answer')]
            ))->first()->id_user;
            $answerOwnerUsername = collect(DB::select('
            SELECT "user".username as username
            FROM "user"
            WHERE "user".id_user = :id_user
            ',['id_user' => $answerOwner]
            ))->first()->username;
            $replaces = [
                'description' => $answerOwnerUsername.' commented on your answer',
                'type' => 'answer',
                'view' => false,
                'questionTarget' => request('id_question'),
                'target' => $answerOwner,
                'creator' => Auth::user()->id_user
            ];
            DB::select('
            INSERT INTO notification (description, type, view,"date",questionTarget,target,creator)
            VALUES (:description, :type, :view, now(), :questionTarget,:target,:creator);
            ',$replaces
            );
        });
        

        return redirect()->back();
        
    }
    public function report($id_answer)
    {
        $replace = [
            'reason' => request('text'),
            'id_answer' => $id_answer
        ];
        DB::beginTransaction();
        $id = collect(DB::select('
        INSERT INTO report("date", reason, id_question, id_answer)
        VALUES(now(), :reason, null, :id_answer)
        RETURNING id_report;
        ', $replace))->first()->id_report;
        DB::select('
        INSERT INTO userReport(username, id_report)
        VALUES(:username, :id_report);
        ', ['username' => Auth::user()->id_user , 'id_report' => $id]);
        DB::commit();
        return 'ok';
    }
    public function bestAnswer($id_answer)
    {
        $replace = [
            'id_answer' => $id_answer
        ];
        DB::beginTransaction();
        $info = collect(DB::select('
        SELECT answer.text as text , answer.date as date, answer.photo as photo,answer.votes as votes, answer.deleted as deleted, question.id_user as id_user
        FROM answer INNER JOIN question ON (answer.id_question = question.id_question)
        WHERE answer.id_answer = :id_answer 
        ', $replace))->first();
        if($info->id_user != Auth::user()->id_user)
            return 'error';
        $replaces = [
            'id_bestAnswer' => $id_answer,
            'text' => $info->text,
            'date' => $info->date,
            'deleted' => $info->deleted,
            'votes' => $info->votes,
            'photo' => $info->photo 
        ];
        DB::select('
        INSERT INTO bestAnswer(id_bestAnswer,attributionDate,"text","date",deleted,active,votes,photo)
        VALUES(:id_bestAnswer,now(),:text,:date,:deleted,true,:votes,:photo);
        ', $replaces);
        DB::commit();
        return 'ok';
    }
}
