<?php

namespace App\Http\Controllers\Question;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AnswerController extends Controller
{
    public function __construct()
    {
       $this->middleware('auth');
    }
    public function addToQuestion()
    {
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
        return redirect()->back();
    }
}
