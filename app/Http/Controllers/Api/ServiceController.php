<?php

namespace App\Http\Controllers\Api;

use App\Models\Service;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


class ServiceController extends Controller
{
    
    public function get_services(Request $request)
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

        $services = Service::orderBy('id','DESC')->skip($offset)->take($limit)->get();
        
        if($services){
            return response()->json([
                'status' => true,
                'message' => 'Get services successfully',
                'services' => $services,
            ], 200);
        }else{
            return response()->json([
                'status' => false,
                'message' => 'services not exist, please try again',
            ], 401);
        }
       
    }

    public function get_service( Request $request)
    {
        if ($request->has('service_id')) {
            $service_id = $request->input('service_id');
        }else{
            return response()->json([
                'status' => false,
                'message' => 'service not exist, please try again',
            ], 401);
        }

        $service = Service::where('id', $service_id)->get();
        
        if($service){
            return response()->json([
                'status' => true,
                'message' => 'Get service successfully',
                'service' => $service,
            ], 200);
        }else{
            return response()->json([
                'status' => false,
                'message' => 'service not exist, please try again',
            ], 401);
        }
       
    }

   
}
