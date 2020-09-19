<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<form action="addvechileFormdata" class="form-horizontal"  role="form" method="post">

						<div class='form-group'>
							<label for="route" class="col-sm-3 control-label"> Route
								Name </label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="route" name="routename"
									value=""> <span class="col-sm-3 control-label"></span>
							</div>
						</div>
						<div class='form-group'>
							<label for="m1" class="col-sm-3 control-label">Mid-Point-1</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="m1" name="midpoint1"
									value=""> <span class="col-sm-3 control-label"></span>
							</div>
						</div>
						<div class='form-group'>
							<label for="m2" class="col-sm-3 control-label"> Mid-Point-2</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="m2" name="midpoint2"
									value=""> <span class="col-sm-3 control-label"></span>
							</div>
						</div>
						<div class='form-group'>
							<label for="vehicle" class="col-sm-3 control-label">
								Vehicle Number </label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="vehicle"
									name="vechileNo" value="">
							</div>
							<span class="col-sm-3 control-label"> </span>
						</div>

						<div class='form-group'>
							<label for="seats" class="col-sm-3 control-label"> Seats
								Available </label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="seats" name="seats"
									value="">
							</div>
							<span class="col-sm-3 control-label"> </span>
						</div>

						<div class='form-group'>
							<label for="seats" class="col-sm-3 control-label"> Driver
								Name </label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="driver_name"
									name="driverName" value="">
							</div>
							<span class="col-sm-3 control-label"> </span>
						</div>

						<div class='form-group'>
							<label for="driver_no" class="col-sm-3 control-label">
								Driver No. </label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="driver_no"
									name="driverNo" value="">
							</div>
							<span class="col-sm-3 control-label"> </span>
						</div>

						<div class='form-group'>
							<label for="conductor_name" class="col-sm-3 control-label">
								Conductor Name </label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="conductor_name"
									name="conductorName" value="">
							</div>
							<span class="col-sm-3 control-label"> </span>
						</div>

						<div class='form-group'>
							<label for="conductor_no" class="col-sm-3 control-label">
								Conductor No </label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="conductor_no"
									name="conductorNo" value="">
							</div>
							<span class="col-sm-3 control-label"> </span>
						</div>

						<div class='form-group'>
							<label for="note" class="col-sm-3 control-label"> Note </label>
							<div class="col-sm-6">
								<textarea class="form-control" style="resize: none;" id="note"
									name="notes"></textarea>
							</div>
							<span class="col-sm-3 control-label"> </span>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-8">
								<input type="submit" class="btn btn-success" value="Add Vehicle">
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