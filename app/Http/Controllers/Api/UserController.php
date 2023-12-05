<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\Support;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    
     public function get_user(Request $request)
    {   
        $user = User::where('id', Auth::user()->id )->first(); 
     
        if($user){
            
            return response()->json([
                'status' => true,
                'message' => 'Get user data successfully',
                'user' => $user,
            ], 200);
        }else{
            return response()->json([
                'status' => false,
                'message' => 'User not exist, please try again',
            ], 400);
        }
       
    }


    public function support(Request $request)
    {
        try {
            
             if(empty($request->msg)){
                return response()->json([
                    'status' => false,
                    'message' => 'Please write something for us!!',
                ], 400);

            }

            

            $user = User::where('user_id', Auth::user()->user_id)->first();
            if($user){
                $supportData = Support::create([
                    'msg' => $request->msg,
                    'user_id' => Auth::user()->user_id,
                    'name' => $user->name,
                    'email' => $user->email,
                ]);

                return response()->json([
                    'status' => true,
                    'message' => 'Your request has been submited!',
                ], 200);
            }else{
                return response()->json([
                    'status' => false,
                    'message' => 'user not exist, please try again',
                ], 401);
            }
            

            
            

            
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }

    public function update_profile(Request $request)
    {

        if($request->file('document')){
             $image = $request->file('document'); 
            if($image->isValid()){
                if(!empty($request->input('document_old'))){
                    if(file_exists(public_path('/').'/'.$request->input('document_old'))){
                        unlink(public_path('/').'/'.$request->input('document_old')); 
                    }
                }
                $extension = $image->getClientOriginalExtension();
                $fileName = rand(100,999999).time().'.'.$extension;
                $image_path = public_path('upload/user');
                $request->document->move($image_path, $fileName);
                $formInput['document'] = 'upload/user/'.$fileName;
            }
            unset($formInput['document_old']);
        }else{
            $formInput['document'] = $request->input('document_old');
        }
        
       
        
        if(empty($request->name)){
            return response()->json([
                'status' => false,
                'message' => 'All fields required!',
            ], 400);

        }
        
       
        
        
        $data = array(
            "name"=>$request->input('name'),
            "phone"=>$request->input('phone'),
            "address"=>$request->input('address'),
            "profile_image"=>$formInput['document'],
        );
        
       
            $userid = auth::user()->id;
            User::where('id',$userid)->update($data);
            $user = User::where('id',$userid)->first();
            return response()->json([
                    'status' => true,
                    'message' => 'Profile updated successfully',
                    'user' => $user,
                ], 200);
            
           
    }

     public function notification_on_off(Request $request)
    {
        
            if ($request->has('notification')) {
                $notification = $request->input('notification');
            }else{
                return response()->json([
                    'status' => false,
                    'message' => 'Notifiation required, please try again',
                ], 401);
            }
            
            $data = array(
                "notification_on_off"=>$notification,
            );
            
           
            $userid = auth::user()->id;
            $ndata = User::where('id',$userid)->update($data);
            
      
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $notification,
            ], 200);
            
       
    }
    
     public function app_update(Request $request)
    {
        
            if ($request->has('app_update')) {
                $app_update = $request->input('app_update');
            }else{
                return response()->json([
                    'status' => false,
                    'message' => 'App update field required, please try again',
                ], 401);
            }
            
         
            $data = array(
                "app_update_on_off"=>$app_update,
            );
            
           
            $userid = auth::user()->id;
            User::where('id',$userid)->update($data);
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $app_update,
            ], 200);
            
            
       
    }
    
    
   
}
