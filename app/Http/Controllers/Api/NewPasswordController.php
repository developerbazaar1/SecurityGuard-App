<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Validator;

class NewPasswordController extends Controller
{

     public function forgotPassword(Request $request)
    {
       $validateUser = Validator::make($request->all(), 
        [
            'email' => 'required|email',

        ]);

        if($validateUser->fails()){
            return response()->json([
                'status' => false,
                'message' => 'validation error',
                'errors' => $validateUser->errors()
            ], 401);
        }

        $status = Password::sendResetLink(
            $request->only('email')
        );

        if($status === Password::RESET_LINK_SENT){
            return response()->json([
                'status' => true,
                'message' => 'Reset link sent',
            ], 200);
        }else{
            return response()->json([
                'status' => false,
                'message' => 'Link not sent, please try again',
            ], 401);
        }
        
    }


     
    public function reset(Request $request)
    {
        $request->validate([
            'token' => 'required',
            'email' => 'required|email',
            'password' => 'required|confirmed',
        ]);

        $status = Password::reset(
            $request->only('email', 'password', 'password_confirmation', 'token'),
            function ($user, $password) {
                $user->forceFill(['password' => bcrypt($password)])->save();
            }
        );

        if($status === Password::PASSWORD_RESET){
            return response()->json([
                'status' => true,
                'message' => 'Password reset',
            ], 200);
        }else{
            return response()->json([
                'status' => false,
                'message' => 'Password not reset, please try again',
            ], 401);
        }

       
    }


}