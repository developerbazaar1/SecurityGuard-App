@extends('admin.layouts.header')

@section('content')

<main class="app-content">
    <div class="app-title">
      <div>
        <h1></i>Support System</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <!-- <li class="breadcrumb-item">User</li> -->
        <li class="breadcrumb-item active"><a href="{{ route('support')}}">Support System</a></li>
      </ul>
    </div>

     @if($message = Session::get('success_add'))
         <div class="alert alert-success alert-dismissible fade show w-100" role="alert">
           <strong>Success!</strong> {{ $message }}
           <button type="button" class="close" data-dismiss="alert" aria-label="Close" >
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
     @endif
 
    <section class="add_page_log">
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

         <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
            <div class="tile security-data_table">
               <div class="tile-body">
                  <div class="table-responsive">                               
                    <table class="table table-hover table-bordered" id="sampleTable">
                        <thead>
                           <tr class="table-header">
                              <th>Sr.No</th>
                              <th>User Name</th>
			                  <th>Time</th>
			                  <th>Date</th>
			                  <th>View Message</th>
			                  <th>Action</th>
                            
                           </tr>
                        </thead>
                        <tbody>
                         @if(count($supports) > 0)
                           @php
                                $sno = 1;
                           @endphp
                           @foreach($supports as $support)
                           <tr>
                             
                              <td>{{$sno}}</td>
                              <td>{{$support->name}}</td>
                              @php
                                 
                                $old_date_timestamp = strtotime($support->created_at);
                                $new_date = date('d-m-Y', $old_date_timestamp);
                                $new_time = date('h:i:s', $old_date_timestamp);
                                 
                                    
                              @endphp
                              <td>{{$new_time}}</td>
                              <td>{{$new_date}}</td>
                              <td class="view-notification">
			                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop{{$support->id}}">
			                      <i class="fa fa-eye"></i> View
			                    </button>
			                   </td>

			                   <td class="">
                               
                                <a class="btn btn-danger demoSwal" id="demoSwal" data-id="{{$support->id}}" data-uri="delete-support" href="#"><i class="fa fa-trash mx-0"></i></a>
                              </td>
                              
                           </tr>

                           <div class="modal fade " id="staticBackdrop{{$support->id}}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
						      <div class="modal-dialog modal-dialog modal-dialog-centered">
						        <div class="modal-content">
						          <div class="modal-header">
						            <h5 class="modal-title" id="staticBackdropLabel">Notification</h5>
						            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						          </div>
						          <div class="modal-body">
						            <div class="row">
						              <div class="col-md-2">
						                <img class="notif-img" src="assets/images/user.png" alt="">
						              </div>
						              <div class="col-md-10 mt-2">
						                <p>{{$support->msg}}</p>
						              </div>
						            </div>
						          </div>
						          <div class="modal-footer">
						            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Read</button>
						          </div>
						        </div>
						      </div>
						    </div>
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

        
   </section>
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
