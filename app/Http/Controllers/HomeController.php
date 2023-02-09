<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;



class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    //shows buyer dashboard after log in/register
    public function buyerHome()
    {
        return view('home', ["msg" => "I am a buyer"]);
    }
        //shows artist dashboard after log in/register
    public function artistHome()
    {
        return view('artistHome', ["msg" => "I am an artist"]);
    }
}
