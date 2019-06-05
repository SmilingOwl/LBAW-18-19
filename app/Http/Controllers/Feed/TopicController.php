<?php

namespace App\Http\Controllers\Feed;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Member;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\Hash;


class TopicController extends Controller
{

    public function __construct(){
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }
    /**
     * Show the questions for the given category.
     *
     * @param  int  $category
     * @return View
     */
    public function show($category)
    {
        $replaces = [
            'category' => $category
        ];


        $questions = DB::select('
        SELECT id_question, username, "user".profilePhoto as photo, title, description, date, votes, category.name, 
        (
            Select count(answer.id_answer)
            From answer 
            WHERE question.id_question = answer.id_question
        ) as contagem, 
        (
            SELECT count(bestAnswer.id_bestAnswer) as hasBest
            FROM answer INNER JOIN bestAnswer ON ( answer.id_answer = bestAnswer.id_bestAnswer)
            WHERE answer.id_question = question.id_question
        ) as hasBest, category.icon as catIcon
        FROM (question
        INNER JOIN "user" ON (question.id_user = "user".id_user))
        INNER JOIN category ON (question.id_category = category.id_category)
        WHERE category.name = :category
        ORDER BY question.date DESC
        LIMIT 10;', $replaces);
        
        $top_users=DB::select('
        SELECT username, "user".profilePhoto as photo, points
        FROM "user"
        ORDER BY points DESC
        LIMIT 5;');

        return view('pages.feed.show')->with('questions',$questions)->with('top_users',$top_users);

    }
}