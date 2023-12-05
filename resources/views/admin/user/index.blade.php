@extends('admin.layouts.header')

@section('content')

<main class="app-content">
    <div class="app-title">
      <div>
        <h1><i>User's Data</i></h1>

      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item active"><a href="{{ route('users')}}">User's</a></li>
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
                              <th>Name</th>
                              <th>Email</th>
                              <th>Phone No.</th>
                              <th>Status</th>
                              <th>Action</th>
                           </tr>
                        </thead>
                        <tbody>
                         @if(count($customers) > 0)
                           @php
                                $sno = 1;
                           @endphp
                           @foreach($customers as $customer)
                           <tr>
                             
                              <td>{{$sno}}</td>
                              <td><a href="{{ route('user-show', $customer->user_id)}}">{{$customer->name}}</a> </td>
                              <td>{{$customer->email}}</td>
                              <td>{{$customer->phone}}</td>
                              
                              
                              <td class="">
                                 <div class="toggle">
                                    <label>
                                       <!-- <input type="checkbox"> -->
                                       <input data-id="{{$customer->id}}" class="toggle-class" type="checkbox" @php if($customer->status == 'active'){ echo 'checked'; }  @endphp>
                                       <span class="button-indecator"></span>
                                    </label>
                                 </div>
                              </td>

			                        <td class="">
                               
                                <a class="btn btn-danger demoSwal" id="demoSwal" data-id="{{$customer->id}}" data-uri="delete-user" href="#"><i class="fa fa-trash mx-0"></i></a>
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


   $(function() {

    $('.toggle-class').change(function() {

        var status = $(this).prop('checked') == true ? 1 : 0; 

        var user_id = $(this).data('id'); 

        $.ajax({

            type: "GET",

            dataType: "json",

            url: "{{route('changeuserStatus')}}",

            data: {'status': status, 'user_id': user_id},

            success: function(data){

              console.log(data.success)

            }

        });

    })

  })
   
</script>

@endsection
