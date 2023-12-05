@include('layout.header')

  <main class="app-content">
        <div class="app-title">
          <div>
            <h1></i>Provider Data</h1>
          </div>
          <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <!-- <li class="breadcrumb-item">User</li> -->
            <li class="breadcrumb-item active"><a href="#">Provider</a></li>
          </ul>
        </div>
        <div class="row">
          <div class="col-md-12">
          <div class="tile security-data_table">
              <div class="tile-body">
                
                <table class="table table-hover table-bordered" id="sampleTable">
                  <thead>
                    <tr class="table-header">
                      <!-- <th>Image</th> -->
                      <th>Provider Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Registration Date</th>
                      <th>Total Earning</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($vendor as $vendors) 

                    <tr>
                        <td><a href="{{ route('single_vendor_detail')}}">{{$vendors->name}}</a></td>
                        <td>{{$vendors->email}}</td>
                        <td>{{$vendors->phone}}</td>
                        <td>{{$vendors->created_at}}</td>
                        <td>£64.95</td>                      
                    </tr>

                    @endforeach

                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
  </main>

  @section('content')

@include('layout.footer')