@include('layout.header')

  <main class="app-content">
    <div class="app-title">
      <div>
        <h1> Welcome To Raynet</h1>
        <p>Our Mission Is To Protect</p>

      </div>
      <ul class="app-breadcrumb breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
      </ul>
    </div>
    <div class="row">
      <div class="col-md-6 col-lg-6">
        <div class="widget-small primary coloured-icon">
          <div class="info dashboard-tab">
            <?php
            $total_users = \DB::table('users')->count();
            $total_vendors = \DB::table('vendor')->count();
            $total_bookings = \DB::table('booking')->count();

            ?>
            <p><b><?php echo $total_users; ?></b></p>
            <h4>Users</h4>

          </div>
          <i class="icon fa fa-users fa-3x"></i>
        </div>
      </div>
      <div class="col-md-6 col-lg-6">
        <div class="widget-small info coloured-icon">
          <div class="info dashboard-tab">
            <p><b><?php echo $total_vendors; ?></b></p>
            <h4>Vendors</h4>
          </div>
          <i class="icon fa fa-thumbs-o-up fa-3x"></i>
        </div>
      </div>
      <div class="col-md-6 col-lg-6">
        <div class="widget-small warning coloured-icon">
          <div class="info dashboard-tab">
            <p><b>$ 100</b></p>
            <h4>Total Earnings</h4>
          </div>
          <i class="icon fa fa-money fa-3x"></i>
        </div>
      </div>

      <div class="col-md-6 col-lg-6">
        <div class="widget-small booking coloured-icon">
          <div class="info dashboard-tab">
            <p><b><?php echo $total_bookings; ?></b></p>
            <h4>Total Booking</h4>
          </div>
          <i class="icon fa fa-book fa-3x"></i>
        </div>
      </div>

    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="tile">
          <h3 class="tile-title">Total Sales</h3>
          <div class="embed-responsive embed-responsive-16by9">
            <canvas class="embed-responsive-item" id="lineChartDemo"></canvas>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="tile">
          <h3 class="tile-title">Service Overview</h3>
          <div class="embed-responsive embed-responsive-16by9">
            <canvas class="embed-responsive-item" id="pieChartDemo"></canvas>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="tile">
          <h3 class="tile-title">Total Booking</h3>
          <div class="embed-responsive embed-responsive-16by9">
            <canvas class="embed-responsive-item" id="barChartDemo"></canvas>
          </div>
        </div>
      </div>
    </div>
  </main>

@section('content')

<!-- Page specific javascripts-->
  <script type="text/javascript" src="assets/js/chart.js"></script>
  <script type="text/javascript">
    var data = {
      labels: ["January", "February", "March", "April", "May"],
      datasets: [{
          label: "My First dataset",
          fillColor: "rgba(220,220,220,0.2)",
          strokeColor: "rgba(220,220,220,1)",
          pointColor: "rgba(220,220,220,1)",
          pointStrokeColor: "#fff",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(220,220,220,1)",
          data: [65, 59, 80, 81, 56]
        },
        {
          label: "My Second dataset",
          fillColor: "rgba(151,187,205,0.2)",
          strokeColor: "rgba(151,187,205,1)",
          pointColor: "rgba(151,187,205,1)",
          pointStrokeColor: "#fff",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(151,187,205,1)",
          data: [28, 48, 40, 19, 86]
        }
      ]
    };
    var pdata = [{
        value: 50,
        color: "#005272",
        highlight: "#0052729c",
        label: "user"
      },
      {
        value: 25,
        color: "#9ADDFF",
        highlight: "#FC6B88",
        label: "Vendor"
      }
    ]

    var ctxl = $("#lineChartDemo").get(0).getContext("2d");
    var lineChart = new Chart(ctxl).Line(data);

    var ctxp = $("#pieChartDemo").get(0).getContext("2d");
    var pieChart = new Chart(ctxp).Pie(pdata);

    var ctxb = $("#barChartDemo").get(0).getContext("2d");
    var barChart = new Chart(ctxb).Bar(data);
  </script>

@include('layout.footer')



