<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\SocialAuthController;
use Illuminate\Support\Facades\DB;
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

Route::get('/', [SocialAuthController::class,'index']);

Route::get('/dashboard/{id}',[SocialAuthController::class,'dashboard'])->name('dashboard')->middleware('revalidate')->middleware('custom_auth');

Route::get('/next',[SocialAuthController::class,'next'])->name('next')->middleware('custom_auth')->middleware('revalidate');

Route::post('gettopic',[SocialAuthController::class,'gettopic'])->name("gettopic")->middleware('custom_auth')->middleware('revalidate');

Route::get('/topic', function (){
    return view('topic');
})->name('topic')->middleware('custom_auth')->middleware('revalidate');

Route::post('getdata',[SocialAuthController::class,'getdata'])->name("getdata")->middleware('custom_auth')->middleware('revalidate');

Route::get('/logout', function (){
    auth()->logout();
    DB::table('questions')->where('is_enabled', '0')->update([
        'is_enabled' => "1"
    ]);
    return redirect()->route('social_auth');
})->name('logout')->middleware('custom_auth')->middleware('revalidate');

Route::get('/auth/social_auth',[SocialAuthController::class,'index'])->name('social_auth');

Route::get('/auth/google/redirect',[SocialAuthController::class,'redirect'])->name('redirect')->middleware('revalidate');

Route::get('/auth/google/callback',[SocialAuthController::class,'callback'])->name('callback')->middleware('revalidate');;