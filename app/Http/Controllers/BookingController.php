<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Booking;
use Illuminate\Support\Facades\Crypt;

class BookingController extends Controller
{
   
    public function index()
    {
        $bookings = Booking::orderBy('id','DESC')->get();
        return view('admin.booking.index',compact('bookings'));
    }

    public function destroy($id)
    {
        $delete = Booking::findOrFail($id);

		if($delete->delete()){
			return redirect()->back()->with('success','Booking Deleted Successfully');
        }
        return redirect()->back()->with('success','Booking Deleted Successfully');
    
    }


   



}

