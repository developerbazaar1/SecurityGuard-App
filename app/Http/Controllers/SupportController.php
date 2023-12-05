<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Support;
use Illuminate\Support\Facades\Crypt;

class SupportController extends Controller
{
   
    public function index()
    {
        $supports = Support::orderBy('id','DESC')->get();
        return view('admin.support.index', compact('supports'));
    }

    public function destroy($id)
    {
        $delete = Support::findOrFail($id);
        
        if($delete->delete()){
            return redirect()->back()->with('success','Support Information Deleted Successfully');
        }
        return redirect()->back()->with('success','Support Information Deleted Successfully');
    
    }



}

