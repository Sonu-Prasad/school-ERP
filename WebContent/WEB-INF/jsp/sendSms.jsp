<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

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
<!-- Bootstrap 3.3.7 -->
<jsp:include page="css.jsp" />
</head>
<body class="hold-transition skin-blue sidebar-mini">

  <header class="main-header">
    <jsp:include page="header.jsp" />
  </header>

 <jsp:include page="menu.jsp" />
<div class="content-wrapper">
  	 <!-- Content Header (Page header) -->
    <section class="content-header bg-green">
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
	          <form action="message" class="form-horizontal" method="post">
	             <div class='form-group' style="margin-top: 10px;">
							 <label for="minputName" class="col-sm-2 control-label ">Mobile Number</label>
			
			                  <div class="col-sm-10">
			                    <input type="text" class="form-control" id="minputName" placeholder="Mobile Number" name="mobile">
			                  </div> 
			                  <span class="col-sm-4 control-label"></span>
			                </div>   
	             <div class='form-group' style="margin-top: 10px;">
							       <textarea class="form-control" name="message" rows="10" placeholder="Message"></textarea>
                        <div class="has-error"> </div>
                        </div>
	              <div class="pull-right">
                     <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Send</button>
                  </div>
	          </form>
	        </div>
	       </div>
	     </div>    
<!-- jQuery 3 -->
	<jsp:include page="js.jsp" />
</body>
</html>