<!DOCTYPE html>
<html lang="en">

<head>
<meta name="description" content="#">
  <!-- Twitter meta-->
  <meta property="#" content="summary_large_image">
  <meta property="#" content="#">
  <meta property="#" content="#">
  <!-- Open Graph Meta-->
  <meta property="#" content="website">
  <meta property="#" content="Security Guard">
  <meta property="#" content="Security Guard">
  <meta property="#" content="">
  <title>Security Guard Admin Panel</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


<!-- <link rel="stylesheet" type="text/css" href="https://react.dbtechserver.online/style.css"> -->
<!-- <link href="{{URL::asset('assets/css/style.css') }}" rel="stylesheet"> -->
<link rel="stylesheet" href="{{URL::asset('assets/css/style.css') }}">







  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="https://jeremyfagis.github.io/dropify/dist/css/dropify.min.css">
</head>

<body class="app sidebar-mini rtl">
  
<header class="app-header">
      <a class="app-header__logo" href="{{ route('home')}}">
        <h1>Raynet</h1>
      </a>
      <a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <ul class="app-nav">
        <li class="dropdown">
          <a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i>
          </a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li>
              <a class="dropdown-item" href="{{ route('logout') }}"
                 onclick="event.preventDefault();
                               document.getElementById('logout-form').submit();">
                 
              <i class="fa fa-sign-out fa-lg"></i>Logout</a>

              <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                  @csrf
              </form>
            </li>
          </ul>
        </li>
      </ul>
    </header>
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="{{ URL::asset('assets/images/user.png') }}" alt="User Image">
        <div>
          <p class="app-sidebar__user-name">{{ Auth::user()->name }}</p>
          <p class="app-sidebar__user-designation">@php echo ucfirst(Auth::user()->user_type); @endphp</p>
        </div>
      </div>
      <ul class="app-menu">

        <li><a class="app-menu__item " href="{{ route('home')}}"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="{{ route('cash_flow')}}">  <i class="app-menu__icon fa fa-money"></i><span class="app-menu__label">Cash Flow</span></a>
        </li>
        <li><a class="app-menu__item" href="{{ route('users')}}"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Customers</span></a></li>

        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Provider</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="{{ route('vendors_list')}}"><i class="icon fa fa-book"></i>Provider Info</a></li>
            <li><a class="treeview-item" href="{{ route('booking_detail')}}"><i class="icon fa fa-book"></i>Booking Details</a></li>
            <li><a class="treeview-item" href="{{ route('withdraw_request')}}" rel="noopener"><i class="icon fa fa-money"></i>Withdraw Request</a></li>
          </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-gear"></i><span class="app-menu__label">Master Setting</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="{{ route('services') }}"><i class="icon fa fa-gear"></i>Manage Service</a></li>
            <li><a class="treeview-item" href="{{ route('pages') }}"><i class="icon fa fa-file"></i>CMS Pages</a></li>
           
          </ul>
        </li>
        <li><a class="app-menu__item" href="{{ route('support') }}"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Support System</span></a>
        </li>
      </ul>
    </aside>

@yield('content')

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



<script src="{{URL::asset('assets/js/jquery-3.2.1.min.js') }}"></script>
<script src="{{URL::asset('assets/js/popper.min.js') }}"></script>
<script src="{{URL::asset('assets/js/bootstrap.min.js') }}"></script>
<script src="{{URL::asset('assets/js/main.js') }}"></script>
<script src="{{URL::asset('assets/js/sweetalert.min.js') }}"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="{{URL::asset('assets/js/pace.min.js') }}"></script>
<!-- Page specific javascripts-->
<script type="text/javascript" src="{{URL::asset('assets/js/chart.js') }}"></script>












