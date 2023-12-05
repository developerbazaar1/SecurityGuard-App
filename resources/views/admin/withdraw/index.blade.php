@extends('admin.layouts.header')

@section('content')

  <main class="app-content">
        <div class="app-title">
          <div>
            <h1></i>Withdraw Request Data</h1>
          </div>
        


          <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <!-- <li class="breadcrumb-item">User</li> -->
            <li class="breadcrumb-item active"><a href="{{ route('withdraws')}}">Withdraw Request</a></li>
          </ul>
        </div>
        <div class="row">
         @if($message = Session::get('success'))
             <div class="alert alert-success alert-dismissible fade show w-100" role="alert">
               <strong>Success!</strong> {{ $message }}
               <button type="button" class="close" data-dismiss="alert" aria-label="Close" >
                 <span aria-hidden="true">&times;</span>
               </button>
             </div>
         @endif

         @if($message = Session::get('error'))
              <div class="alert alert-danger alert-dismissible fade show w-100" role="alert">
               <strong>Error!</strong> {{ $message }}
               <button type="button" class="close" data-dismiss="alert" aria-label="Close" >
                 <span aria-hidden="true">&times;</span>
               </button>
             </div>
         @endif

          <div class="col-md-12">
          <div class="tile security-data_table">
              <div class="tile-body">
                
                <table class="table table-hover table-bordered" id="sampleTable">
                  <thead>
                    <tr class="table-header">
                      <th>Sr.No</th>
                      <th>Provider Name</th>
                      <th>User Name</th>
                      <th>Service(Start-End) Date</th>
                      <th>Request Date</th>
                      <th>Service</th>
                      <th>Request Amount</th>
                      <th>Payment Status</th>
                    </tr>
                  </thead>
                  <tbody>
                     @if(count($bookings) > 0)
                     @php
                          $sno = 1;
                     @endphp
                     @foreach($bookings as $booking)
                      @php
                        $dateTime = new DateTime($booking->created_at);
                        $dateOnly = $dateTime->format('Y-m-d');
                     @endphp
                    <tr>
                      <td>{{$sno}}</td>
                      <td>@if(!empty($booking->vendor_id)) <a href="{{ route('vendor-show', $booking->vendor_id) }}">{{$booking->vendordetails->name}}</a> @endif</td>

                      <td><a href="{{ route('user-show', $booking->customerdetails->user_id)}}">{{$booking->customerdetails->name}}</a></td>

                      <td>{{$booking->booking_date_time}}</td>
                      <td>{{$dateOnly}}</td>
                      <td>
                        <div class="choose-service">
                          <ul>
                            <li><span class="badge badge-info">{{$booking->servicedetails->service_title}}</span></li>
                          </ul>

                        </div>
                      </td>
                      <td>£{{$booking->booking_total_amount}}</td>
                      <td class="payment-status">
                      
                      @if($booking->paid_status == 'requested' || $booking->paid_status == 'rejected') 
                      <span class="badge badge-success"><a href="{{ route('withdraw-show', $booking->booking_id) }}" class="text-white">{{$booking->paid_status}}</a></span>
                      @else
                      <span class="badge badge-warning">{{$booking->paid_status}}</span>
                      @endif
                      <!-- <span class="badge badge-danger d-none">Pending</span>
                      <span class="badge badge-warning d-none ">Inprogress</span> -->
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
  </main>


@endsection
@section('scripts') 
<script src="{{ URL::asset('assets/js/plugins/pace.min.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset('assets/js/plugins/jquery.dataTables.min.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset('assets/js/plugins/dataTables.bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset('assets/js/plugins/sweetalert.min.js') }}"></script>
<script src="https://cdn.tiny.cloud/1/l0xp8n0asjxeoofeo9h30icll510jblob20r38r92ecoyw00/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
tinymce.init({
    selector: 'textarea#myTextarea',
});
</script>
<script type="text/javascript">
  $('#sampleTable').DataTable();
  
   $("#sampleTable").on("click", ".demoSwal", function(){

    var id = jQuery(this).attr('data-id');
    var uri = jQuery(this).attr('data-uri');
   var APP_URL = {!! json_encode(url('/')) !!}
    swal({
      title: "Are you sure?",
      text: "You will not be able to recover this data!",
      type: "warning",
      showCancelButton: true,
      confirmButtonText: "Yes, delete it!",
      cancelButtonText: "No, cancel plz!",
      closeOnConfirm: false,
      closeOnCancel: false
    }, function(isConfirm) {
      if (isConfirm) {
        swal("Deleted!", "Your data has been deleted.", "success");
        window.location.href=APP_URL+"/"+uri+"/"+id;
      } else {
        swal("Cancelled", "Your data is safe :)", "error");
      }
    });
  });
   
</script>

@endsection