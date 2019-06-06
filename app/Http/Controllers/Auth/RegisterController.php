<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use App\Models\Member;
use App\Models\Category;
use Illuminate\Support\Facades\DB;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/faq';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'username' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:user',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        $member = Member::create([
            'username' => $data['username'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'birthdate' => $data['birthdate'],
            'points' => 0,
            'banned' => false,
            'deleted' => false
        ]);
        DB::select('
        INSERT INTO role(type,beginningDate,endDate,id_user)
        VALUES(\'member\',now(),NULL,:id_user);
        ', ['id_user' => $member->id_user]);
        $type = collect(DB::select('
        select "user".username as username ,role.type as type 
        from "user", role 
        where "user".username = :username and role.id_user = "user".id_user'
        ,['username' => $member->username]))->first();
        session(['type' => $type]);
        redirect('login');
        return $member;
    }

    public function showRegistrationForm()
    {
        return view('auth.register');
    }
}
