@include('layout.header')

  <main class="app-content">
    <div class="app-title">
      <div>
        <h1><i class="bi bi-pencil-square"></i>Create & Manage Page</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <!-- <li class="breadcrumb-item">User</li> -->
        <li class="breadcrumb-item active"><a href="#">CMS page</a></li>
      </ul>
    </div>
    <div class="user-card cms-page">
      <div class="card-body p-0">

        <form method="post" action="{{ route('insert_page') }}">
           @csrf
          <label for="">Page Title</label>
          <input class="form-control  " name="page_name" value="" id="page_name" type="text" placeholder="Enter Page Title">
          <div class="cms-text mt-2"> 
            <textarea name="page_desc" value="" id="page_desc" class="mytextarea" style="width: 100%; height: 300px;"></textarea>
          </div>
            <div class="row cms-image mt-5">
              <div class="col-md-3 mt-2 ">
             
               <input name="file1" type="file" class="dropify" data-height="150" data-allowed-file-extensions="jpg jpeg svg png" />
             
              </div>
              <div class="col-md-3 mt-2">
             
               <input name="file1" type="file" class="dropify" data-height="150" data-allowed-file-extensions="jpg jpeg svg png" />
              
              </div>
              <div class="col-md-3 mt-2">
             
               <input name="file1" type="file" class="dropify" data-height="150" data-allowed-file-extensions="jpg jpeg svg png" />
              
              </div>
              <div class="col-md-3 mt-2">
              
               <input name="file1" type="file" class="dropify" data-height="150" data-allowed-file-extensions="jpg jpeg svg png" />
              
              </div>
            </div>
            <div class="cms-btn">
                <button type="submit" class="bi bi-cursor-fill">Submit</button>
            </div>
        </form>

      </div>
    </div>


  </main>
@section('content')
@include('layout.footer')
  
