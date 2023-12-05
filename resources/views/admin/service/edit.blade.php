@extends('admin.layouts.header')

@section('content')

  <main class="app-content">
    <div class="app-title">
      <div>
        <h1><i class="bi bi-pencil-square"></i>Edit Service</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <!-- <li class="breadcrumb-item">User</li> -->
        <li class="breadcrumb-item active"><a href="{{ route('services') }}">Manage Services</a></li>
      </ul>
    </div>

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

    <div class="user-card cms-page">
      <div class="card-body p-0">

        <form method="post" action="{{ route('service-update') }}" enctype="multipart/form-data">
           @csrf  
          <label for="">Service Title</label>
          <input class="form-control  @error('service_title') is-invalid @enderror" name="service_title" value="@if(!empty($service->service_title)){{old('service_title', $service->service_title)}}@endif" id="service_title" type="text" placeholder="Enter Service Title">
            @error('service_title')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
            @enderror

            <div class="form-group mt-2">
              <label for="">Service Hourly Charges</label>
              <input class="form-control  @error('charge') is-invalid @enderror" name="charge" value="@if(!empty($service->charge)){{old('charge', $service->charge)}}@endif" id="charge" type="number" min="0" placeholder="Enter Service Hourly Charges">
              @error('charge')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
              @enderror
            </div>

          <!-- <div class="cms-text mt-2"> 
            <textarea name="description" value="" id="description" class="mytextarea" style="width: 100%; height: 300px;"></textarea>
          </div> -->

          <div class="form-group mt-2">
            <label class="form-head mb-2" for="exampletext">Service Description </label>
            <textarea id="myTextarea" class="mytextarea @error('description') is-invalid @enderror" name="description" style="width: 100%; height: 300px;">@if(!empty($service->description)){{old('description', $service->description)}}@endif</textarea>
                @error('description')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                 @enderror
          </div>
        <!--   @error('description')
              <p style="color:#dc3545; font-size: 80%;" ><strong>{{ $message }}</strong></p>
          @enderror -->


          <div class="form-group">
              <label class="form-head  mb-2" for="exampletext">
                Service Thumbnails
              </label>
             <input name="document" data-default-file="{{ URL::asset('/public/'.$service->service_image) }}" type="file" class="dropify  @error('document') is-invalid @enderror"  data-height="100" data-allowed-file-extensions="jpeg jpg png" />
             @error('document')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
             @enderror
          </div>
          @error('document')
              <p style="color:#dc3545; font-size: 80%;" ><strong>{{ $message }}</strong></p>
          @enderror

            <div class="row cms-image mt-5">
              <label class="form-head  mb-2" for="exampletext">
                Service Gallery Images
              </label>
              <div class="col-md-3 mt-2 ">
             
                <div class="form-group">
                   <input name="document1" type="file" data-default-file="{{ URL::asset('/public/'.$service->service_gallery_image1) }}" data-height="150" class="dropify  @error('document1') is-invalid @enderror"  data-height="100" data-allowed-file-extensions="jpeg jpg png" />
                   @error('document1')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                   @enderror
                </div>
                @error('document1')
                    <p style="color:#dc3545; font-size: 80%;" ><strong>{{ $message }}</strong></p>
                @enderror
             
              </div>

              <div class="col-md-3 mt-2">
             
                  <div class="form-group">
                     <input name="document2" data-default-file="{{ URL::asset('/public/'.$service->service_gallery_image2) }}" type="file" data-height="150" class="dropify  @error('document2') is-invalid @enderror"  data-height="100" data-allowed-file-extensions="jpeg jpg png" />
                     @error('document2')
                          <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                     @enderror
                  </div>
                  @error('document2')
                      <p style="color:#dc3545; font-size: 80%;" ><strong>{{ $message }}</strong></p>
                  @enderror
              
              </div>
              <div class="col-md-3 mt-2">
             
               <div class="form-group">
                   <input name="document3" data-default-file="{{ URL::asset('/public/'.$service->service_gallery_image3) }}" type="file" data-height="150" class="dropify  @error('document3') is-invalid @enderror"  data-height="100" data-allowed-file-extensions="jpeg jpg png" />
                   @error('document3')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                   @enderror
                </div>
                @error('document3')
                    <p style="color:#dc3545; font-size: 80%;" ><strong>{{ $message }}</strong></p>
                @enderror
              
              </div>
              <div class="col-md-3 mt-2">
              
               <div class="form-group">
                   <input name="document4" data-default-file="{{ URL::asset('/public/'.$service->service_gallery_image4) }}" type="file" data-height="150" class="dropify  @error('document4') is-invalid @enderror"  data-height="100" data-allowed-file-extensions="jpeg jpg png" />
                   @error('document4')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                   @enderror
                </div>
                @error('document4')
                    <p style="color:#dc3545; font-size: 80%;" ><strong>{{ $message }}</strong></p>
                @enderror
              
              </div>
            </div>
            <input type="hidden" name="serviceid" value="{{ $service->id }}">
            <input type="hidden" name="document_old" value="{{$service->service_image}}"> 
            <input type="hidden" name="document1_old" value="{{$service->service_gallery_image1}}">
            <input type="hidden" name="document2_old" value="{{$service->service_gallery_image2}}">
            <input type="hidden" name="document3_old" value="{{$service->service_gallery_image3}}">
            <input type="hidden" name="document4_old" value="{{$service->service_gallery_image4}}">
            <div class="cms-btn">
                <button type="submit" class="bi bi-cursor-fill">Submit</button>
            </div>
        </form>

      </div>
    </div>


  </main>
@endsection
@section('scripts') 
@endsection  
