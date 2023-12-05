@include('layout.header')
  <!------------->
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
                <img class="profile-pic" src="assets/images/guardimg.png" alt="image">
              </div>
            </div>

            <div class="user-title col-md-7">
              <h4 class="card-title">Hi ! 
                <span class="provider-name">{{$vendor_info[0]->name}}</span>
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
                  <span class="date">{{$vendor_info[0]->name}}</span>
                </div>

              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="widget-small primary coloured-icon user-field_height">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Phone:</label>
                  <span>{{$vendor_info[0]->phone}}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 ">
            <div class="widget-small primary coloured-icon user-field_height">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Email:</label>
                  <span>{{$vendor_info[0]->email}}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 ">
            <div class="widget-small primary coloured-icon user-field_height">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Status :</label>
                  <span class="user-status_enable ">{{$vendor_info[0]->availability}}</span>
                  <span class="user-status_disable d-none ">Inactive</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-sm-6  ">
            <div class="widget-small primary coloured-icon provider-add ">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Address :</label>
                  <span> {{$vendor_info[0]->address}}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 ">
            <div class="widget-small primary coloured-icon">
              <div class="info">
                <div class="col-group">
                  <label for="" class="font-weight-bold">Description</label>
                  <span class="provider-desc">{{$vendor_info[0]->profile_description}}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12 bank-detail">
            <h4><img src="assets/images/bank.png" alt="">Bank Details</h4>
            <div class="row mt-3">
              <div class="col-md-4">
                <div class="widget-small primary coloured-icon ">
                  <div class="info">
                    <div class="col-group">
                      <label for="" class="font-weight-bold">Account Holder Name:</label>
                      <span>{{$vendor_info[0]->name}}</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="widget-small primary coloured-icon ">
                  <div class="info">
                    <div class="col-group">
                      <label for="" class="font-weight-bold">SWIFT Code:</label>
                      <span>000</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="widget-small primary coloured-icon ">
                  <div class="info">
                    <div class="col-group">
                      <label for="" class="font-weight-bold">Account Number:</label>
                      <span>0000 0000 0000 000</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
          <div class="col-md-12 mt-2">
            <div class="document-head">
              <h4><img src="assets/images/docs.png" alt="">Documents</h4>
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
                            <a href="assets/images/idcard.png" download> <img src="assets/images/idcard.png" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                          </div>
                        </div>
                        <div class="col-md-5 col-sm-12 mt-3">

                          <div class="passport-license">
                          <label for="" class="font-weight-bold">Passport Or Right To Work </label>
                            <div class="passport-doc">
                              <div class="col-md-6 col-sm-12 passport-img">
                                <a href="assets/images/idcard.png" download> <img src="assets/images/idcard.png" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                <span>Front Picture</span>
                              </div>
                              <div class="col-md-6 col-sm-12 passport-img">
                                <a href="assets/images/idcard.png" download> <img src="assets/images/idcard.png" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                <span>Back Picture</span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5 col-sm-12 mt-3">
                          <div class="driving-license">
                          <label for="" class="font-weight-bold">Driving License</label>
                            <div class="driving-doc">
                              <div class="col-md-6 col-sm-12 passport-img">
                                <a href="assets/images/idcard.png" download> <img src="assets/images/idcard.png" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                <span>Front Picture</span>
                              </div>
                              <div class="col-md-6 col-sm-12 passport-img">

                                <a href="assets/images/idcard.png" download> <img src="assets/images/idcard.png" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                                <span>Back Picture</span>
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
            <div class="widget-small primary coloured-icon qualication-sec">
              <div class="info">
                <div class="col-group ">
                  <h5>Relevant Qualifications </h5>
                  <div class="row">
                    <div class="col-md-6">
                    <div class="qualication-doc">
                    <span>Diploma in Security Training</span>
                    <a href="assets/images/blankimg.png" download> <img src="assets/images/blankimg.png" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                  </div>
                    </div>
                    <div class="col-md-6">
                    <div class="qualication-doc">
                    <span>Physical Security Training</span>
                    <a href="assets/images/blankimg.png" download> <img src="assets/images/blankimg.png" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
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
                      <label for="" class="font-weight-bold">Picture in Uniform</label>
                      <a href="assets/images/servicephoto3.jfif" download> <img src="assets/images/servicephoto3.jfif" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                    </div>
                    </div>
                    <div class="col-md-6">
                    <div class="picture-with_dog">
                      <label for="" class="font-weight-bold">Picture with Dog Or Van</label>
                      <a href="assets/images/servicephoto2.jfif" download> <img src="assets/images/servicephoto2.jfif" alt="" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download"></a>
                    </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>


          <div class="col-md-12">
            <div class="tile security-data_table">
              <div class="tile-body">
                <h4 class="booking-head"><i class="fa fa-book"></i>Provider Booking Details</h4>
                <table class="table table-hover table-bordered provider-service_table" id="sampleTable">
                  <thead>
                    <tr class="table-header">
                      <!-- <th>Image</th> -->
                      <th>User Name</th>

                      <th>User Phone</th>
                      <th>Service Date</th>
                      <th>Service Provided</th>
                    </tr>
                  </thead>
                  <tbody>

                    <tr>
                      <td><a href="{{ route('user.show', $user_info[0]->userid)}}">{{$user_info[0]->username}}</a></td>

                      <td>{{$user_info[0]->userphone}}</td> 
                      <td>{{$user_info[0]->booking_date}}</td>
                      <td>
                        <div class="choose-service"> 
                          <ul>
                            <li><span class="badge badge-info">{{$user_info[0]->user_vendor_services}}</span></li>
                            <!-- <li><span class="badge badge-info">Door Supervisors</span></li>
                            <li><span class="badge badge-info">Security Guards</span></li> -->
                          </ul>

                        </div>
                      </td>

                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>

  </main>



  @section('content')

@include('layout.footer')