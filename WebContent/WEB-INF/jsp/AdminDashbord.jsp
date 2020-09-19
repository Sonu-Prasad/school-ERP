<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <jsp:include page="css.jsp" />
  <!-- fullCalendar -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/fullcalendar/dist/fullcalendar.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
  </head>
<body class="hold-transition skin-blue sidebar-mini">


<header class="main-header">
    <jsp:include page="header.jsp" />
  </header>

 <jsp:include page="menu.jsp" />

<!-- main body part -->

  <div class="content-wrapper">
  	 <!-- Content Header (Page header) -->
    <section class="content-header" style="background-color: #DB7093;">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb" style="margin-bottom: 20px;font-size: 15px;">
        <li><a href="sucess"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
    	 <div class="row">
	        <div class="col-lg-3">
	          <!-- small box -->
		          <div class="small-box bg-aqua">
		          
			            <div class="inner" style="padding: 9.5px 18px 8px 18px;">
			            <% int total = (int)request.getAttribute("totalStudent"); %>
					              <h3><%= total %></h3>

					              <p>Total Student</p>
			            </div>
			            <div class="icon">
			              <span class="glyphicon glyphicon-user fa-1x " style="ont-size:30px;margin-top: 15px;color: black"></span>
			            </div>
		            
		          </div>
	        </div>
      
      
          <div class="col-md-3">
          <a  href="EmpList">
            <div class="small-box bg-aqua">
		              
			            <div class="inner" style="padding: 9.5px 18px 8px 18px;">
			            <% int total1 = (int)request.getAttribute("totalEmp"); %>
					              <h3><%= total1 %></h3>

					              <p>Total Employee</p>
			            </div>
			            <div class="icon">
			              <span class="glyphicon glyphicon-user fa-1x " style="ont-size:30px;margin-top: 15px;color: black"></span>
			            </div>
		               
		          </div>
		      </a>    
          </div>
      </div> 
     
    </section>
   
    
  </div>
    <jsp:include page="js.jsp" />
   
<!-- fullCalendar -->
<script src="${pageContext.request.contextPath}/resources/bower_components/moment/moment.js"></script>
<script src="${pageContext.request.contextPath}/resources/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>

</body>
</html>