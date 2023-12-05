@extends('admin.layouts.header')

@section('content')

<main class="app-content">
      <div class="app-title user-detail_tile">
        <div>
          <h1> User Details</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item">
            <i class="fa fa-home fa-lg"></i>
          </li>
          <li class="breadcrumb-item">
            <a href="{{ route('users')}}">Users</a>
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
                  ?> <img class="profile-pic" src="{{ URL::asset('assets/images/userimg.png') }}" alt="place image btm"> <?php 
                }

                  ?>
                </div>
              </div>
              <div class="user-title col-md-7">
                <h4 class="card-title">Hi ! 
                  <span class="user-name_title">{{$user->name}}</span>
                </h4>
              </div>
              
            </div>
          </div>
            <div class="row" id="information">

         
          <div class="col-md-4 col-sm-6">
           <div class="widget-small primary coloured-icon user-field_height">
            <div class="info">
              <form action=""></form>
                 <div class="col-group user-detail_form">
                    <label for="" class="font-weight-bold">Name :</label>
                    <!-- <input class="form-control" type="text" placeholder="Enter full name" value="Allyson Rollins"> -->
                    <span class="date">{{$user->name}}</span>
                 </div>
               </form>
            </div>
           </div>
          </div>

          <div class="col-md-4 col-sm-6">
           <div class="widget-small primary coloured-icon user-field_height">
            <div class="info">
               <div class="col-group">
                    <label for="" class="font-weight-bold">Phone:</label>
                    <span>{{$user->phone}}</span>
                </div>

            </div>
           </div>
          </div>

          <div class="col-md-4 col-sm-6 ">
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

          <div class="col-md-6 col-sm-6 ">
           <div class="widget-small primary coloured-icon user-field_height">
            <div class="info">
                <div class="col-group">
                    <label for="" class="font-weight-bold">Email:</label>
                    <span>{{$user->email}}</span>
                </div>

            </div>
           </div>
          </div>

          <div class="col-md-6 col-sm-6 ">
           <div class="widget-small primary coloured-icon user-field_height">
            <div class="info">
              <div class="col-group">
                    <label for="" class="font-weight-bold">Address :</label>
                    <span class="date"> {{$user->address}}</span>
              </div>

            </div>
           </div>
          </div>
        

          <div class="col-md-12">
           <div class="tile security-data_table">
              <div class="tile-body">
                <h4 class="booking-head"><i class="fa fa-book"></i>User Booking Details</h4>
                <table class="table table-hover table-bordered" id="sampleTable">

            
                  <thead>
                    <tr class="table-header">
                      <!-- <th>Image</th> -->
                      <th>S.No</th>
                      <th>Provider Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Booking Date</th>
                      <th>Service</th>
                      <th>Status</th>
                      <th>Payment</th>
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
                      <td> @if(!empty($booking->vendor_id))<a href="{{ route('vendor-show', $booking->vendor_id) }}">{{$booking->vendordetails->name}}</a>@endif</td>
                      <td>@if(!empty($booking->vendor_id)){{$booking->vendordetails->email}}@endif</td>
                      <td>@if(!empty($booking->vendor_id)){{$booking->vendordetails->phone}}@endif</td>
                      <td>{{$booking->created_at}}</td>
                      <td>
                        <div class="choose-service">
                          <ul>
                            <li><span class="badge badge-info">{{$booking->servicedetails->service_title}}</span></li>
                          </ul>

                        </div>
                      </td>
                      <td>{{$booking->booking_status}}</td>
                      <td>£{{$booking->service_charges}}</td>
                      
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
      </div>
    </main>

@endsection
@section('scripts') 


@endsection
