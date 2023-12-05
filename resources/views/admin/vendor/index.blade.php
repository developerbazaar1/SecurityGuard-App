@extends('admin.layouts.header')

@section('content')

  <main class="app-content">
        <div class="app-title">
          <div>
            <h1></i>Provider Data</h1>
          </div>
          <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <!-- <li class="breadcrumb-item">User</li> -->
            <li class="breadcrumb-item active"><a href="{{ route('vendors')}}">Provider</a></li>
          </ul>
        </div>
        <div class="row">
          <div class="col-md-12">
          <div class="tile security-data_table">
              <div class="tile-body">
                
                <table class="table table-hover table-bordered" id="sampleTable">
                  <thead>
                    <tr class="table-header">
                      <th>Sr.No</th>
                      <th>Provider Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Registration Date</th>
                      <th>Status</th>
                      <th>Total Earning</th>
                    </tr>
                  </thead>
                  <tbody>
                    @if(count($vendors) > 0)
                       @php
                            $sno = 1;
                       @endphp
                    @foreach($vendors as $vendor) 
                    @php
                        $dateTime = new DateTime($vendor->created_at);
                        $dateOnly = $dateTime->format('Y-m-d');
                    @endphp
                    <tr>
                        <td>{{$sno}}</td>
                        <td><a href="{{ route('vendor-show', $vendor->user_id) }}">{{$vendor->name}}</a></td>
                        <td>{{$vendor->email}}</td>
                        <td>{{$vendor->phone}}</td>
                        <td>{{$dateOnly}}</td>
                        <td class="">
                               <div class="toggle">
                                  <label>
                                     <!-- <input type="checkbox"> -->
                                     <input data-id="{{$vendor->id}}" class="toggle-class" type="checkbox" @php if($vendor->status == 'active'){ echo 'checked'; }  @endphp>
                                     <span class="button-indecator"></span>
                                  </label>
                               </div>
                        </td>
                        <td>£64.95</td>                      
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


   $(function() {

    $('.toggle-class').change(function() {

        var status = $(this).prop('checked') == true ? 1 : 0; 

        var user_id = $(this).data('id'); 

        $.ajax({

            type: "GET",

            dataType: "json",

            url: "{{route('changevendorStatus')}}",

            data: {'status': status, 'user_id': user_id},

            success: function(data){

              console.log(data.success)

            }

        });

    })

  })
   
</script>

@endsection
