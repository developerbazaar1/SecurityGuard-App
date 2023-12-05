@include('layout.header')


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
            <a href="#">User Details</a>
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
                  <img class="profile-pic" src="<?php echo $profile_img; ?>" alt="place image top">
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
                    <span class="user-status_enable">{{$user->availability}}</span>
                    <span class="user-status_disable d-none ">Inactive</span>
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

            <?php

               $user_book_details = DB::table('users')
               ->join('booking', 'booking.vendor_id', '=', 'users.user_id')
               ->select('users.*' , 'booking.*')
               ->get();
            ?>
                  <thead>
                    <tr class="table-header">
                      <!-- <th>Image</th> -->
                      <th>Provider Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Booking Date</th>
                      <th>Service</th>
                      <th>Payment</th>
                    </tr>
                  </thead>
                  <tbody>

                    <tr>
                      <td><a href="{{ route('single_vendor_detail') }}">{{$user_book_details[0]->name}}</a></td>
                      <td>{{$user_book_details[0]->email}}</td>
                      <td>{{$user_book_details[0]->phone}}</td>
                      <td>{{$user_book_details[0]->booking_date}}</td>
                      <td>
                        <div class="choose-service">
                          <ul>
                            <li><span class="badge badge-info">{{$user_book_details[0]->vendor_services}}</span></li>
                          </ul>

                        </div>
                      </td>
                      <td>£{{$user_book_details[0]->service_charges}}</td>
                      
                    </tr>
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

  @section('content')

@include('layout.footer')