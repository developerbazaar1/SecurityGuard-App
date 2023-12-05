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

  <script type="text/javascript" src="{{URL::asset('assets/js/jquery.dataTables.min.js') }}"></script>
  <script type="text/javascript" src="{{URL::asset('assets/js/dataTables.bootstrap.min.js') }}"></script>
  <script type="text/javascript">$('#sampleTable').DataTable();</script>

        <!-- Script for cms page only -->
  <script type="text/javascript" src="{{URL::asset('assets/js/tinymce-editor.js') }}"></script>
  <script type="text/javascript" src="https://jeremyfagis.github.io/dropify/dist/js/dropify.min.js"></script>
  <script>
    jQuery('.dropify').dropify();
  </script>


    <script type="text/javascript">
      $('#demoNotify').click(function(){
        $.notify({
          title: "Update Complete : ",
          message: "Something cool is just updated!",
          icon: 'fa fa-check' 
        },{
          type: "info"
        });
      });
      $('#delete-user').click(function(){
        swal({
          title: "Are you sure?",
          text: "You will not be able to recover this imaginary file!",
          type: "warning",
          showCancelButton: true,
          confirmButtonText: "Yes, delete anyway!",
          cancelButtonText: "No, cancel it!",
          closeOnConfirm: false,
          closeOnCancel: false
        }, function(isConfirm) {
          if (isConfirm) {
            swal("Deleted!", "Your imaginary file has been deleted.", "success");
          } else {
            swal("Cancelled", "Your imaginary file is safe :)", "error");
          }
        });
      });
    </script>

<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/plugins.min.js" referrerpolicy="origin"
></script>;
<script>
tinymce.init({
selector: 'mytextarea'
    });
</script>

 @yield('scripts')

