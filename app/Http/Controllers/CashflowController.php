<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;

class CashflowController extends Controller
{
   
    public function index()
    {
        return view('admin.cashflow.index');
    }



}

