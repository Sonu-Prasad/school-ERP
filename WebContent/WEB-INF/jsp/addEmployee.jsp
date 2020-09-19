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
				<div class="col-md-11 bg-gray"
					style="border: 1px solid blue; margin-left: 20px; margin-right: 30ox;">
					<!-- small box -->
					<form action="addEmp" class="form-horizontal" method="post">

						<div class='form-group' style="margin-top: 10px;">
							<label for="sname" class="col-sm-2 control-label"> Name </label>

							<div class="col-sm-6">

								<input type="text" class="form-control" id="sname" name="name"
									value="">

							</div>

							<span class="col-sm-4 control-label"></span>
						</div>
						<div class='form-group'>
							<label for="dob" class="col-sm-2 control-label"> Date of
								Birth </label>

							<div class="col-sm-6">

								<input type="text" class="form-control checkBoxClassHeading"
									id="dob" name="dob" value="">

							</div>

							<span class="col-sm-4 control-label"> </span>


						</div>
						<div class='form-group'>
							<label for="sex" class="col-sm-2 control-label"> Gender </label>

							<div class="col-sm-6">

								<select name="sex" id='sex'
									class='form-control checkBoxClassHeading'>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
								</select>
							</div>

							<span class="col-sm-4 control-label"> </span>

						</div>
						<div class='form-group'>
							<label for="religion" class="col-sm-2 control-label">

								Religion </label>

							<div class="col-sm-6">

								<input type="text" class="form-control checkBoxClassHeading"
									id="religion" name="religion" value="">

							</div>

							<span class="col-sm-4 control-label"> </span>

						</div>
						<div class='form-group'>
							<label for="email" class="col-sm-2 control-label"> Email
							</label>

							<div class="col-sm-6">

								<input type="text" class="form-control checkBoxClassHeading"
									id="email" name="email" value="">

							</div>

							<span class="col-sm-4 control-label"> </span>

						</div>
						<div class='form-group'>
							<label for="phone" class="col-sm-2 control-label"> Phone
							</label>

							<div class="col-sm-6">

								<input type="text" class="form-control checkBoxClassHeading"
									id="phone" name="phone" value="">

							</div>

							<span class="col-sm-4 control-label"> </span>

						</div>
						<div class='form-group'>
							<label for="jod" class="col-sm-2 control-label"> Joining
								Date </label>

							<div class="col-sm-6">

								<input type="text" class="form-control checkBoxClassHeading"
									id="jod" name="jod" value="">

							</div>

							<span class="col-sm-4 control-label"> </span>

						</div>
						<div class='form-group'>
							<label for="photo"
								class="col-sm-2 control-label col-xs-8 col-md-2"> Photo
							</label>
							<div class=" col-md-6">

								<div class="fileUpload btn btn-success form-control">
									<input id="uploadBtn" type="file"
										class="upload checkBoxClassHeading" name="image" />

								</div>

							</div>

							<span class="col-sm-4 control-label col-xs-6 col-md-4"> </span>

						</div>
						<div class='form-group'>
							<label for="usertype" class="col-sm-2 control-label">

								Type </label>

							<div class="col-sm-6">

								<select name="usertype" id='usertype'
									class='form-control checkBoxClassHeading'>
									<option value="Accountant">Accountant</option>
									<option value="Teacher">Teacher</option>
									<option value="Doctor">Doctor</option>
									<option value="Librarian">Librarian</option>
									<option value="Non-Teaching">Librarian</option>
								</select>
							</div>

							<span class="col-sm-4 control-label"> </span>

						</div>
						<div class="form-group">

							<div class="col-sm-offset-4 col-sm-8">

								<input type="submit" class="btn btn-success" id="submit_button"
									value="Add User">

							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery 3 -->
	<jsp:include page="js.jsp" />
</body>
</html>