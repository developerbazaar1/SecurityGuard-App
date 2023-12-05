<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Models\Booking;
use App\Models\User;
use App\Models\Service;
use App\Models\UserDoc;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class BookingController extends Controller
{
    

    public function get_bookings(Request $request)
    {   
        if ($request->has('limit')) {
            $limit = $request->input('limit');
        }else{
            $limit = 5000;
        }
        
        if ($request->has('offset')) {
            $offset = $request->input('offset');
        }else{
            $offset = 0;
        }

        $customer_id = Auth::user()->user_id;

        $bookings = Booking::with('vendordetails')->where('customer_id', $customer_id)
        ->orderBy('id','DESC')
        ->skip($offset)->take($limit)->get();

        
        if($bookings){
            return response()->json([
                'status' => true,
                'message' => 'Get bookings data successfully',
                'bookings' => $bookings,
            ], 200);
        }else{
            return response()->json([
                'status' => false,
                'message' => 'Bookings not exist, please try again',
            ], 401);
        }
       
    }




    public function store_booking(Request $request)
    {
        try {

            $validateUser = Validator::make($request->all(), 
            [
                'service_id' => 'required',
                'booking_date_time' => 'required',
                // 'booking_start_date' => 'required',
                // 'booking_end_date' => 'required',
                // 'booking_start_time' => 'required',
                // 'booking_end_time' => 'required',
                'service_charges' => 'required',
                'booking_total_amount' => 'required',
                'booking_hours' => 'required',
                'location' => 'required',

            ]);

            if($validateUser->fails()){
                return response()->json([
                    'status' => false,
                    'message' => 'validation error',
                    'errors' => $validateUser->errors()
                ], 401);
            }

            $customer_id = Auth::user()->user_id;

            // $booking = Booking::where('customer_id', $customer_id)->where('service_id', $request->service_id)->where('booking_start_date', $request->booking_start_date)->where('booking_end_date', $request->booking_end_date)->where('booking_start_time', $request->booking_start_time)->where('booking_end_time', $request->booking_end_time)->where('service_charges', $request->service_charges)->where('booking_total_amount', $request->booking_total_amount)->where('location', $request->location)->where('zipcode', $request->zipcode)->where('booking_hours', $request->booking_hours)->first();
            $booking = Booking::where('customer_id', $customer_id)->where('service_id', $request->service_id)->where('booking_date_time', $request->booking_date_time)->where('service_charges', $request->service_charges)->where('booking_total_amount', $request->booking_total_amount)->where('location', $request->location)->where('zipcode', $request->zipcode)->where('booking_hours', $request->booking_hours)->first();

            if($booking){
                return response()->json([
                    'status' => false,
                    'message' => 'Booking already added in list',
                ], 200);
            }else{

                $bookingData = Booking::create([
                    'service_id' => $request->service_id,
                    'booking_date_time' => $request->booking_date_time,
                    // 'booking_start_date' => $request->booking_start_date,
                    // 'booking_end_date' => $request->booking_end_date,
                    // 'booking_start_time' => $request->booking_start_time,
                    // 'booking_end_time' => $request->booking_end_time,
                    'service_charges' => $request->service_charges,
                    'booking_total_amount' => $request->booking_total_amount,
                    'booking_id' => uniqid(),
                    'booking_status' => 'request',
                    'location' => $request->location,
                    'zipcode' => $request->zipcode,
                    'booking_hours' => $request->booking_hours,
                    'customer_id' => $customer_id,
                    
                ]);

                return response()->json([
                    'status' => true,
                    'message' => 'Booking added successfully',
                    'bookingData' => $bookingData,
                ], 200);
            }
             
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }


    public function update_booking(Request $request)
    {

            $validateUser = Validator::make($request->all(), 
            [
                'booking_id' => 'required',
            ]);

            if($validateUser->fails()){
                return response()->json([
                    'status' => false,
                    'message' => 'validation error',
                    'errors' => $validateUser->errors()
                ], 401);
            }

            $customer_id = Auth::user()->user_id;

            $data = array();
            if($request->booking_status == 'paid'){

                $paid_status = 'requested';
                $data = array(
                    "booking_status"=>$request->booking_status, 
                    "paid_status"=>$paid_status, 
                    "paid_currency"=>$request->paid_currency, 
                    "paid_transaction_id"=>$request->paid_transaction_id, 
                    "paid_amount"=>$request->paid_amount, 
                );

            }else{
                $data = array(
                    "booking_status"=>$request->booking_status, 
                    "paid_currency"=>$request->paid_currency, 
                    "paid_transaction_id"=>$request->paid_transaction_id,
                    "paid_amount"=>$request->paid_amount, 
                );
            }

            
            Booking::where('booking_id',$request->booking_id)->update($data);
            $bookingData = Booking::where('booking_id',$request->booking_id)->first();
            return response()->json([
                'status' => true,
                'message' => 'Booking updated successfully',
                'bookingData' => $bookingData,
            ], 200);
           
    }

    public function get_booking_details( Request $request)
    {
        if ($request->has('booking_id')) {
            $booking_id = $request->input('booking_id');
        }else{
            return response()->json([
                'status' => false,
                'message' => 'Booking not exist, please try again',
            ], 401);
        }

        $booking = Booking::where('booking_id', $booking_id)->first();
        if(!empty($booking->vendor_id)){
                $vendor_details = User::where('user_id', $booking->vendor_id )->first();
                $gallery_images = UserDoc::where('user_id', $vendor_details->id )->where('type', 'gallery' )->get();
        }else{
                $vendor_details = '';
                $gallery_images = '';
        }
         
        $service_details = Service::where('id', $booking->service_id )->first(); 
         
        // $vendor_details->userdocdetails[0]->name
        if($booking){
            return response()->json([
                'status' => true,
                'message' => 'Get booking successfully',
                'booking' => $booking,
                'vendor_details' => $vendor_details,
                'service_details' => $service_details,
                'gallery_images' => $gallery_images,
            ], 200);
        }else{
            return response()->json([
                'status' => false,
                'message' => 'booking not exist, please try again',
            ], 401);
        }
       
    }

   
}



    