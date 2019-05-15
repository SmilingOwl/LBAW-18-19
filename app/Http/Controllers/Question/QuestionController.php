<?php

namespace App\Http\Controllers\Question;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;
use App\Models\Question;

class QuestionController extends Controller 
{

    public function __construct()
    {
       $this->middleware('auth')->except(['get', 'getAnswers']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.question.show', compact('question'))->with('catinfo',$this->catinfo);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $request->validate([
            'title' => 'required',
            //'category' => 'required',
        ]);
          
        $question = new Question();
        $question->title = request('title');
        $question->description = request('description');
        $question->id_category = 2;
        $question->id_user = Auth::user()->id_user;

        $id_question = $question->save(); 
        
       return view('pages.question.show', compact($id_question));
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showCreate()
    {
        return view('pages.question.add');
    }

    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_question)
    {
        return view('pages.question.edit');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

     public function update(Question $question)
    {      
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            //'category' => 'required'
        ]);

        $question->title = request('title');
        $question->content = request('description');
        $question->category = request('name');

        $question->save();
        
        return redirect('pages.question.show');
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
        $question= Question::find();
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
        //todo
    }
}
