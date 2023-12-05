@extends('admin.layouts.header')

@section('content')

  <main class="app-content">
    <div class="app-title user-detail_tile">
      <div>
        <h1>Provider Details</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb">
        <li class="breadcrumb-item">
          <i class="fa fa-home fa-lg"></i>
        </li>
        <li class="breadcrumb-item">
          <a href="#">Provider Details</a>
        </li>
      </ul>
    </div>
    <div class="user-card">
      <div class="card-body p-0 pb-5">
        <div class="user-top">
          <div class="row align-items-center">
            <div class="user-profile col-md-2">
              <div class="profile-img">
                 <?php  
                  $profile_img = $user->profile_image;

                if (!empty($profile_img)) { ?>
                  <img class="profile-pic" src="{{ URL::asset('/public/'.$profile_img) }}" alt="place image top">
                <?php
                }
                else{
                  ?> <img class="profile-pic" src="{{ URL::asset('assets/images/guardimg.png') }}" alt="place image btm"> <?php 
                }

                  ?>

                
              </div>
            </div>

            <div class="user-title col-md-7">
              <h4 class="card-title">Hi ! 
                <span class="provider-name">{{$user->name}}</span>
              </h4>
            </div>

          </div>
        </div>
        <div class="row" id="information">
          <div class="col-md-3 col-sm-6">
            <div class="widget-small primary coloured-icon user-field_height">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Name :</label>
                  <span class="date">{{$user->name}}</span>
                </div>

              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="widget-small primary coloured-icon user-field_height">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Phone:</label>
                  <span>{{$user->phone}}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 ">
            <div class="widget-small primary coloured-icon user-field_height">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Email:</label>
                  <span>{{$user->email}}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 ">
            <div class="widget-small primary coloured-icon user-field_height">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Status :</label>
                    @if($user->status == 'active')
                    <span class="user-status_enable">{{$user->status}}</span>
                    @else
                    <span class="user-status_disable">{{$user->status}}</span>
                    @endif
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-sm-6  ">
            <div class="widget-small primary coloured-icon provider-add ">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Address :</label>
                  <span> {{$user->address}}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 ">
            <div class="widget-small primary coloured-icon">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Description</label>
                  <span class="provider-desc">{{$user->profile_description}}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12 bank-detail">
            <h4><img src="{{ URL::asset('assets/images/bank.png') }}" alt="">Bank Details</h4>
            <div class="row mt-3">
              <div class="col-md-4">
                <div class="widget-small primary coloured-icon ">
                  <div class="info">
                    <div class="col-group">
                      <label for="" class="font-weight-bold">Account Holder Name:</label>
                      <span>{{$user->account_holder_name}}</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="widget-small primary coloured-icon ">
                  <div class="info">
                    <div class="col-group">
                      <label for="" class="font-weight-bold">SWIFT Code:</label>
                      <span>{{$user->swift_code}}</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="widget-small primary coloured-icon ">
                  <div class="info">
                    <div class="col-group">
                      <label for="" class="font-weight-bold">Account Number:</label>
                      <span>{{$user->account_number}}</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
          <div class="col-md-12 mt-2">
            <div class="document-head">
              <h4><img src="{{ URL::asset('assets/images/docs.png') }}" alt="">Documents</h4>
            </div>
          </div>

          <div class="col-md-12">
            <div class="row">
              <div class="col-md-12">
                <div class="widget-small primary coloured-icon">
                  <div class="info">
                    <div class="col-group provider-document bs-component">
                      <h5>Other Documents</h5>
                      <div class="row">
                        <div class="col-md-2 mt-3">
                          
                          <div class="sia-license ">
                            <label for="" class="font-weight-bold">SIA License</label>
                          <?php  
                          
                            if(!empty($user->userdocdetails[0]->name)){
                              $docname = $user->userdocdetails[0]->name;
                              if($docname == 'sia'){
                                $sia_img = $user->userdocdetails[0]->document;
                              }else{
                                $sia_img = '';
                              }
                            }else{
                              $sia_img = '';
                            }
                            
                            

                          if (!empty($sia_img)) { ?>
                            
                            <a href="{{ URL::asset('/public/'.$sia_img) }}" download> <img src="{{ URL::asset('/public/'.$sia_img) }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>

                          <?php
                          }
                          else{
                            ?> 
                           <a href="{{ URL::asset('assets/images/docs.png') }}" download> <img src="{{ URL::asset('assets/images/docs.png') }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                             <?php 
                          }

                            ?>

                          
                            
                          </div>
                        </div>
                        <div class="col-md-5 col-sm-12 mt-3">

                          <div class="passport-license">
                          <label for="" class="font-weight-bold">Passport Or Right To Work </label>
                            <div class="passport-doc">
                              <div class="col-md-6 col-sm-12 passport-img">
                                 <?php  
                          
                                  if(!empty($user->userdocdetails[0]->name)){
                                    $docname = $user->userdocdetails[0]->name;
                                    if($docname == 'passport_front'){
                                      $sia_img = $user->userdocdetails[0]->document;
                                    }else{
                                      $sia_img = '';
                                    }
                                  }else{
                                    $sia_img = '';
                                  }
                                  
                                  

                                if (!empty($sia_img)) { ?>
                                  
                                  <a href="{{ URL::asset('/public/'.$sia_img) }}" download> <img src="{{ URL::asset('/public/'.$sia_img) }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                  <span>Front Picture</span>

                                <?php
                                }
                                else{
                                  ?> 
                                 <a href="{{ URL::asset('assets/images/docs.png') }}" download> <img src="{{ URL::asset('assets/images/docs.png') }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                 <span>Front Picture</span>
                                   <?php 
                                }

                                  ?>

                                <!-- <a href="assets/images/idcard.png" download> <img src="assets/images/idcard.png" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                <span>Front Picture</span> -->
                              </div>
                              <div class="col-md-6 col-sm-12 passport-img">
                                <?php  
                          
                                  if(!empty($user->userdocdetails[0]->name)){
                                    $docname = $user->userdocdetails[0]->name;
                                    if($docname == 'passport_back'){
                                      $sia_img = $user->userdocdetails[0]->document;
                                    }else{
                                      $sia_img = '';
                                    }
                                  }else{
                                    $sia_img = '';
                                  }
                                  
                                  

                                if (!empty($sia_img)) { ?>
                                  
                                  <a href="{{ URL::asset('/public/'.$sia_img) }}" download> <img src="{{ URL::asset('/public/'.$sia_img) }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                  <span>Back Picture</span>

                                <?php
                                }
                                else{
                                  ?> 
                                 <a href="{{ URL::asset('assets/images/docs.png') }}" download> <img src="{{ URL::asset('assets/images/docs.png') }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                 <span>Back Picture</span>
                                   <?php 
                                }

                                  ?>
                                <!-- <a href="assets/images/idcard.png" download> <img src="assets/images/idcard.png" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                <span>Back Picture</span> -->
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5 col-sm-12 mt-3">
                          <div class="driving-license">
                          <label for="" class="font-weight-bold">Driving License</label>
                            <div class="driving-doc">
                              <div class="col-md-6 col-sm-12 passport-img">
                                <?php  
                          
                                  if(!empty($user->userdocdetails[0]->name)){
                                    $docname = $user->userdocdetails[0]->name;
                                    if($docname == 'Driving_front'){
                                      $sia_img = $user->userdocdetails[0]->document;
                                    }else{
                                      $sia_img = '';
                                    }
                                  }else{
                                    $sia_img = '';
                                  }
                                  
                                  

                                if (!empty($sia_img)) { ?>
                                  
                                  <a href="{{ URL::asset('/public/'.$sia_img) }}" download> <img src="{{ URL::asset('/public/'.$sia_img) }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                  <span>Front Picture</span>

                                <?php
                                }
                                else{
                                  ?> 
                                 <a href="{{ URL::asset('assets/images/docs.png') }}" download> <img src="{{ URL::asset('assets/images/docs.png') }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                 <span>Back Picture</span>
                                   <?php 
                                }

                                  ?>
                              </div>
                              <div class="col-md-6 col-sm-12 passport-img">

                                <?php  
                          
                                  if(!empty($user->userdocdetails[0]->name)){
                                    $docname = $user->userdocdetails[0]->name;
                                    if($docname == 'Driving_back'){
                                      $sia_img = $user->userdocdetails[0]->document;
                                    }else{
                                      $sia_img = '';
                                    }
                                  }else{
                                    $sia_img = '';
                                  }
                                  
                                  

                                if (!empty($sia_img)) { ?>
                                  
                                  <a href="{{ URL::asset('/public/'.$sia_img) }}" download> <img src="{{ URL::asset('/public/'.$sia_img) }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                  <span>Back Picture</span>

                                <?php
                                }
                                else{
                                  ?> 
                                 <a href="{{ URL::asset('assets/images/docs.png') }}" download> <img src="{{ URL::asset('assets/images/docs.png') }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                 <span>Back Picture</span>
                                   <?php 
                                }

                                  ?>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-6 bs-component">
            <div class="widget-small primary coloured-icon picture-of_security">
              <div class="info">
                <div class="col-group">
                  <div class="row">
                    <div class="col-md-6">
                    <div class="picture-in_uniform">
                      <?php  
                          
                        if(!empty($user->userdocdetails[0]->name)){
                          $docname = $user->userdocdetails[0]->name;
                          if($docname == 'picture_in_uniform'){
                            $sia_img = $user->userdocdetails[0]->document;
                          }else{
                            $sia_img = '';
                          }
                        }else{
                          $sia_img = '';
                        }
                        
                        

                      if (!empty($sia_img)) { ?>
                        <label for="" class="font-weight-bold">Picture in Uniform</label>
                        <a href="{{ URL::asset('/public/'.$sia_img) }}" download> <img src="{{ URL::asset('/public/'.$sia_img) }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                        <!-- <span>Picture in Uniform</span> -->

                      <?php
                      }
                      else{
                        ?> 
                       <label for="" class="font-weight-bold">Picture in Uniform</label>
                       <a href="{{ URL::asset('assets/images/docs.png') }}" download> <img src="{{ URL::asset('assets/images/docs.png') }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                       <!-- <span>Picture in Uniform</span> -->
                         <?php 
                      }

                    ?>




                     <!--  <label for="" class="font-weight-bold">Picture in Uniform</label>
                      <a href="assets/images/servicephoto3.jfif" download> <img src="assets/images/servicephoto3.jfif" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a> -->
                    </div>
                    </div>
                    <div class="col-md-6">
                    <div class="picture-with_dog">

                      <?php  
                          
                        if(!empty($user->userdocdetails[0]->name)){
                          $docname = $user->userdocdetails[0]->name;
                          if($docname == 'picture_with_dog_van'){
                            $sia_img = $user->userdocdetails[0]->document;
                          }else{
                            $sia_img = '';
                          }
                        }else{
                          $sia_img = '';
                        }
                        
                        

                      if (!empty($sia_img)) { ?>
                        <label for="" class="font-weight-bold">Picture with Dog Or Van</label>
                        <a href="{{ URL::asset('/public/'.$sia_img) }}" download> <img src="{{ URL::asset('/public/'.$sia_img) }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                        <!-- <span>Picture in Uniform</span> -->

                      <?php
                      }
                      else{
                        ?> 
                       <label for="" class="font-weight-bold">Picture with Dog Or Van</label>
                       <a href="{{ URL::asset('assets/images/docs.png') }}" download> <img src="{{ URL::asset('assets/images/docs.png') }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                       <!-- <span>Picture in Uniform</span> -->
                         <?php 
                      }

                    ?>

                    <!--   <label for="" class="font-weight-bold">Picture with Dog Or Van</label>
                      <a href="assets/images/servicephoto2.jfif" download> <img src="assets/images/servicephoto2.jfif" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a> -->
                    </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          @if(count($doc_images) > 0)
          <div class="col-md-6 bs-component">
            <div class="widget-small primary coloured-icon qualication-sec">
              <div class="info">
                <div class="col-group ">
                  <h5>Relevant Qualifications </h5>
                  <div class="row">

                    
                    @foreach($doc_images as $doc_image)
                    <div class="col-md-6">
                     <div class="qualication-doc">
                      <span>{{$doc_image->name }}</span>
                       <a href="{{ URL::asset('/public/'.$doc_image->document) }}" download> <img src="{{ URL::asset('/public/'.$doc_image->document) }}" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                     </div>
                    </div>
                    @endforeach
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
          @endif


          <div class="col-md-12">
            <div class="tile security-data_table">
              <div class="tile-body">
                <h4 class="booking-head"><i class="fa fa-book"></i>Customer Booking Details</h4>
                <table class="table table-hover table-bordered provider-service_table" id="sampleTable">
                  <thead>
                    <tr class="table-header">
                      <th>S.No</th>
                      <th>Customer Name</th>

                      <th>Customer Phone</th>
                      <th>Service Date</th>
                      <th>Service Provided</th>
                    </tr>
                  </thead>
                  <tbody>

                  @if(count($bookings) > 0)
                   @php
                        $sno = 1;
                   @endphp
                  @foreach($bookings as $booking)
                    <tr>
                      <td>{{$sno}}</td>
                      <td><a href="{{ route('user-show', $booking->customerdetails->user_id)}}">{{$booking->customerdetails->name}}</a></td>

                      <td>{{$booking->customerdetails->phone}}</td> 
                      <td>{{$booking->created_at}}</td>
                      <td>
                        <div class="choose-service"> 
                          <ul>
                            <li><span class="badge badge-info">{{$booking->servicedetails->service_title}}</span></li>
                            <!-- <li><span class="badge badge-info">Door Supervisors</span></li>
                            <li><span class="badge badge-info">Security Guards</span></li> -->
                          </ul>

                        </div>
                      </td>

                    </tr>
                  @php
                     $sno++;
                   @endphp
                  @endforeach
                   
                  @endif
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>

  </main>



@endsection
@section('scripts') 


@endsection