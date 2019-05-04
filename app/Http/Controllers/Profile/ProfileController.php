<?php

namespace App\Http\Controllers\Profile;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\Member;

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
     * @param  Member  $member
     * @return \Illuminate\Http\Response
     */
    public function show(Member $member)
    {
        return view('pages.profile.show', compact('member'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $member = Auth::user();
        return view('pages.profile.edit', compact('member'));
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
        $member = Auth::user();
        $this->validate(request(), [
       
        ]);
        $member->username = request('username');
        $member->bioDescription = request('bioDescription');
        $member->save();
        return redirect()->route('profile', $member);//
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
    public function followers(Member $member){
        return view('pages.profile.followers', compact('member'));
    }

    /**
    * Redirects to the following page
    */ 
    public function following(Member $member){
        return view('pages.profile.following', compact('member'));
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
        $response = DB::select('select role.type as type from "user",role where "user".username = \'' . Auth::user()['username'] .'\' and role.id_user = "user".id_user');
        return response()->json($response);
    }
}
