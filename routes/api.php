<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::middleware(['auth:sanctum'])->group(function () {

    Route::post('/auth/logout', 'App\Http\Controllers\Api\AuthController@logout');

    Route::get('/get-user', 'App\Http\Controllers\Api\UserController@get_user');

    Route::post('/support', 'App\Http\Controllers\Api\UserController@support');

    Route::post('/update-profile', 'App\Http\Controllers\Api\UserController@update_profile');

    Route::get('/notification-on-off', 'App\Http\Controllers\Api\UserController@notification_on_off');
    
    Route::get('/app-update', 'App\Http\Controllers\Api\UserController@app_update'); 

    Route::get('/get-bookings', 'App\Http\Controllers\Api\BookingController@get_bookings');

    Route::post('/store-booking', 'App\Http\Controllers\Api\BookingController@store_booking');

    Route::post('/update-booking', 'App\Http\Controllers\Api\BookingController@update_booking');

    Route::get('/get-booking', 'App\Http\Controllers\Api\BookingController@get_booking_details');

});    

Route::post('/auth/login', 'App\Http\Controllers\Api\AuthController@loginUser');

Route::post('/auth/register', 'App\Http\Controllers\Api\AuthController@createUser');
  
Route::post('/auth/sso', 'App\Http\Controllers\Api\AuthController@sso');

// Route::post('/auth/forgot-password', 'App\Http\Controllers\Api\NewPasswordController@forgotPassword');

// Route::post('/auth/reset-password', 'App\Http\Controllers\Api\NewPasswordController@reset');
// use App\Http\Controllers\PasswordController;
Route::post('/auth/forgot-password', 'App\Http\Controllers\Api\PasswordController@forgotPassword');
Route::post('/auth/reset-password', 'App\Http\Controllers\Api\PasswordController@resetPassword');

Route::get('/get-pages', 'App\Http\Controllers\Api\PageController@get_pages');

Route::get('/get-page', 'App\Http\Controllers\Api\PageController@get_page');

Route::get('/get-services', 'App\Http\Controllers\Api\ServiceController@get_services');

Route::get('/get-service', 'App\Http\Controllers\Api\ServiceController@get_service');