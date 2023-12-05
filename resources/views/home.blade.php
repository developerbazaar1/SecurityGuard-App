@extends('admin.layouts.header')

@section('content')

  <main class="app-content">
    <div class="app-title">
      <div>
        <h1> Welcome To Raynet</h1>
        <p>Our Mission Is To Protect</p>

      </div>
      <ul class="app-breadcrumb breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
      </ul>
    </div>
    <div class="row">
      <div class="col-md-6 col-lg-6">
        <div class="widget-small primary coloured-icon">
          <div class="info dashboard-tab">
            
            <p><b>{{ $no_of_customers }}</b></p>
            <h4>Customers</h4>

          </div>
          <i class="icon fa fa-users fa-3x"></i>
        </div>
      </div>
      <div class="col-md-6 col-lg-6">
        <div class="widget-small info coloured-icon">
          <div class="info dashboard-tab">
            <p><b>{{ $no_of_vendors }}</b></p>
            <h4>Vendors</h4>
          </div>
          <i class="icon fa fa-users fa-3x"></i>
        </div>
      </div>
      <div class="col-md-6 col-lg-6">
        <div class="widget-small warning coloured-icon">
          <div class="info dashboard-tab">
            <p><b>£ {{ $booking_earning}}</b></p>
            <h4>Total Earnings</h4>
          </div>
          <i class="icon fa fa-money fa-3x"></i>
        </div>
      </div>

      <div class="col-md-6 col-lg-6">
        <div class="widget-small booking coloured-icon">
          <div class="info dashboard-tab">
            <p><b>{{ $no_of_bookings}}</b></p>
            <h4>Total Booking</h4>
          </div>
          <i class="icon fa fa-book fa-3x"></i>
        </div>
      </div>

    </div>
   
  </main>
@endsection
@section('scripts') 

@endsection  
