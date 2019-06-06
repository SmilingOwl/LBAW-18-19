<?php

namespace App\Http\Controllers\Profile;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Models\Member;

class ApiController extends Controller
{

    public function notifications($username)
    {
        if(Auth::check() && $username === Auth::user()->username)
        {
            $info = DB::select('
            SELECT id_notification as id, description ,type , notification."date" as notDate, "user".username as username, "user".profilePhoto as profilePhoto, notification.questionTarget
            FROM "user" INNER JOIN notification ON ("user".id_user = notification.creator)
            WHERE notification.view = false  AND notification.target = :id_user
            ORDER BY notification."date" DESC
            LIMIT 10',['id_user' => Auth::user()->id_user]);
            return response()->json($info);
        }
        else
        {
            return "";
        }
    }
    
    public function notificationsView($username,$id)
    {
        if(Auth::check() && $username === Auth::user()->username)
        {
            $replace =[
                'id' => $id , 
                'username' => Auth::user()->id_user
            ];
            DB::select('
            UPDATE notification
            SET view = true
            WHERE id_notification = :id AND target = :username;
            ',$replace);
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
        $replace =[
            'name' => $request->name.'%'
        ];
        $userlike = DB::select('
        SELECT "user".username as username, "user".email as email, rank.name as rankName
        FROM "user" INNER JOIN rank ON ("user".id_rank = rank.id_rank)
        WHERE "user".username ILIKE :name
        ',$replace);
        return response()->json($userlike);
    }
}
