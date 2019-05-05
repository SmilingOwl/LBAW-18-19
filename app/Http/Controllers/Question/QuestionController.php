<?php

namespace App\Http\Controllers\Question;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Question;

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
    public function create()
    {
        return view('pages.question.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate(request(), [
            'title' => 'required',
        ]);
          
        $question = new Question();
        $question->title = request('title');
        $question->date = now();
        $question->category = request('category');
        request()->user()->questions()->save($question);

        
        session()->flash('message','Your question has now been published');
        return redirect()->route('question', $question);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('pages.question.show', compact('question'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        $this->authorize('update', $question);
        
        $this->validate(request(), [
            'title' => 'required',
            'description' => 'required',
            'category' => 'required'
        ]);
        $question->title = request('title');
        $question->content = request('description');
        $question->category = request('name');

        $question->save();
        $response = [
            'title' => $question->title,
            'description' => $question->description,
            'category' => $question->name
        ];
        return $response;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Question $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        $this->authorize('delete', $question);
        $result = false;
       
        if($question->delete())
            $result = true;
       
            return compact('result');
    }

    public function topic($category)
    {
        return view('pages.question.topic');
    }
}
