<!-- jQuery 3 -->
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<!-- Select2 -->
     <script src="${pageContext.request.contextPath}/resources/bower_components/select2/dist/js/select2.full.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/select2/dist/js/select2.full.min.js"></script>

   <script src="${pageContext.request.contextPath}/resources/dist/js/bootstrap-select.js"></script>
	
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Morris.js charts -->
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/raphael/raphael.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/morris.js/morris.min.js"></script>
	<!-- Sparkline -->
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/moment/min/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script
		src="${pageContext.request.contextPath}/resources/dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script
		src="${pageContext.request.contextPath}/resources/dist/js/demo.js"></script>

	<!-- DataTables -->
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

	<!-- page script -->
	<!-- datatable with buttons -->
        <script>
        $(document).ready(function() {
          $('#example3, #example1, #example2').DataTable( {
              "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
               "autoWidth": false,
               "scrollX": true,
              dom: 'Bfrtip',
              buttons: [
                  'pageLength',
                  'copyHtml5',
                  'excelHtml5',
                  'csvHtml5',
                  'pdfHtml5'
              ],
              search: false
          } );
          
          
           // Setup - add a text input to each footer cell
    $('#tablewithfilter   .filterfield').each( function () {
        var title = $(this).text();
        
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    } );
 
    // DataTable
    var table = $('#tablewithfilter ').DataTable( {
               "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
               "autoWidth": false,
               "scrollX": true,
              dom: 'Bfrtip',
              
              buttons: [
                  'pageLength',
                  
                  'copyHtml5',

                  'excelHtml5',

                  'csvHtml5',

                  'pdfHtml5'

              ],

              search: false

          } );
 
    // Apply the search
    table.columns().every( function () {
        var that = this;
 
        $( 'input', this.header() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );
          
          
        } );
        </script>
        <!-- dataTable with buttons end -->

        <script type="text/javascript">
            // $(function() {
            //     $("#example1").dataTable();
            //     $('#example2').dataTable({
            //         "bPaginate": true,
            //         "bLengthChange": false,
            //         "bFilter": false,
            //         "bSort": true,
            //         "bInfo": true,
            //         "bAutoWidth": false
            //     });
            // });
        </script>
