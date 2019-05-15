<?php

namespace App\Http\Controllers\Profile;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Models\Member;

class ApiController extends Controller
{
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
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function notifications($username)
    {
        if(Auth::check() && $username === Auth::user()->username)
        {
            $info = DB::select('
            SELECT id_notification as id, description ,type , notification."date" as notDate, "user".username as username, "user".profilePhoto as profilePhoto, notification.questionTarget
            FROM "user" INNER JOIN notification ON ("user".id_user = notification.creator)
            WHERE notification.view = false  AND notification.target = '. Auth::user()->id_user .'
            ORDER BY notification."date" DESC
            LIMIT 10');
            return response()->json($info);
        }
        else
        {
            return "";
        }
    }
    

    public function likeUser(Request $request)  
    {
        if(is_null($request->name))
        {
            return response()->json(null);
        }
        $userlike = DB::select('
        SELECT "user".username as username, "user".email as email, rank.name as rankName
        FROM "user" INNER JOIN rank ON ("user".id_rank = rank.id_rank)
        WHERE "user".username ILIKE \''.$request->name.'%\'
        ');
        return response()->json($userlike);
    }
}
