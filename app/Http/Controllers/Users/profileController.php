<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Member;

class ProfileController extends Controller
{
    public function __construct(){
        $this->middleware('auth')->except(['show','followers','following']);
    }

    public function show(Member $member){
        return view('pages.profile.show', compact('member'));
    }

    public function edit(){
        $member = Auth::user();
        return view('pages.profile.edit', compact('member'));
    }

    public function update(){
        $member = Auth::user();
        $this->validate(request(), [
       
        ]);
        $member->username = request('username');
        $member->bioDescription = request('bioDescription');
        $member->save();
        return redirect()->route('profile', $member);
    }
 
    public function updatePicture(Request $request) {
        $member = Auth::user(); 
        $request->validate([
            'profilePhoto' => 'required|url'
        ]);

        $member->profile_picture = request('profilePhoto');
        $member->save();
        return redirect()->route('profile.edit', $member);
    }

    public function updateEmail(Request $request) {
        $member = Auth::user(); 
       
        $request->validate([
            'email' => 'required|string|email|max:255|unique:member'
        ]);

        $member->email = request('email');
        $member->save();
        return redirect()->route('settings');
    }
    public function updatePassword(Request $request) {
        $member = Auth::user(); 
        $request->validate([
            'password' => 'required|string|min:8'
        ]);
        $member->password = bcrypt(request('password'));
        $member->save();
        return redirect()->route('settings');
    }
           
    public function followers(Member $member){
        return view('pages.profile.followers', compact('member'));
    }

    public function following(Member $member){
        return view('pages.profile.following', compact('member'));
    }

    public function follow(Member $follower) {
        Auth::user()->follow($follower);
        return back();
    }

    public function unFollow(Member $follower) {
        Auth::user()->unFollow($follower);
        return back();
    }

    public function settings(){
        return view('pages.profile.settings');
    
    }
   
}