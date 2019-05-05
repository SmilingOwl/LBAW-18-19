<?php

namespace App\Http\Controllers\Profile;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Member;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;

class ProfileController extends Controller
{

    public function __construct(){
        $this->middleware('auth')->except(['show','followers','following','getType']);
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
    public function show($username)
    {
        $member = collect(DB::select('
        SELECT "user".id_user as id,username, rank.name as rank, bioDescription, points, profilePhoto, name ,
        (SELECT COUNT("user".id_user) FROM "user" INNER JOIN question ON ("user".id_user = question.id_user)) AS nr_questions, 
        (SELECT COUNT("user".id_user) FROM "user" INNER JOIN answer ON ("user".id_user = answer.user_post)) AS nr_answers, 
        (SELECT COUNT("user".id_user) FROM "user",answer,bestAnswer Where bestAnswer.id_bestAnswer = answer.id_answer AND "user".id_user = answer.user_post) AS nr_best_answers 
        FROM "user", rank 
        Where  "user".id_rank=rank.id_rank AND "user".username = \''. $username .'\''))->first();
        $followers = DB::select('
        SELECT id_user,username , profilePhoto , points, id_rank , 
        (Select rank.name from "user" INNER JOIN rank ON ( "user".id_rank = rank.id_rank) WHERE "user".id_user = follow.follower) as rank
        FROM follow INNER JOIN "user" ON (follow.follower="user".id_user)
        WHERE follow.following = '. $member->id);
        $following = DB::select('
        SELECT id_user,username , profilePhoto , points, id_rank ,
        (Select rank.name from "user" INNER JOIN rank ON ( "user".id_rank = rank.id_rank) WHERE "user".id_user = follow.following) as rank
        FROM follow INNER JOIN "user" ON follow.following ="user".id_user
        WHERE follow.follower = '. $member->id);
        return view('pages.profile.show')->with('member',$member)->with('followers',$followers)->with('followings',$following);
    }

       /**
     * Display the edit profile resource.
     *
     * @param  Member  $member
     * @return \Illuminate\Http\Response
     */
 /*   public function editProfile(Member $member)
    {
        return view('pages.profile.edit', compact('member'));
    }
*/

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $username
     * @return \Illuminate\Http\Response
     */
    public function edit($username)
    {
        $member = Auth::user();
        return view('pages.profile.edit', compact('member'));
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
        $member = Auth::user();
       
        $this->validate(request(), [
    
        ]);
        $member->username = $request['username'];//request('');
        $member->email = $request['username'];
      //  $member->bioDescription = request('bioDescription');
        $member->save();
        return redirect()->action('Profile\ProfileController@show', $member);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $username
     * @return \Illuminate\Http\Response
     */
    public function destroy($username)
    {
        //
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
     * Follow user
     * @param Member $follower
     * @return reponse to the previous location 
     */
    public function follow(Member $follower) {
        Auth::user()->follow($follower);
        return back();
    }

    
    /**
     * Unfollow user
     * @param Member $follower
     * @return reponse to the previous location 
     */
    public function unFollow(Member $follower) {
        Auth::user()->unFollow($follower);
        return back();
    }
     
   /**
    * Redirects to the followers page
    */ 
    public function followers($username){
        $member = collect(DB::select('SELECT id_user, username , profilePhoto , points, id_rank from follow inner join "user" on (follow.following="user".id_user) where follow.follower = (SELECT "user".id_user  where "user".username = \''. $username .'\''))->first();

        return view('pages.profile.followers', compact('member'));
    }

    /**
    * Redirects to the following page
    */ 

    public function following($username){
        $member = collect(DB::select('SELECT id_user, username , profilePhoto , points, id_rank from follow inner join "user" on (follow.follower="user".id_user) where follow.following = (SELECT "user".id_user  where "user".username = \''. $username .'\''))->first();
       
        return view('pages.profile.following', compact('$member'));
    }

    /**
    * Redirects to the settings page
    */ 
    public function settings(){
        return view('pages.profile.settings');  
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
            return view('pages.profile.admin');
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
            return view('pages.profile.moderator');
        }
        else
        {
            return redirect('404');
        }
    }
}
