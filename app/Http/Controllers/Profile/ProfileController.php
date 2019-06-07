<?php

namespace App\Http\Controllers\Profile;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Member;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\Hash;

class ProfileController extends Controller
{

    public function __construct(){
        $this->middleware('auth')->except(['getType']);
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
     * Display the specified resource.
     *
     * @param  int  $username
     * @return \Illuminate\Http\Response
     */
    public function show($username)//TODO
    {
        $replaces = [
            'username' => $username
        ];
        $member = collect(DB::select('
        SELECT "user".id_user as id,username, rank.name as rank,username, bioDescription, points, profilePhoto, name , 
        (
            SELECT COUNT(question.id_question)
            FROM "user" INNER JOIN question ON ("user".id_user = question.id_user)
            WHERE "user".username LIKE :username
            GROUP BY "user".id_user
        ) AS nr_questions, (
            SELECT COUNT(answer.id_answer)
            FROM "user" INNER JOIN answer ON ("user".id_user = answer.user_post)
            WHERE "user".username LIKE :username
            GROUP BY "user".id_user
        ) AS nr_answers, (
            SELECT COUNT(bestAnswer.id_bestAnswer)
            FROM "user",answer,bestAnswer
            Where bestAnswer.id_bestAnswer = answer.id_answer AND "user".id_user = answer.user_post AND "user".username LIKE :username
            GROUP BY "user".id_user
        ) AS nr_best_answers
        FROM "user", rank
        Where  "user".id_rank=rank.id_rank AND "user".username LIKE :username'
        ,$replaces))->first();
        
        $followers = collect(DB::select('
        SELECT id_user,username , profilePhoto , points, id_rank , 
        (Select rank.name from "user" INNER JOIN rank ON ( "user".id_rank = rank.id_rank) WHERE "user".deleted = false AND "user".banned = false AND "user".id_user = follow.follower) as rank
        FROM follow INNER JOIN "user" ON (follow.follower="user".id_user)
        WHERE follow.following = :id',
        ['id' => $member->id]));
        
        $following = collect(DB::select('
        SELECT id_user,username , profilePhoto , points, id_rank ,
        (Select rank.name from "user" INNER JOIN rank ON ( "user".id_rank = rank.id_rank) WHERE "user".id_user = follow.following) as rank
        FROM follow INNER JOIN "user" ON follow.following ="user".id_user
        WHERE follow.follower = :id'
        ,['id' => $member->id]));
        
        $questions = DB::select('
        SELECT question.id_question as id, question.title as title, question."date" as "date", question.votes as votes, question.deleted as deleted ,
        (
            Select count(answer.id_answer)
            From answer 
            WHERE question.id_question = answer.id_question
        ) as contagem, 
        (
            SELECT count(bestAnswer.id_bestAnswer) as hasBest
            FROM answer INNER JOIN bestAnswer ON ( answer.id_answer = bestAnswer.id_bestAnswer)
            WHERE answer.id_question = question.id_question
        ) as hasBest,category.icon as catIcon
        FROM question INNER JOIN category ON (question.id_category = category.id_category)
        WHERE question.id_user = :id AND question.deleted = false
        GROUP BY question.id_question, category.icon
        ORDER BY question."date" DESC
        LIMIT 10'
        ,['id' => $member->id]);
        return view('pages.profile.show')->with('member',$member)->with('followers',$followers)->with('followings',$following)->with('questions',$questions);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $username
     * @return \Illuminate\Http\Response
     */
    public function edit($username)
    {
        $member = Auth::user();
        if($username == $member->username)
            return view('pages.profile.edit', compact('member'));
        else
            return redirect('/404');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $username
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $request->validate([
            'username' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:user,email,'.Auth::user()->id_user.',id_user',
            'password' => 'required|string|min:6|confirmed',
        ]);
        $member = Member::find(Auth::user()->id_user);
       
        $member->username = request('username');
        $member->email = request('email');
        $member->biodescription = request('biodescription');
        $member->password = bcrypt(request('password'));
        
        $member->save();
        
        return redirect('logout');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $username
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request,$username)
    {
        if (Hash::check(request('password'), collect(DB::select('select password from "user" where id_user = ' . Auth::user()->id_user))->first()->password)) {
            $member=Member::find(Auth::user()->id_user);
            $member->deleted = true;
            $member->save();
            return  redirect('logout');
        }
        return redirect()->back()->withErrors('Wrong Password')->withInput();
    }

    public function ban(Request $request,$username){
        $replace = [
            'username' => Auth::user()['username']
        ];
        $type = collect(DB::select('select role.type as type from "user",role where "user".username = :username and role.id_user = "user".id_user',$replace))->first();
        if($type->type === "administrator" || $type->type === "moderator")
        {
            DB::select('
            UPDATE "user"
            SET banned = true
            WHERE "user".username = :username;
            ',['username' => $username]
            );
        }
    }

    public function dismissModerator(Request $request,$username){
        $replace = [
            'username' => Auth::user()['username']
        ];
        $type = collect(DB::select('select role.type as type from "user",role where "user".username = :username and role.id_user = "user".id_user',$replace))->first();
        if($type->type === "administrator")
        {
            $id_user = collect(DB::select('
            SELECT id_user
            FROM "user"
            WHERE "user".username LIKE :username
            ',['username' => $username]))->first()->id_user;

            DB::select('
            UPDATE role
            SET endDate = now()
            WHERE id_user = :id_user AND endDate IS NULL;
            ',['id_user' => $id_user]
            );

            DB::select('
            INSERT INTO role(type,beginningDate,endDate,id_user)
            VALUES(:type,now(),NULL,:id_user)
            ',['type' => 'member','id_user' => $id_user]
            );
        }
        
    }
    
    /**
     * Follow user
     */
    public function follow(Request $request, $username) {
        $replace = [
            'username' => Auth::user()['username']
        ];

        $id_userFollower = collect(DB::select('
            SELECT id_user
            FROM "user"
            WHERE "user".username LIKE :username
            ',['username' => $username2]))->first()->id_user;
        
        $id_userFollowing = collect(DB::select('
           SELECT id_user
           FROM "user"
           WHERE "user".username = $username'))->first()->id_user;

        DB::select('
          INSERT INTO follow(follower, following)
          VALUES(:id_userFollower, :id_userFollowing)
          ',['id_userFollower' => $id_userFollower,'id_userFollowing' => $id_userFollowing]
        );
    }

    /**
     * Unfollow user
     */
    public function unFollow(Request $request, $username) {
  
        $replace = [
            'username' => Auth::user()['username']
        ];

        $id_userFollower = collect(DB::select('
            SELECT id_user
            FROM "user"
            WHERE "user".username LIKE :username
            ',['username' => $username2]))->first()->id_user;
        
        $id_userFollowing = collect(DB::select('
           SELECT id_user
           FROM "user"
           WHERE "user".username = $username'))->first()->id_user;
           
        DB::select('
        DELETE FROM follow 
        where follower = $id_userFollower and following = $id_userFollowing'
        );
    }

    public function promoteToModerator(Request $request,$username){
        $replace = [
            'username' => Auth::user()['username']
        ];
        $type = collect(DB::select('select role.type as type from "user",role where "user".username = :username and role.id_user = "user".id_user',$replace))->first();
        if($type->type === "administrator")
        {
            $id_user = collect(DB::select('
            SELECT id_user
            FROM "user"
            WHERE "user".username LIKE :username
            ',['username' => $username]))->first()->id_user;

            DB::select('
            UPDATE role
            SET endDate = now()
            WHERE id_user = :id_user AND endDate IS NULL;
            ',['id_user' => $id_user]
            );

            DB::select('
            INSERT INTO role(type,beginningDate,endDate,id_user)
            VALUES(:type,now(),NULL,:id_user)
            ',['type' => 'moderator','id_user' => $id_user]
            );
        }


    }

    /**
     * Update the user profile picture 
     * 
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function updatePicture(Request $request) {
       
        $member = Auth::user(); 
        $request->validate([
            'profilePhoto' => 'required|url'
        ]);

        $member->profile_picture = request('profilePhoto');
        $member->save();
        return redirect()->route('profile.edit', $member);
    }


     /**
     * Update the user email 
     * 
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
     public function updateEmail(Request $request) {
        $member = Auth::user(); 
       
        $request->validate([
            'email' => 'required|string|email|max:255|unique:member'
        ]);

        $member->email = request('email');
        $member->save();
        return redirect()->route('settings');
    }

    /**
     * Update the user password 
     * 
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function updatePassword(Request $request) {
        $member = Auth::user(); 
        $request->validate([
            'password' => 'required|string|min:8'
        ]);
        $member->password = bcrypt(request('password'));
        $member->save();
        return redirect()->route('settings');
    }

     
   /**
    * Redirects to the followers page
    */ 
    public function followers($username){
        $member = collect(DB::select('SELECT id_user, username , profilePhoto , points, id_rank from follow inner join "user" on (follow.following="user".id_user) where follow.follower = (SELECT "user".id_user  where "user".username = \''. $username .'\''))->first();

        return view('pages.profile.followers', compact('$member'));
    }

    /**
    * Redirects to the following page
    */ 

    public function following($username){
        $member = collect(DB::select('SELECT id_user, username , profilePhoto , points, id_rank from follow inner join "user" on (follow.follower="user".id_user) where follow.following = (SELECT "user".id_user  where "user".username = \''. $username .'\''))->first();
       
        //return var_dump($member);
       return view('pages.profile.following', compact('$member'));
    }

    /**
    * Redirects to the settings page
    */ 
    public function settings(){
        return view('pages.profile.settings')->with('username',Auth::user()->username);  
    }

    public function getType()
    {
        if(!Auth::check())return 'null';
        $response = collect(DB::select('select "user".username as username ,role.type as type from "user", role where "user".username = \'' . Auth::user()['username'] .'\' and role.id_user = "user".id_user'))->first();
        return response()->json($response);
    }

    public function delete_account(Request $request, $username){
        $member = Member::find($username);
        $member->delete();
        return $member;
    }

    public function admin($username)
    {
        $type = collect(DB::select('select role.type as type from "user",role where "user".username = \'' . Auth::user()['username'] .'\' and role.id_user = "user".id_user'))->first();
        if($type->type === "administrator")
        {
            $categories_info= DB::select('
            SELECT category.name as name, category.icon as icon, count(question.id_question) as number,
            (
                SELECT count(question.id_question)
                FROM question
            ) as total
            FROM category INNER JOIN question ON ( category.id_category = question.id_category)
            GROUP BY category.name,category.icon');
           
            $moderators = DB::select('
            SELECT DISTINCT "user".username as username, "user".email as email, rank.name as rankName
            FROM ("user" INNER JOIN role ON ("user".id_user = role.id_user)) as "user" INNER JOIN rank ON ("user".id_rank = rank.id_rank)
            Where "user".endDate is NULL AND "user".type = \'moderator\'');
           
            $reports = DB::select('
            SELECT "user".username as reporter, report."date" as "date", report.reason as reason, report.id_question as question , report.id_answer as answer
            FROM (userReport INNER JOIN report ON (report.id_report = userReport.id_report)) as report 
            INNER JOIN "user" ON ("user".id_user = report.username)
            ');
           
            foreach ($reports as $report ) {
                if(is_null($report->answer))
                {
                    $report->target = collect(DB::select('
                    SELECT username
                    FROM "user" INNER JOIN question ON ("user".id_user = question.id_user)
                    WHERE question.id_question = '. $report->question .'
                    '))->first();
                }
                else
                {
                    $report->target = collect(DB::select('
                    SELECT username, answer.id_question as question
                    FROM "user" INNER JOIN answer ON ("user".id_user = answer.user_post)
                    WHERE answer.id_answer = '. $report->answer .'
                    '))->first();
                }
            }
            return view('pages.profile.admin')->with('catInfo',$categories_info)->with('moderators',$moderators)->with('reports',$reports);
        }
        else
        {
            return redirect('404');
        }
    }

    public function moderator($username)
    {
        $type = collect(DB::select('select role.type as type from "user",role where "user".username = \'' . Auth::user()['username'] .'\' and role.id_user = "user".id_user'))->first();
        if($type->type === "moderator")
        {
            $reports = DB::select('
            SELECT "user".username as reporter, report."date" as "date", report.reason as reason, report.id_question as question , report.id_answer as answer
            FROM (userReport INNER JOIN report ON (report.id_report = userReport.id_report)) as report 
            INNER JOIN "user" ON ("user".id_user = report.username)
            ');
           
            foreach ($reports as $report ) {
                if(is_null($report->answer))
                {
                    $report->target = collect(DB::select('
                    SELECT username
                    FROM "user" INNER JOIN question ON ("user".id_user = question.id_user)
                    WHERE question.id_question = '. $report->question .'
                    '))->first();
                }
                else
                {
                    $report->target = collect(DB::select('
                    SELECT username, answer.id_question as question
                    FROM "user" INNER JOIN answer ON ("user".id_user = answer.user_post)
                    WHERE answer.id_answer = '. $report->answer .'
                    '))->first();
                }
            }
            return view('pages.profile.moderator')->with('reports',$reports);
        }
        else
        {
            return redirect('404');
        }
    }

}
