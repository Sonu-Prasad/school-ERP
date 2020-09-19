<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <jsp:include page="css.jsp" />
	
</head>
<body class="hold-transition skin-blue sidebar-mini">


	<header class="main-header"> <jsp:include page="header.jsp" />
	</header>

	<jsp:include page="menu.jsp" />
<div class="content-wrapper">
  	 <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>
    <!-- Main content -->
    <div class="box-body">
    	 <div class="row">
	        <div class="col-md-11 bg-gray" style="border: 1px solid blue;margin-left: 20px;margin-right: 30ox;">
	          <!-- small box -->
	          <form action="#" class="form-horizontal" method="post">
	          
	           <div class='form-group' style="margin-top: 10px;">
                        <label for="sname" class="col-sm-2 control-label">

                            Student ID
                        </label>

                        <div class="col-sm-6">

                            <input type="text" class="form-control" id="sname" name="name" value="" >

                        </div>

                        <span class="col-sm-4 control-label">

                            
                        </span>

                    </div>
	          
		      
			    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <input type="submit" class="btn btn-success" value="Search Student" >
                        </div>
                    </div>
			    
				</form>	      
		   </div>
       </div> 
         <div class="row">
		<div class="box-header">
			<div class='row'>
			  <table >
								<thead>
									<tr>
										
										<th class="col-xs-1">StuId</th>
										<th class="col-xs-1">Name</th>
										<th class="col-lg-1">Father Name</th>
										<th class="col-lg-1">Mother Name</th>
										<th class="col-lg-1">Class</th>
									
									</tr>
								</thead>
								<tbody>
									<c:forEach var="stu" items="${student}">
										<c:set var="count" value="${count + 1}" scope="page" />

										<tr>
											
											<td data-title="# S.id">${stu.sid }</td>
											<td data-title="Student Name">${stu.name }</td>
											<td data-title="Father's Name">${stu.parent.fname }</td>

											<td data-title="Student Phone">${stu.parent.mname }</td>

											<td data-title="student Class">${stu.clas }</td>
											
										</tr>
									</c:forEach>
								</tbody>

							</table>
			</div>
		</div>
		<!-- /.box-header -->
		<div class="row col-md-12"
			style="overflow-x: auto; margin-right: 10px; margin-left: 10px;border:1px solid black;">
			
			<table id="example1"
				class="table table-striped table-bordered table-hover dataTable no-footer"style="width: 1300px;">
				<thead>
					<tr>
						<th class="col-xs-1">S.No</th>
						<th class="col-xs-1">Invoice No</th>
						<th class="col-xs-1">Month</th>
						<th class="col-xs-1">Payment Date</th>
						<th class="col-xs-1">Tution Fee</th>
					    <th class="col-xs-1">Transport Fee</th>
					    <th class="col-xs-1">Exam Fee</th>
					    <th class="col-xs-1">Late Fine</th>
					    <th class="col-xs-1">Last Due</th>
					    <th class="col-xs-1">Status</th>
						<th class="col-xs-1">Action</th>
					</tr>
				</thead>
				     <!--    <tbody>
								    <c:forEach var="feestructure" items="${feeList}">
                                     <c:set var="count" value="${count + 1}" scope="page"/>
                                     
								
									<tr>
										<td data-title="# S.No">${count }</td>
										<td data-title="# feehead name">${feestructure.headName}</td>
										<td data-title="#class">${feestructure.className }</td>
										<td data-title="#month">${feestructure.month }</td>
										<td data-title="# amount">${feestructure.amount}</td>
										
										<td>										
										<a href="#" class="btn btn-info btn-sm"> <span class="glyphicon glyphicon-edit"></span> Edit</a>
                                        <a href="#/${clas.classId}" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove-circle"></span> Remove </a>
                               
										</td>
										
									</tr>	
								</c:forEach>
								</tbody>	-->
			</table>
		</div>
	</div>
         
    </div>

  </div>


  <!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="${pageContext.request.contextPath}/resources/bower_components/raphael/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="${pageContext.request.contextPath}/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="${pageContext.request.contextPath}/resources/bower_components/moment/min/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${pageContext.request.contextPath}/resources/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/resources/dist/js/demo.js"></script>

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

</body>
</html>