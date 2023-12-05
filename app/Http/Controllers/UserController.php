<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use DB;




class UserController extends Controller

{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $matchThese = ['user_type' => 'customer'];
        $user = User::where($matchThese)->get();
        return view('admin.user.user', compact('user'));

    }

/*List all the vendors*/
/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function vendors_list()
    {
        
        $matchThese = ['user_type' => 'vendor'];
        $vendor = User::where($matchThese)->get();
        return view('admin.vendor.provider', compact('vendor'));

    }
/*END of List all the vendors*/



/* Function to show sinlge user details*/

    /**
     * Show single employee.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = user::findOrFail($id);
        return view('admin.user.userdetail', compact('user'));
    }


/* END of Function to show sinlge user details*/




/* Function to show dashboard*/
/**
     * Display dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function show_dashboard()
    {
        $user = user::all();
        return view('admin.dashboard.dashboard', compact('user'));

    }
/* END of Function to show dashboard*/


/* Function for Booking Details */
/**
     * Display dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function booking_detail()
    {
        $b_i_customer = DB::table('booking')
               ->join('users', 'users.user_id', '=', 'booking.customer_id') 
               ->select('users.id as user_id','users.name as user_name', 'booking.booking_date as service_booking_date', 'booking.booking_total_amount as booking_total_amount')
               ->get();

        $b_i_vendor = DB::table('booking')
               ->join('users', 'booking.vendor_id', '=', 'users.user_id')
               ->select('users.name as vendor_name','users.vendor_services as vendor_services', 'booking.*')
               ->get();

        return view('admin.booking.bookingdetail', compact('b_i_vendor' , 'b_i_customer'));

    }
/* END of Function for Booking Details */


/* Function to show single vendor */

/**
     * 
     *
     * @return \Illuminate\Http\Response
     */
    public function single_vendor_detail()
    {

        $vendor_info = DB::table('users')
               ->join('booking', 'booking.vendor_id', '=', 'users.user_id')
               ->select('users.*' , 'booking.*')
               ->get();

               $user_info = DB::table('users')
               ->join('booking', 'booking.customer_id', '=', 'users.user_id')
               ->select('users.id as userid','users.name as username','users.phone as userphone','users.vendor_services as user_vendor_services', 'booking.*')
               ->get(); 
        return view('admin.vendor.providerdetail', compact('vendor_info' , 'user_info'));

    }


/* END of Function to show single vendor*/


/* Function for withdraw request */
/**
     * Display withdraw request.
     *
     * @return \Illuminate\Http\Response
     */
    public function withdraw_request()
    {
        $withdraw_user = DB::table('booking')
               ->join('users', 'users.user_id', '=', 'booking.customer_id') 
               ->select('users.id as user_id','users.name as user_name', 'booking.booking_date as service_booking_date', 'booking.booking_total_amount as booking_total_amount', 'booking.created_at as request_date', 'booking.paid_status as paid_status')
               ->get();

        $withdraw_vendor = DB::table('booking')
               ->join('users', 'booking.vendor_id', '=', 'users.user_id')
               ->select('users.id as vendor_id','users.name as vendor_name','users.vendor_services as vendor_services', 'booking.*')
               ->get(); 

        return view('admin.withdraw.withdraw', compact('withdraw_user' , 'withdraw_vendor'));

    }
/* END of Function for withdraw request */




    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       // 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
