<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Booking;
use App\Models\UserDoc;
use Illuminate\Support\Facades\Crypt;

class UsersController extends Controller
{
   
    public function index()
    {
        $customers = User::where('user_type','customer')->orderBy('id','DESC')->get();
        return view('admin.user.index', compact('customers'));
    }

    public function show($id)
    {
        $user = user::where('user_id', $id)->first();
        $bookings = Booking::where('customer_id', $user->user_id)->get();
        return view('admin.user.show', compact('user', 'bookings'));
    }

    public function destroy($id)
    {
        $delete = User::findOrFail($id);
        $image = $delete->profile_image;
        if($delete->delete()){
            if(!empty($image)){
                if(file_exists($image)){
                    unlink($image);
                }
            }
        }
        return redirect()->back()->with('success','User Deleted Successfully');
    
    }

    public function changeUserStatus(Request $request)

    {
        $id = $request->user_id;
        $user = User::find($id);

        if($request->status == '1'){
            $data = array(
                "status"=>'active', 
            );
        }else{
            $data = array(
                "status"=>'inactive', 
            );
        }            
          
        User::where('id',$id)->update($data);

        return response()->json(['success'=>'Status change successfully.']);

    }


    // vendor details
    public function show_vendor($id)
    {
        $user = user::where('user_id', $id)->first();
        $bookings = Booking::where('vendor_id', $user->user_id)->get();
        $doc_images = UserDoc::where('user_id', $user->id)->where('type', 'document')->get();
        return view('admin.vendor.show', compact('user', 'bookings', 'doc_images'));
    }

     public function vendors()
    {
        $vendors = User::where('user_type','vendor')->orderBy('id','DESC')->get();
        return view('admin.vendor.index', compact('vendors'));
    }

    public function vendor_destroy($id)
    {
        $delete = User::findOrFail($id);
        $image = $delete->profile_image;
        if($delete->delete()){
            if(!empty($image)){
                if(file_exists($image)){
                    unlink($image);
                }
            }
        }
        return redirect()->back()->with('success','Vendor Deleted Successfully');
    
    }

    public function changevendorStatus(Request $request)

    {
        $id = $request->user_id;
        $user = User::find($id);

        if($request->status == '1'){
            $data = array(
                "status"=>'active', 
            );
        }else{
            $data = array(
                "status"=>'inactive', 
            );
        }            
          
        User::where('id',$id)->update($data);

        return response()->json(['success'=>'Status change successfully.']);

    }



}

