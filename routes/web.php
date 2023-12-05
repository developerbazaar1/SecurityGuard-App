<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

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
    return view('auth/login');
});

// /*Route*/
// Route::resource('user', UserController::class);
// /*END Route*/

// /*Route*/
// Route::get('/dashboard', [App\Http\Controllers\UserController::class, 'show_dashboard'])->name('show_dashboard');
// /*END Route*/

// /*Route*/
// Route::get('/user', [App\Http\Controllers\UserController::class, 'index'])->name('index');
// /*END Route*/

// /*Route*/
// Route::get('/vendor-details', [App\Http\Controllers\UserController::class, 'single_vendor_detail'])->name('single_vendor_detail');
// /*END Route*/


// /*Route*/
// Route::get('/all-vendors', [App\Http\Controllers\UserController::class, 'vendors_list'])->name('vendors_list');
// /*END Route*/

// /*Route*/
// Route::get('/booking-detail', [App\Http\Controllers\UserController::class, 'booking_detail'])->name('booking_detail');
// /*END Route*/

// /*Route*/
// Route::get('/withdraw-request', [App\Http\Controllers\UserController::class, 'withdraw_request'])->name('withdraw_request');
// /*END Route*/

// /*Route*/
// Route::get('/manage-services', [App\Http\Controllers\ServiceController::class, 'show_services'])->name('show_services');
// /*END Route*/

// /*Route*/
// Route::get('/add-cms-page', [App\Http\Controllers\ServiceController::class, 'show_cms_page'])->name('show_cms_page');
// /*END Route*/


// /*Route*/
// Route::post('/create-cms-page', [App\Http\Controllers\ServiceController::class, 'insert_page'])->name('insert_page');
// /*END Route*/


// /*Route*/
// Route::get('/support-system', [App\Http\Controllers\ServiceController::class, 'support_system'])->name('support_system');
// /*END Route*/






// Pragya start

Auth::routes();



Route::middleware(['auth'])->group(function () {

  Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
  
 // page 
    Route::get('/pages', [App\Http\Controllers\PageController::class, 'index'])->name('pages');
    Route::get('/page-add', [App\Http\Controllers\PageController::class, 'create'])->name('page-add');
    Route::post('/page/store', [App\Http\Controllers\PageController::class, 'store'])->name('page-store');
    Route::get('/page/edit/{id}', [App\Http\Controllers\PageController::class, 'edit'])->name('page-edit');
    Route::post('/page/update', [App\Http\Controllers\PageController::class, 'update'])->name('page-update');
    Route::get('/delete-page/{id}', [App\Http\Controllers\PageController::class, 'destroy']); 

    Route::get('/changepageStatus', [App\Http\Controllers\PageController::class, 'changepageStatus']);


 // service 
    Route::get('/services', [App\Http\Controllers\ServiceController::class, 'index'])->name('services');
    Route::get('/service-add', [App\Http\Controllers\ServiceController::class, 'create'])->name('service-add');
    Route::post('/service/store', [App\Http\Controllers\ServiceController::class, 'store'])->name('service-store');
    Route::get('/service/edit/{id}', [App\Http\Controllers\ServiceController::class, 'edit'])->name('service-edit');
    Route::post('/service/update', [App\Http\Controllers\ServiceController::class, 'update'])->name('service-update');
    Route::get('/delete-service/{id}', [App\Http\Controllers\ServiceController::class, 'destroy']); 

    Route::get('/changeserviceStatus', [App\Http\Controllers\ServiceController::class, 'changeserviceStatus']);


  // cash-flow 
    Route::get('/cash-flow', [App\Http\Controllers\CashflowController::class, 'index'])->name('cash_flow');

  // support
    Route::get('/support', [App\Http\Controllers\SupportController::class, 'index'])->name('support');
    Route::get('/delete-support/{id}', [App\Http\Controllers\SupportController::class, 'destroy']); 


  // user
    Route::get('/users', [App\Http\Controllers\UsersController::class, 'index'])->name('users');
    Route::get('/user-show/{id}', [App\Http\Controllers\UsersController::class, 'show'])->name('user-show');
    Route::get('/delete-user/{id}', [App\Http\Controllers\UsersController::class, 'destroy']); 
    Route::get('/changeuserStatus', [App\Http\Controllers\UsersController::class, 'changeUserStatus'])->name('changeuserStatus');


  // vendor
    Route::get('/vendors', [App\Http\Controllers\UsersController::class, 'vendors'])->name('vendors');
    Route::get('/vendor-show/{id}', [App\Http\Controllers\UsersController::class, 'show_vendor'])->name('vendor-show');
    Route::get('/delete-vendor/{id}', [App\Http\Controllers\UsersController::class, 'vendors_destroy']); 
    Route::get('/changevendorStatus', [App\Http\Controllers\UsersController::class, 'changevendorStatus'])->name('changevendorStatus');

  // Booking
    Route::get('/bookings', [App\Http\Controllers\BookingController::class, 'index'])->name('bookings');

  // withdraw
    Route::get('/withdraws', [App\Http\Controllers\WithdrawController::class, 'index'])->name('withdraws');
    Route::get('/withdraw-show/{id}', [App\Http\Controllers\WithdrawController::class, 'show_withdraw'])->name('withdraw-show');
    Route::post('/withdraw/update', [App\Http\Controllers\WithdrawController::class, 'update'])->name('withdraw-update');

});
 


