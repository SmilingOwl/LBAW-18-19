<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Member;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;
use Socialite;
use Illuminate\Support\Facades\URL;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;


    
    public function redirectTo()
    {  
        if(!Auth::check())
            $type='null';
        else
            $type = collect(DB::select('
            select "user".username as username ,role.type as type 
            from "user", role 
            where "user".username = :username and role.id_user = "user".id_user'
            ,['username' => Auth::user()['username']]))->first();
        session(['type' => $type]);
        return '/topic/all';
    }
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
    {
        //
        return view('auth.login');
    }

    public function username()
    {
        return 'username';
    }

    public function logout(Request $request)
    {
        session()->forget('type');
        Auth::logout();
        return redirect(URL::to('/login'));
    }
    public function login(Request $request)
    {
        $this->validateLogin($request);

        // If the class is using the ThrottlesLogins trait, we can automatically throttle
        // the login attempts for this application. We'll key this by the username and
        // the IP address of the client making these requests into this application.
        if ($this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }
        $user = Member::where('username',$request->username)->first();

        if($user->deleted || $user->removed)
        {
            $this->incrementLoginAttempts($request);
            return $this->sendFailedLoginRemoved($request);
        }

        if ($this->attemptLogin($request)) {
            return $this->sendLoginResponse($request);
        }

        // If the login attempt was unsuccessful we will increment the number of attempts
        // to login and redirect the user back to the login form. Of course, when this
        // user surpasses their maximum number of attempts they will get locked out.
        $this->incrementLoginAttempts($request);

        return $this->sendFailedLoginResponse($request);
    }

    
    /**
     * Get the failed login removed response instance.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @throws ValidationException
     */
    protected function sendFailedLoginRemoved(Request $request)
    {
        throw ValidationException::withMessages([
            $this->username() => [trans('auth.removed')],
        ]);
    }

    /**
     * Redirect the user to the Facebook authentication page.
     *
     * @return \Illuminate\Http\Response
     */
    public function redirectToProvider_Fb()
    {
        return Socialite::driver('facebook')->redirect();
    }

    /**
     * Obtain the user information from Facebook.
     *
     * @return \Illuminate\Http\Response
     */
    public function handleProviderCallback_Fb()
    {
        $user = Socialite::driver('facebook')->user();

        $newUser = Member::where('provider_id', $user->getId())->first();

        if(!$newUser) {
         $newUser = Member::create([
                'email' => $user->getEmail(),
                'username' => $user->getName(),
                'id_user' => $user->getId(),
                'provider_id' => 'facebook',
        ]);
        }

        Auth::login($newUser, true);

        return redirect($this->redirectTo);

        // $user->token;
    }
    /**
     * Redirect the user to the Google authentication page.
     *
     * @return \Illuminate\Http\Response
     */
    public function redirectToProvider_Gl()
    {
        return Socialite::driver('google')->redirect();
    }

    /**
     * Obtain the user information from Google.
     *
     * @return \Illuminate\Http\Response
     */
    public function handleProviderCallback_Gl()
    {
        $user = Socialite::driver('google')->user();

        $newUser = Member::where('provider_id', $user->getId())->first();

        if(!$newUser) {
         $newUser = Member::create([
                'email' => $user->getEmail(),
                'username' => $user->getName(),
                'id_user' => $user->getId(),
                'provider_id' => 'google',
        ]);
        }

        Auth::login($newUser, true);

        return redirect($this->redirectTo);

        // $user->token;
    }
}
