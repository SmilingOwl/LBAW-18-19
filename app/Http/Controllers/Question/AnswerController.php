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
}
