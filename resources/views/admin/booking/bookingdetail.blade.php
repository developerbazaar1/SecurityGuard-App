@include('layout.header')

  <main class="app-content">
        <div class="app-title">
          <div>
            <h1></i>Booking Details</h1>
          </div>
          <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <!-- <li class="breadcrumb-item">User</li> -->
            <li class="breadcrumb-item active"><a href="#">Booking Details</a></li>
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
                      <th>Date</th>
                      <th>User Name</th>
                      <th>Service</th>
                      <th>Service Amount</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                    

                    @foreach($b_i_vendor as $biv)
                     <?php //print_r($biv);//die(); ?>

                    @endforeach

                    @foreach($b_i_customer as $bic)
                    <?php //print_r($bic);//die(); ?>
                    <tr>
                      <!-- <td class="profile"><img src="assets/images/user.png" alt=""></td> -->
                      <td> <a href="{{ route('single_vendor_detail') }}">{{$biv->vendor_name}}</a> </td>
                      <td>{{$bic->service_booking_date}}</td>
                      <td><a href="{{ route('user.show', $bic->user_id)}}">{{$bic->user_name}}</a></td>
                      <td>
                        <div class="choose-service">
                          <ul> 
                            <li><span class="badge badge-info">{{$biv->vendor_services}}</span></li>
                          </ul>

                        </div>
                      </td>
                      <td>£{{$biv->booking_total_amount}}</td>
                    </tr>
                     @endforeach

                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
  </main>

  @section('content')

@include('layout.footer')