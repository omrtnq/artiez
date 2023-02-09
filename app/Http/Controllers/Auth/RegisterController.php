<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Models\Buyer;
use App\Models\Artist;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

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
    protected $redirectTo = RouteServiceProvider::HOME;

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
            
    'last_name' => ['required', 'string', 'max:255'],
     'first_name' => ['required', 'string', 'max:255'],
     'contact_number' => ['required', 'string', 'max:255'],
     'email' => ['required', 'string', 'email', 'max:255', 'unique:users'], 
     'pass' => ['required', 'string', 'min:8', 'confirmed'], 
     'street_address' => ['required', 'string', 'max:255'], 
     'district' => ['required', 'string', 'max:255'],
     'barangay' => ['required', 'string', 'max:255'], 
     'city' => ['required', 'string', 'max:255'],
     'province' => ['required', 'string', 'max:255'],
     'postal_code' => ['required', 'string', 'max:255'],
        ],

        
        
    );
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\Buyer
     */
    protected function create(array $data)
    {
        return User::create([
            
            
     'first_name' => $data['first_name'],
     'last_name' => $data['last_name'],
     'contact_number' => $data['contact_number'],
     'email' => $data['email'],
     'pass' => Hash::make($data['pass']),
     'street_address' => $data['street_address'],
     'district' => $data['district'], 
     'barangay' => $data['barangay'], 
     'city' => $data['city'], 
     'province' => $data['province'], 
     'postal_code' => $data['postal_code'],
        ]);
    }


    // shows artist registration
    public function showArtistRegistration()
    {
        return view('auth.register.artist');
    }
    //
    public function registerArtist(Request $request)
    {
        $data=new user;
        $data->first_name=$request->first_name;
        $data->last_name=$request->last_name;
        $data->contact_number=$request->contact_number;
        $data->email=$request->email;
        $data->pass=Hash::make($request->pass);
        $data->role='1';
        $data->street_address=$request->street_address;
        $data->district=$request->district;
        $data->barangay=$request->barangay;
        $data->city=$request->city;
        $data->province=$request->province;
        $data->postal_code=$request->postal_code;
        $data->save();
        return redirect()->route('/dashboard');
    
        
    }
}
