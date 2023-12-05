<!-- Page specific javascripts-->
    <!-- Data table plugin-->
    
    


    <script type="text/javascript" src="{{URL::asset('assets/js/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript" src="{{URL::asset('assets/js/dataTables.bootstrap.min.js') }}"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>

        <!-- Script for cms page only -->
  <script type="text/javascript" src="{{URL::asset('assets/js/tinymce-editor.js') }}"></script>
  <script type="text/javascript" src="https://jeremyfagis.github.io/dropify/dist/js/dropify.min.js"></script>
  <script>
    jQuery('.dropify').dropify();
  </script>
<!-- End of Script for cms page only -->


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

<!-- For tinemce editor-->
<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/plugins.min.js" referrerpolicy="origin"
></script>;
<script>
tinymce.init({
selector: 'mytextarea'
    });
</script>
<!-- END of for tinemce editor-->

</body>
</html>

