@include('layout.header')

  <main class="app-content">
        <div class="app-title">
          <div>
            <h1></i>Withdraw Request Data</h1>
          </div>
        


          <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <!-- <li class="breadcrumb-item">User</li> -->
            <li class="breadcrumb-item active"><a href="#">Withdraw Request</a></li>
          </ul>
        </div>
        <div class="row">
          <div class="col-md-12">
          <div class="tile security-data_table">
              <div class="tile-body">
                
                <table class="table table-hover table-bordered" id="sampleTable">
                  <thead>
                    <tr class="table-header">
                      <!-- <th>Image</th> -->
                      <th>Provider Name</th>
                      <th>User Name</th>
                      <th>Service Date</th>
                      <th>Request Date</th>
                      <th>Service</th>
                      <th>Request Amount</th>
                      <th>Payment Status</th>
                    </tr>
                  </thead>
                  @foreach($withdraw_user as $withdraw_users)
                     <?php //print_r($withdraw_users);//die(); ?>
                    @endforeach

                 @foreach($withdraw_vendor as $withdraw_vendors)
                     <?php //print_r($withdraw_vendors);//die(); ?>
                     @endforeach

                  <tbody>

                    <tr>

                      <td> <a href="{{ route('single_vendor_detail')}}">{{$withdraw_vendors->vendor_name}}</a> </td>

                      <td><a href="{{ route('user.show', $withdraw_users->user_id)}}">{{$withdraw_users->user_name}}</a></td>

                      <td>{{$withdraw_users->service_booking_date}}</td>
                      <td>{{$withdraw_users->request_date}}</td>
                      <td>
                        <div class="choose-service">
                          <ul>
                            <li><span class="badge badge-info">{{$withdraw_vendors->vendor_services}}</span></li>
                          </ul>

                        </div>
                      </td>
                      <td>£{{$withdraw_vendors->booking_total_amount}}</td>
                      <td class="payment-status">
                      <span class="badge badge-success">{{$withdraw_vendors->paid_status}}</span>
                      <!-- <span class="badge badge-danger d-none">Pending</span>
                      <span class="badge badge-warning d-none ">Inprogress</span> -->
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
  </main>

     @section('content')

@include('layout.footer')