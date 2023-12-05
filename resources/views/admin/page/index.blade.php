@extends('admin.layouts.header')

@section('content')

<main class="app-content">
    <div class="app-title">
      <div>
        <h1><i class="bi bi-pencil-square"></i>Create And Manage Page</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item active"><a href="{{ route('pages') }}">Manage Pages</a></li>
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
    <section class="Addpageform">
            <div class="tile">
                <div class="tile-body">
                    <div class=" cst-add-new-form row cms-page">

                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                            <form class="Add-page-form w-auto " method="POST" action="{{route('page-store')}}">
                              @csrf
                              
                              <div class="form-group">
                                  <label >Page Title</label>
                                  <input class="form-control  @error('page_name') is-invalid @enderror" name="page_name" value="{{ old('page_name') }}" id="page_name" type="text"  placeholder="Enter Page Title">
                                  
                                  @error('page_name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                  @enderror
                              </div>
                              <div class="form-group">
                                  <label >Page Description</label>
                                  <textarea id="myTextarea" class="@error('content') is-invalid @enderror" name="content" >{{ old('content') }}</textarea>
                                        @error('content')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                         @enderror
                              </div>
                            
                              <div class="form-group text-center cms-btn">
                                <button type="submit" class="" id="demoNotify">Submit</button>
                              </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
    </section>
   
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
                              <th>Page Title</th>
                              <th>Update</th>
                              <th>Action</th>
                           </tr>
                        </thead>
                        <tbody>
                         @if(count($pages) > 0)
                           @php
                                $sno = 1;
                           @endphp
                           @foreach($pages as $page)
                           <tr>
                             @php  $pageid = Crypt::encrypt($page->id);  @endphp
                              <td>{{$sno}}</td>
                              <td>{{$page->page_name}}</td>
                              @php
                                  if(empty($newsletter->updated_at)){
                                    $old_date_timestamp = strtotime($page->created_at);
                                    $new_date = date('d-m-Y', $old_date_timestamp);
                                  }else{
                                    $old_date_timestamp = strtotime($page->updated_at);
                                    $new_date = date('d-m-Y', $old_date_timestamp);
                                  }
                                    
                              @endphp
                              <td>{{$new_date}}</td>

                              <td class="">
                                <a class="btn btn-primary border-none" href="{{ route('page-edit', $pageid )}}">
                                    <i class="fa fa-pencil-square-o mx-0" aria-hidden="true"></i>
                                </a>
                                <a class="btn btn-danger demoSwal" id="demoSwal" data-id="{{$page->id}}" data-uri="delete-page" href="#"><i class="fa fa-trash mx-0"></i></a>
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
   
</script>

@endsection
