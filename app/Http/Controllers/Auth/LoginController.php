<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

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

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }


    //login for necessary user
    public function login(Request $request)
    {
        $input = $request->all();

        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required',
        ]);


        //identifying which user role
        if(auth()->attempt(array('email' => $input['email'],'password' => $input['password'])))
        {

            if (auth()->user()->role == 'artist') {
                return redirect()->route('home.artist');
            }
            else if (auth()->user()->role == 'buyer') {
            return redirect()->route('home.buyer');
            } 
        }   else {
            return back()
            ->with('message', 'Email-Address and Password are wrong stupid betch');
        } ;
    }

}
