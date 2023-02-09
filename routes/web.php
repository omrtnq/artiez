<?php

use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

//Buyer Route
Route::middleware(['auth', 'user-role:buyer'])->group(function()
{
    Route::get("/", [HomeController::class, 'buyerHome'])->name('home.buyer');
});

//Artist Route
Route::middleware(['auth', 'user-role:artist'])->group(function()
{
    Route::get("/dashboard", [HomeController::class, 'artistHome'])->name('home.artist');
});

//route to show registration for artist
Route::get("/register/artist", [RegisterController::class, 'showArtistRegistration'])->name('register.artist');

//route for... basta di mo sya makikita pag di ka user/artist
Route::post("/register/artist", [RegisterController::class, 'registerArtist'])->name('register.artist');


