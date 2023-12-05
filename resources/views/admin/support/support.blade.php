@include('layout.header')

  <main class="app-content">
    <div class="app-title">
      <div>
        <h1></i>Support System</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <!-- <li class="breadcrumb-item">User</li> -->
        <li class="breadcrumb-item active"><a href="#">Support System</a></li>
      </ul>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="tile security-data_table">
          <div class="tile-body">

            <table class="table table-hover table-bordered" id="sampleTable">
              <thead>
                <tr class="table-header">
                  <th>User Name</th>
                  <th>Notification Time</th>
                  <th>Notification Date</th>
                  <th>View Notification</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                 @foreach($notif_data as $notif_datas)
                 <?php //print_r($notif_datas); ?>
                <tr>
                    <td><a href="{{ route('user.show', $notif_datas->u_id)}}">{{$notif_datas->name}}</a></td>
                    <td>{{$notif_datas->notification_time}}</td>
                    <td>{{$notif_datas->created_at}}</td>
                    <td class="view-notification">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                      <i class="fa fa-eye"></i> View
                    </button>
                    </td>
                    <td class="notification-status">
                      <span class="user-status_enable">{{$notif_datas->status}}</span>
                      <span class="user-status_disable d-none ">Unread</span>
                    </td>
                    <td>
                    <a class="btn btn-info" id="delete-user" href="#"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

    <!-- Notifiaction Modal -->

    <div class="modal fade " id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">Notification</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-md-2">
                <img class="notif-img" src="assets/images/user.png" alt="">
              </div>
              <div class="col-md-10 mt-2">
                <p>{{$notif_datas->notification}}</p>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Read</button>
          </div>
        </div>
      </div>
    </div>

    <!---------->
  </main>

  @section('content')
@include('layout.footer')