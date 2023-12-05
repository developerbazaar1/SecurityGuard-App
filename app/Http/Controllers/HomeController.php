<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Booking;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {   

        $customers = User::where('user_type', 'customer' )->orderBy('id','DESC')->get();
        $vendors = User::where('user_type', 'vendor' )->orderBy('id','DESC')->get();
        $bookings = Booking::orderBy('id','DESC')->get();
        $booking_earning = Booking::where('booking_status', 'completed' )->sum('booking_total_amount');

        $no_of_customers = count($customers);
        $no_of_vendors = count($vendors);
        $no_of_bookings = count($bookings);
       

        return view('home', compact('no_of_customers', 'no_of_vendors', 'no_of_bookings', 'booking_earning'));
    }
}
