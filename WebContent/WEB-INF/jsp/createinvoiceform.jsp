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
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<script
			src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
   <jsp:include page="css.jsp" />
    <script>
            $(document).ready(function() {
            	$("#transportID").on("change",function(){
             	   var transportid=this.value;
             	    alert(this.value)
             	 $.ajax({
             	     type: "POST",
             	     url : "${pageContext.request.contextPath}/check",
             	     data :transportid,
             	    contentType: "application/json",
             	      dataType:"json" , 
             	      
             	      success: function(respContent) {
                          alert(transportid);
                          $("#vehicleno").attr('disabled', false);
                          var options ='<option value=' + 0 + '>' + "Select Vechile Number" + '</option>';
                          $.each(respContent,function(key, value)
                                  {
                        	  options +=('<option value=' + key + '>' + value + '</option>');
                        	  $("#vehicleno").html(options);
                                  });

             	       },
             	});
               
               });
                 
            });
            
           
      </script>		    
</head>
<body class="hold-transition skin-blue sidebar-mini">

<header class="main-header">
    <jsp:include page="header.jsp" />
  </header>

 <jsp:include page="menu.jsp" />

	<!-- main body part -->

	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			Dashboard <small>Control panel</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
		</section>
		<!-- Main content -->
		<div class="box-body">
			<div class="row">
				<div class="col-sm-8">
					<form action="inv" class="form-horizontal" role="form" method="post">

						

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-8">
								<input type="submit" class="btn btn-success" value="Add Member">
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>

		<!-- jQuery 3 -->
		
		<jsp:include page="js.jsp" />
	
</body>
</html>