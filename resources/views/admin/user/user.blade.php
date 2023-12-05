@include('layout.header')


  <main class="app-content">
    <div class="app-title">
      <div>
        <h1><i>User's Data</i></h1>

      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item active"><a href="#">User's</a></li>
      </ul>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="tile security-data_table">
          <div class="tile-body">
            <table class="table table-hover table-bordered" id="sampleTable">
              <thead>
                <tr class="table-header">
                  <th>Name</th>
                  <th>Email</th>
                  <th>Phone No.</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
             
                 @foreach($user as $users)                 

                <tr>
                  <td> <a href="{{ route('user.show', $users->id)}}">{{$users->name}}</a> </td>
                  <td>{{$users->email}}</td>
                  <td>{{$users->phone}}</td>
                  <td>
                    <div class="toggle">
                      <label>
                        <input type="checkbox"><span class="button-indecator"></span>
                      </label>
                    </div>
                  </td>
                  <td>
                    <a class="btn btn-info" id="delete-user" href="#"><i class="fa fa-trash"></i></a>
                  </td>
                </tr>

                @endforeach

                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </main>
  @section('content')

@include('layout.footer')