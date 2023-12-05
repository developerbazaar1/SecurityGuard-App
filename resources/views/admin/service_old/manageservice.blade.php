@include('layout.header')

  <main class="app-content">
    <div class="app-title">
      <div>
        <h1></i>Services Details</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <!-- <li class="breadcrumb-item">User</li> -->
        <li class="breadcrumb-item active"><a href="#">Manage service</a></li>
      </ul>
    </div>

    <div class="user-card">
      <div class="card-body p-0 pb-5">
        <div class="row mt-5" id="information">

        @foreach($service_detail as $service_details)
        <div class="col-md-12">
            <div class="row">
              <div class="col-md-12">
                <h5 class="service-head dog-service">{{$service_details->service_title}}</h5>

                <p>{{$service_details->description}}</p>
              </div>
              <div class="col-md-12">
                <div class="row mt-5 service-gallery">
                <?php
                    $service_img = $service_details->service_image;
                    if(!empty($service_img)) {
                    ?>
                  <div class="col-md-3">
                    <img src="<?php echo $service_img; ?>" alt="Service Image">
                  </div>
                    <?php }
                    else { ?>
                      <div class="col-md-3">
                        <img src="assets/images/servicephoto1.jfif" alt="">
                      </div>
                    <?php } ?>
                </div>

              </div>
            </div>
            <hr class="break-line">
          </div>
          @endforeach
        
        </div>
      </div>
    </div>

  </main>

     @section('content')

@include('layout.footer')