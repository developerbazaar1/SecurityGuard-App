@extends('admin.layouts.header')

@section('content')

<main class="app-content">
      <div class="app-title user-detail_tile">
        <div>
          <h1> Withdraw Booking details</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item">
            <i class="fa fa-home fa-lg"></i>
          </li>
          <li class="breadcrumb-item">
            <a href="{{ route('withdraws')}}">Withdraws</a>
          </li>
        </ul>
      </div>
      <div class="user-card">
        <div class="card-body p-0 pb-5">
         
        <div class="row mt-5" id="information">
          <div class="col-md-4 col-sm-6">
           <div class="widget-small primary coloured-icon user-field_height">
            <div class="info">
              <form action=""></form>
                 <div class="col-group user-detail_form">
                    <label for="" class="font-weight-bold">Vendor Name :</label>
                    <!-- <input class="form-control" type="text" placeholder="Enter full name" value="Allyson Rollins"> -->
                    <span class="date">{{$booking->vendordetails->name}}</span>
                 </div>
               </form>
            </div>
           </div>
          </div>

          <div class="col-md-4 col-sm-6">
           <div class="widget-small primary coloured-icon user-field_height">
            <div class="info">
               <div class="col-group">
                    <label for="" class="font-weight-bold">Booking Service:</label>
                    <span>{{$booking->servicedetails->service_title}}</span>
                </div>

            </div>
           </div>
          </div>

          <div class="col-md-4 col-sm-6 ">
           <div class="widget-small primary coloured-icon user-field_height">
            <div class="info">
               <div class="col-group">
                    <label for="" class="font-weight-bold">Status :</label>
                    @if($booking->paid_status == 'requested')
                    <span class="user-status_enable">{{$booking->paid_status}}</span>
                    @else
                    <span class="user-status_disable">{{$booking->paid_status}}</span>
                    @endif
                    
               </div>

            </div>
           </div>
          </div>

          <div class="col-md-4 col-sm-6">
           <div class="widget-small primary coloured-icon user-field_height">
            <div class="info">
               <div class="col-group">
                    <label for="" class="font-weight-bold">Account Holder Name:</label>
                    <span>{{$booking->vendordetails->account_holder_name}}</span>
                </div>

            </div>
           </div>
          </div>

          <div class="col-md-4 col-sm-6">
           <div class="widget-small primary coloured-icon user-field_height">
            <div class="info">
               <div class="col-group">
                    <label for="" class="font-weight-bold">Swift Code:</label>
                    <span>{{$booking->vendordetails->swift_code}}</span>
                </div>

            </div>
           </div>
          </div>

          <div class="col-md-4 col-sm-6">
           <div class="widget-small primary coloured-icon user-field_height">
            <div class="info">
               <div class="col-group">
                    <label for="" class="font-weight-bold">Account Number:</label>
                    <span>{{$booking->vendordetails->account_number}}</span>
                </div>

            </div>
           </div>
          </div>
        

         
        </div>
              
            </div>
        </div>
      </div>

      <div class="user-card mt-3">
        <div class="card-body p-0 pb-5">
         <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
              <form class="Add-page-form w-auto " method="POST" action="{{route('withdraw-update')}}">
                @csrf
                <div class="form-group">
                    <label class="form-head mt-3">Message/Reason</label>
                    <textarea id="content" class="@error('content') is-invalid @enderror" name="content" style="width: 100%; height: 100px;">@if(!empty($booking->transaction_msg)){{old('content', $booking->transaction_msg)}}@endif</textarea>
                          @error('content')
                              <span class="invalid-feedback" role="alert">
                                  <strong>{{ $message }}</strong>
                              </span>
                           @enderror
                </div>

                <div class="form-group">
                  <label class="form-head mt-3">Select Status</label>
                  <select name="status" class="form-control @error('status') is-invalid @enderror">
                      <option class="text-dark" value="">Select</option>
                      <option class="text-dark" value="approved" {{ old('status') == 'approved' ? "selected" : "" }}>Approved</option>
                      <option class="text-dark" value="rejected" {{ old('status') == 'rejected' ? "selected" : "" }}>Reject</option>
                  </select>
                   @error('status')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                   @enderror
                </div>
                <input type="hidden" name="bookingid" value="{{$booking->id}}">
                <div class="form-group text-center cms-btn">
                  <button type="submit" class="" id="demoNotify">Submit</button>
                </div>
              </form>
          </div>
        </div>
      </div>
    </main>

@endsection
@section('scripts') 


@endsection
