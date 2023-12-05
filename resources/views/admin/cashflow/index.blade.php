@extends('admin.layouts.header')

@section('content')

  <main class="app-content">
      <div class="app-title">
          <div>
              <h1></i>Cash Flow</h1>
          </div>
          <ul class="app-breadcrumb breadcrumb side">
              <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
              <!-- <li class="breadcrumb-item">User</li> -->
              <li class="breadcrumb-item active"><a href="{{ route('cash_flow')}}">Cash Flow</a></li>
          </ul>
      </div>
      <div class=" cash-flow">
          <div class="card-body p-0 pb-5">
              <div class="row">
                  <div class="col-md-6 col-lg-6">
                      <div class="widget-small primary coloured-icon">
                          <div class="info dashboard-tab">
                              <h4>Cash Going In</h4>
                              <p><b>£ <span>46050</span></b></p>
                          </div>
                          <img class="cash-icon icon " src="{{ URL::asset('assets/images/pound.png') }}" alt="">
                          <!-- <i class="icon fa fa-users fa-3x"></i> -->
                      </div>
                  </div>
                  <div class="col-md-6 col-lg-6">
                      <div class="widget-small warning coloured-icon">
                          <div class="info dashboard-tab">
                              <h4>Cash Going Out</h4>
                              <p><b>£ <span>3040</span></b></p>
                          </div>
                          <img class="cash-icon icon " src="{{ URL::asset('assets/images/pound-out.png') }}" alt="">
                      </div>
                  </div>
                  <div class="col-md-6">
                      <div class="tile">
                          <h3 class="tile-title">Cash Flow</h3>
                          <div class="cash-chart">
                              <canvas id="myChart"></canvas>
                          </div>
                      </div>
                  </div>
                  <div class="col-md-6">
                      <div class="tile">
                          <h3 class="tile-title">Total Sales</h3>
                          <div class="embed-responsive embed-responsive-16by9">
                          <canvas class="embed-responsive-item" id="barChartService"></canvas>
                          </div>
                      </div>
                  </div>
              </div>

          </div>
      </div>

  </main>

@endsection
@section('scripts') 

  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.2.2/Chart.min.js"></script>
    <script>
        var ctx = document.getElementById("myChart").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: ["Cash IN", "Cash Out"],
                datasets: [{
                    backgroundColor: [
                        "#2ecc71",
                        "#3498db"
                    ],
                    data: [46050, 3040]
                }]
            }
        });
    </script>
    <script type="text/javascript" src="{{ URL::asset('assets/js/chart.js') }}"></script>
  <script type="text/javascript">
    var data = {
      labels: ["January", "February", "March", "April", "May"],
      datasets: [{
          label: "Cash In",
          fillColor: "rgba(220,220,220,0.2)",
          strokeColor: "rgba(220,220,220,1)",
          pointColor: "rgba(220,220,220,1)",
          pointStrokeColor: "#fff",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(220,220,220,1)",
          data: [65, 59, 80, 81, 56]
        },
        {
          label: "Cash Out",
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
        label: "customers"
      },
      {
        value: 25,
        color: "#9ADDFF",
        highlight: "#FC6B88",
        label: "Providers"
      }
    ]
    var ctxb = $("#barChartService").get(0).getContext("2d");
    var barChart = new Chart(ctxb).Bar(data);
  </script>
@endsection
