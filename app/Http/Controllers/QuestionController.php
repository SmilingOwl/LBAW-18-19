<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use \App\Models\Question;
use \App\Models\Category;

class QuestionController extends Controller
{
    public function show(Question $question){
        return view('pages.question.show', compact('question'));
    }

    public function store(){  
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

}
