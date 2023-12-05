<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Service;
use App\Models\Category;
use Illuminate\Support\Facades\Crypt;

class ServiceController extends Controller
{
   
    public function index()
    {   
        $services = Service::orderBy('id','DESC')->get();
        return view('admin.service.index',compact('services'));
    }
    
    public function create()
    {
       
        return view('admin.service.create');
    }

    
    public function store(Request $request)
    { 
        $validated = $request->validate([
          "service_title" => "required",
          "description" => "required",
          "charge" => "required",
          "document" => "required",
          
        ]);

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
                $image_path = public_path('upload/service');
                $request->document->move($image_path, $fileName);
                $formInput['document'] = 'upload/service/'.$fileName;
            }
            unset($formInput['document_old']);
        }else{
            $formInput['document'] = $request->input('document_old');
        }

        if($request->file('document1')){
            $image = $request->file('document1');
            if($image->isValid()){
                if(!empty($request->input('document1_old'))){
                    if(file_exists(public_path('/').'/'.$request->input('document1_old'))){
                        unlink(public_path('/').'/'.$request->input('document1_old')); 
                    }
                }
                $extension = $image->getClientOriginalExtension();
                $fileName = rand(100,999999).time().'.'.$extension;
                $image_path = public_path('upload/service');
                $request->document1->move($image_path, $fileName);
                $formInput['document1'] = 'upload/service/'.$fileName;
            }
            unset($formInput['document1_old']);
        }else{
            $formInput['document1'] = $request->input('document1_old');
        }

        if($request->file('document2')){
            $image = $request->file('document2');
            if($image->isValid()){
                if(!empty($request->input('document2_old'))){
                    if(file_exists(public_path('/').'/'.$request->input('document2_old'))){
                        unlink(public_path('/').'/'.$request->input('document2_old')); 
                    }
                }
                $extension = $image->getClientOriginalExtension();
                $fileName = rand(100,999999).time().'.'.$extension;
                $image_path = public_path('upload/service');
                $request->document2->move($image_path, $fileName);
                $formInput['document2'] = 'upload/service/'.$fileName;
            }
            unset($formInput['document2_old']);
        }else{
            $formInput['document2'] = $request->input('document2_old');
        }

        if($request->file('document3')){
            $image = $request->file('document3');
            if($image->isValid()){
                if(!empty($request->input('document3_old'))){
                    if(file_exists(public_path('/').'/'.$request->input('document3_old'))){
                        unlink(public_path('/').'/'.$request->input('document3_old')); 
                    }
                }
                $extension = $image->getClientOriginalExtension();
                $fileName = rand(100,999999).time().'.'.$extension;
                $image_path = public_path('upload/service');
                $request->document3->move($image_path, $fileName);
                $formInput['document3'] = 'upload/service/'.$fileName;
            }
            unset($formInput['document3_old']);
        }else{
            $formInput['document3'] = $request->input('document3_old');
        }

        if($request->file('document4')){
            $image = $request->file('document4');
            if($image->isValid()){
                if(!empty($request->input('document4_old'))){
                    if(file_exists(public_path('/').'/'.$request->input('document4_old'))){
                        unlink(public_path('/').'/'.$request->input('document4_old')); 
                    }
                }
                $extension = $image->getClientOriginalExtension();
                $fileName = rand(100,999999).time().'.'.$extension;
                $image_path = public_path('upload/service');
                $request->document4->move($image_path, $fileName);
                $formInput['document4'] = 'upload/service/'.$fileName;
            }
            unset($formInput['document4_old']);
        }else{
            $formInput['document4'] = $request->input('document4_old');
        }

        $data = array(
              "service_title" => $request->input('service_title'),
              "description" => $request->input('description'),
              "charge" => $request->input('charge'),
              "service_image" => $formInput['document'],
              "service_gallery_image1" => $formInput['document1'],
              "service_gallery_image2" => $formInput['document2'],
              "service_gallery_image3" => $formInput['document3'],
              "service_gallery_image4" => $formInput['document4'],
              
        );
        
        Service::create($data)->id;

      
        return redirect()->back()->with('success',"Service Added Successfully!");
       
    
    
    }

    
    public function show($id)
    {
        //
    }

    
    public function destroy($id)
    {
        $delete = Service::findOrFail($id);
// 		$image_ = $delete->service_image;
// 		$image = "public/".$image_;

//         $image_1 = $delete->service_gallery_image1;
//         $image1 = "public/".$image_1;

//         $image_2 = $delete->service_gallery_image2;
//         $image2 = "public/".$image_2;

//         $image_3 = $delete->service_gallery_image3;
//         $image3 = "public/".$image_3;

//         $image_4 = $delete->service_gallery_image4;
//         $image4 = "public/".$image_4;
		if($delete->delete()){
// 			if(!empty($image)){
// 				if(file_exists($image)){
// 					unlink($image);
// 				}
// 			}
//             if(!empty($image1)){
//                 if(file_exists($image1)){
//                     unlink($image1);
//                 }
//             }
//             if(!empty($image2)){
//                 if(file_exists($image2)){
//                     unlink($image2);
//                 }
//             }
//             if(!empty($image3)){
//                 if(file_exists($image3)){
//                     unlink($image3);
//                 }
//             }
//             if(!empty($image4)){
//                 if(file_exists($image4)){
//                     unlink($image4);
//                 }
//             }
            return redirect('services')->with('success','service Deleted Successfully');
        }
        return redirect('services')->with('success','service Deleted Successfully');
    
    }



     public function edit($id)
    {

        $service = Service::where('id',$id)->first();
        return view('admin.service.edit', compact('service'));
    }

    public function update(Request $request)
    {
        $validated = $request->validate([
          "service_title" => "required",
          "description" => "required",
          "charge" => "required",
          
        ]);

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
                $image_path = public_path('upload/service');
                $request->document->move($image_path, $fileName);
                $formInput['document'] = 'upload/service/'.$fileName;
            }
            unset($formInput['document_old']);
        }else{
            $formInput['document'] = $request->input('document_old');
        }

        if($request->file('document1')){
            $image = $request->file('document1');
            if($image->isValid()){
                if(!empty($request->input('document1_old'))){
                    if(file_exists(public_path('/').'/'.$request->input('document1_old'))){
                        unlink(public_path('/').'/'.$request->input('document1_old')); 
                    }
                }
                $extension = $image->getClientOriginalExtension();
                $fileName = rand(100,999999).time().'.'.$extension;
                $image_path = public_path('upload/service');
                $request->document1->move($image_path, $fileName);
                $formInput['document1'] = 'upload/service/'.$fileName;
            }
            unset($formInput['document1_old']);
        }else{
            $formInput['document1'] = $request->input('document1_old');
        }

        if($request->file('document2')){
            $image = $request->file('document2');
            if($image->isValid()){
                if(!empty($request->input('document2_old'))){
                    if(file_exists(public_path('/').'/'.$request->input('document2_old'))){
                        unlink(public_path('/').'/'.$request->input('document2_old')); 
                    }
                }
                $extension = $image->getClientOriginalExtension();
                $fileName = rand(100,999999).time().'.'.$extension;
                $image_path = public_path('upload/service');
                $request->document2->move($image_path, $fileName);
                $formInput['document2'] = 'upload/service/'.$fileName;
            }
            unset($formInput['document2_old']);
        }else{
            $formInput['document2'] = $request->input('document2_old');
        }

        if($request->file('document3')){
            $image = $request->file('document3');
            if($image->isValid()){
                if(!empty($request->input('document3_old'))){
                    if(file_exists(public_path('/').'/'.$request->input('document3_old'))){
                        unlink(public_path('/').'/'.$request->input('document3_old')); 
                    }
                }
                $extension = $image->getClientOriginalExtension();
                $fileName = rand(100,999999).time().'.'.$extension;
                $image_path = public_path('upload/service');
                $request->document3->move($image_path, $fileName);
                $formInput['document3'] = 'upload/service/'.$fileName;
            }
            unset($formInput['document3_old']);
        }else{
            $formInput['document3'] = $request->input('document3_old');
        }

        if($request->file('document4')){
            $image = $request->file('document4');
            if($image->isValid()){
                if(!empty($request->input('document4_old'))){
                    if(file_exists(public_path('/').'/'.$request->input('document4_old'))){
                        unlink(public_path('/').'/'.$request->input('document4_old')); 
                    }
                }
                $extension = $image->getClientOriginalExtension();
                $fileName = rand(100,999999).time().'.'.$extension;
                $image_path = public_path('upload/service');
                $request->document4->move($image_path, $fileName);
                $formInput['document4'] = 'upload/service/'.$fileName;
            }
            unset($formInput['document4_old']);
        }else{
            $formInput['document4'] = $request->input('document4_old');
        }

        $data = array(
              "service_title" => $request->input('service_title'),
              "description" => $request->input('description'),
              "charge" => $request->input('charge'),
              "service_image" => $formInput['document'],
              "service_gallery_image1" => $formInput['document1'],
              "service_gallery_image2" => $formInput['document2'],
              "service_gallery_image3" => $formInput['document3'],
              "service_gallery_image4" => $formInput['document4'],
              
        );
        
        
       
        $serviceid = $request->input('serviceid');
        Service::where('id',$serviceid)->update($data);
       
        return redirect()->back()->with('success',"Service updated successfully!");
           
    }
    
    public function changeserviceStatus(Request $request)

    {
        $id = $request->service_id;
        $service= Service::find($id);

        if($request->status == '1'){
            $data = array(
                "status"=>'active', 
            );
        }else{
            $data = array(
                "status"=>'inactive', 
            );
        }            
          
        Service::where('id',$id)->update($data);

        return response()->json(['success'=>'Status change successfully.']);

    }

}

