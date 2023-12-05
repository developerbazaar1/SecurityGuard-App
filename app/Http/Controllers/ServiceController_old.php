<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Service;
use App\Models\Page;
use DB;

class ServiceController extends Controller {

    /* Function to show services*/
	/**
     * Display dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function show_services()
    {
        $service_detail = Service::all();
        return view('admin.service.manageservice', compact('service_detail'));

    }
	/* END of Function to show services*/

    /**
     * Show the form for creating a new cms page.
     *
     * @return \Illuminate\Http\Response
     */
    public function show_cms_page()
    {
        return view('admin.service.cmspage');
    }
    /* END of Show the form for creating a new cms page.*/


    /**
     * Store a new CMS Page.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function insert_page(Request $request) {
//print_r( $request->all()); die;
        $storeData = array(
            'name' => $request->input('page_name'),
            'description' => $request->input('page_desc'),
        );

       $service = Page::create($storeData);
//print_r( $service); die;
         return redirect()->back()->with('completed', 'saved!');
   }
    /* END of Store a new CMS Page.*/



/* Function for Support System */

/**
     * 
     *
     * @return \Illuminate\Http\Response
     */
    public function support_system()
    {

        $notif_data = DB::table('users')
               ->join('notification', 'notification.user_id', '=', 'users.user_id')
               ->select('users.id as u_id', 'users.*' , 'notification.*')
               ->get();
        return view('admin.support.support', compact('notif_data'));

    }


/* END of Function for Support System*/















	
}
