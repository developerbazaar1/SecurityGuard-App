@extends('admin.layouts.header')

@section('content')

  <main class="app-content">
    <div class="app-title">
      <div>
        <h1></i>Services Details</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <!-- <li class="breadcrumb-item">User</li> -->
        <li class="breadcrumb-item active"><a href="{{ route('services') }}">Manage service</a></li>
      </ul>
    </div>

    <div style="height: 100px;">
      <div class="cms-btn float-right">
          <a href="{{ route('service-add') }}" class="bi bi-cursor-fill">Create Service</a>
      </div>
    </div>
    <div class="user-card" id="service-functionality">
      <div class="card-body p-0 pb-5">
        <div class="row mt-5" id="information">

        @foreach($services as $service)
        <div class="col-md-12">
            <div class="row">
              <div class="col-md-12">
                <div class="text-end" >
                  <a class="btn btn-primary border-none " href="{{ route('service-edit', $service->id )}}">
                      <i class="fa fa-pencil-square-o mx-0" aria-hidden="true"></i>
                  </a>
                  <a class="btn btn-danger demoSwal" id="demoSwal{{$service->id}}" data-id="{{$service->id}}" data-uri="delete-service" href="#"><i class="fa fa-trash  mx-0"></i></a>
                </div>
                <h5 class="service-head dog-service">{{$service->service_title}} </h5>
               
                <p>Service Hourly Charges: {{$service->charge}}</p>
                <p>{{$service->description}}</p>
              </div>
              
                <div class="row mt-5 service-gallery">
               
                  <div class="col-md-3">
                      <div class="image-container">
                          <img src="{{ URL::asset('/public/'.$service->service_image) }}" class="w-100 img-fix" alt="Service Image">
                      </div>
                    
                  </div>

                    
                </div>
                <div class="row mt-5 service-gallery">
                  @if(!empty($service->service_gallery_image1))
                  <div class="col-md-3">
                        <div class="image-container">
                            <img src="{{ URL::asset('/public/'.$service->service_gallery_image1) }}" class="w-100 img-fix" alt="Service Image">
                        </div>
                  </div>
                  @endif

                  @if(!empty($service->service_gallery_image2))
                  <div class="col-md-3">
                        <div class="image-container">
                            <img src="{{ URL::asset('/public/'.$service->service_gallery_image2) }}" class="w-100 img-fix" alt="Service Image">
                        </div>
                  </div>
                  @endif

                  @if(!empty($service->service_gallery_image3))
                  <div class="col-md-3">
                        <div class="image-container">
                            <img src="{{ URL::asset('/public/'.$service->service_gallery_image3) }}" class="w-100 img-fix" alt="Service Image">
                        </div>
                  </div>
                  @endif

                  @if(!empty($service->service_gallery_image4))
                  <div class="col-md-3">
                        <div class="image-container">
                            <img src="{{ URL::asset('/public/'.$service->service_gallery_image4) }}" class="w-100 img-fix" alt="Service Image">
                        </div>
                  </div>
                  @endif
                    
                </div>

           
            </div>
            <hr class="break-line">
          </div>
          @endforeach
        
        </div>
      </div>
    </div>

  </main>

@endsection
@section('scripts') 
<script type="text/javascript">
  
   $("#service-functionality").on("click", ".demoSwal", function(){

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
