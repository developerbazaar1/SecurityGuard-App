<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Booking;
use Illuminate\Support\Facades\Crypt;

class WithdrawController extends Controller
{
   
    public function index()
    {
        $bookings = Booking::where('paid_status', '!=' , '')->orderBy('id','DESC')->get();
        return view('admin.withdraw.index',compact('bookings'));    
    }

    public function destroy($id)
    {
        $delete = Booking::findOrFail($id);

		if($delete->delete()){
			return redirect()->back()->with('success','Withdraw details Deleted Successfully');
        }
        return redirect()->back()->with('success','Withdraw details Deleted Successfully');
    
    }

    public function show_withdraw($id)
    {
        $booking = Booking::where('booking_id', $id)->first();
        return view('admin.withdraw.show', compact('booking'));
    }

    public function update(Request $request)
    { 
        $validated = $request->validate([
            'status' => 'required',
            'content' => 'required',
        ]);
        
        $id = $request->bookingid;
       
        $data = array(
            "paid_status"=>$request->status, 
            "transaction_msg"=>$request->content, 
        );
                    
        Booking::where('id',$id)->update($data);

        return redirect()->route('withdraws')->with('success', 'Booking withdraw request Updated Successfully');
    }



   



}

