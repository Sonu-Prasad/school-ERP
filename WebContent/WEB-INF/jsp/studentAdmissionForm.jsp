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
		<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- Horizontal Form -->
				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">Registration Form</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form action="newStuReg" method="post" enctype="multipart/form-data" class="form-horizontal bg-gray">
						<div class="box-body text-primary">
							<div class="form-group">
								<label for="inputName" class="col-sm-2 control-label ">Name</label>

								<div class="col-sm-6">
									<input type="text" class="form-control" id="inputName" placeholder="Name" name="sname">
								</div>
							</div>
							<div class='form-group'>
								<label for="classesID" class="col-sm-2 control-label">
									Class* </label>
								<div class="col-sm-6">

									<select class="form-control" id="classesID" name="classesID"
										required>
									    <option value="">Select Class</option>
										 <c:forEach var="clas" items="${classlist}">	
										        <option value="${clas.classId}">${clas.className}</option>
									
										
										</c:forEach>   
									</select>
								</div>
								<span class="col-sm-4 control-label"> </span>
							</div>

							

							<div class='form-group'>
								<label for="sex" class="col-sm-2 control-label"> Gender
								</label>
								<div class="col-sm-6">
									<select name="sex" id='sex' class='form-control'>
										<option value="" selected="selected">Select Gender</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
									</select>
								</div>
								<span class="col-sm-4 control-label"> </span>
							</div>
							<!-- Date -->
							<div class='form-group'>
								<label for="father_age" class="col-sm-2 control-label">
									DOB* </label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="datepicker" name="dob" required name="father_age" value="">
								</div>
								<span class="col-sm-3 control-label"> </span>
							</div>


							<div class="form-group">
								<label for="religion" class="col-sm-2 control-label">Religion</label>
								<div class="col-sm-6">
									<!--  <input type="text" class="form-control" id="religion" name="religion" value="" > -->
									<select class="form-control" id="religion" required
										name="religion">

										<option value="">Select Religion</option>
										<option value="Hindu">Hindu</option>
										<option value="Muslim">Muslim</option>
										<option value="Sikh">Sikh</option>
										<option value="Christan">Christan</option>
										<option value="Other">Other</option>

									</select>
								</div>
								<span class="col-sm-4 control-label"> </span>

							</div>
							<div class='form-group'>
								<label for="caste" class="col-sm-2 control-label">
									Caste* </label>
								<div class="col-sm-6">

									<select class="form-control" id="caste" required name="caste">
										<option value="General">General</option>
										<option value="OBC">OBC</option>
										<option value="SC/ST">SC/ST</option>

									</select>
								</div>
								<span class="col-sm-4 control-label"> </span>
							</div>
							<div class="form-group">
								<label for="inputName" class="col-sm-2 control-label ">Email</label>

								<div class="col-sm-6">
									<input type="email" class="form-control" id="inputName" name="email"
										placeholder="Name">
								</div>
							</div>

							<div class='form-group'>
								<label for="area" class="col-sm-2 control-label"> Area*
								</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="area" name="area"
										required value="">
								</div>
								<span class="col-sm-4 control-label"> </span>
							</div>
							<div class='form-group'>
								<label for="paddress" class="col-sm-2 control-label">
									City* </label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="city" required
										name="city" value="">
								</div>
								<span class="col-sm-4 control-label"> </span>
							</div>
							<div class='form-group'>
								<label for="pin" class="col-sm-2 control-label"> Pin* </label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="pin" required
										name="pin" value="">
								</div>
								<span class="col-sm-4 control-label"> </span>
							</div>



							<div class='form-group'>
								<label for="photo"
									class="col-sm-2 control-label col-xs-8 col-md-2">
									Student Image </label>
								

								<div class="col-sm-6">
									<div class="fileUpload btn btn-success form-control">
										 <input
											id="fileToUpload" type="file" class="upload" name="file" />
									</div>
								</div>
								<span class="col-sm-4 control-label col-xs-6 col-md-4"> </span>
							</div>


							<div class='form-group'>
								<label for="p_school" class="col-sm-2 control-label">
									Previous Class </label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="p_school"
										name="p_school" value="">
								</div>
								<span class="col-sm-4 control-label"> </span>
							</div>

							<div class='form-group'>

								<label for="p_class" class="col-sm-2 control-label">
									Previous School </label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="p_class"
										name="p_class" value="">
								</div>
								<span class="col-sm-4 control-label"> </span>
							</div>
							<!-- parent detail -->

							<br>
							<h4 style="color: #000;text-align: center;">
								<u>PARENT DETAILS :</u>
							</h4>
							<br>
							<div class="row">
								<div class="col-sm-10">

									<div class='form-group'>
										<label for="father_name" class="col-sm-2 control-label">
											Father's Name* </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="father_name"
												required name="father_name" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>
									<div class='form-group'>
										<label for="father_profession" class="col-sm-2 control-label">
											Father's Profession* </label>
										<div class="col-sm-6">
											<input type="text" class="form-control"
												id="father_profession" required name="father_profession"
												value="">
										</div>
										<span class="col-sm-4 control-label"> </span>
									</div>
									
									
									<div class='form-group'>
										<label for="f_annual_income" class="col-sm-2 control-label">
											Father's Annual Income* </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="f_annual_income"
												required name="f_annual_income" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>

									<div class='form-group'>
										<label for="p_email" class="col-sm-2 control-label">
											Father Email* </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="p_email" required
												name="p_email" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>
									<div class='form-group'>
										<label for="p_phone" class="col-sm-2 control-label">
											Father Phone* </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="p_phone" required
												name="f_phone" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>



								</div>
								<!-- Fathers Column -->
								<div class="col-sm-10">


									<div class='form-group'>
										<label for="mother_name" class="col-sm-2 control-label">
											Mother's Name* </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="mother_name"
												required name="mother_name" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>

									<div class='form-group'>
										<label for="mother_profession" class="col-sm-2 control-label">
											Mother's Profession* </label>
										<div class="col-sm-6">
											<input type="text" class="form-control"
												id="mother_profession" required name="mother_profession"
												value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>
									
									<div class='form-group'>
										<label for="m_annual_income" class="col-sm-2 control-label">
											Mother's Annual Income </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="m_annual_income"
												name="m_annual_income" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>
									<div class='form-group'>
										<label for="mother_email" class="col-sm-2 control-label">
											Mother Email </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="mother_email"
												name="mother_email" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>
									<div class='form-group'>
										<label for="mother_phone" class="col-sm-2 control-label">
											Mother Phone </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="mother_phone"
												name="mother_phone" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>
                                    <div class='form-group'>
										<label for="home" class="col-sm-2 control-label">
											Home </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="home"
												name="home" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>
                                      <div class='form-group'>
										<label for="Post-office" class="col-sm-2 control-label">
											Post-office </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="Post-office"
												name="post" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div>
                                  <div class='form-group'>
										<label for="Police-Station" class="col-sm-2 control-label">
											Police-Station </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="Police-Station"
												name="ps" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div> 
									<div class='form-group'>
										<label for="dist" class="col-sm-2 control-label">
											Dist </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="dist"
												name="dist" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div> 
									<div class='form-group'>
										<label for="state" class="col-sm-2 control-label">
											State </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="state"
												name="state" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div> 
									<div class='form-group'>
										<label for="pin" class="col-sm-2 control-label">
											Pin-Code </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="pin"
												name="pin" value="">
										</div>
										<span class="col-sm-3 control-label"> </span>
									</div> 
								</div>
								<!-- Mother's Column -->
							</div>
							<h4 style="color: #000;">
								<u><b>Declaration</b>:</u>
							</h4>
							<br>
							<div class="form-group">

								<div class="col-sm-1 text-right">
									<input type="checkbox" name="agreement" required value="Y">
								</div>
								<blockquote class="blockquote">
									<p class="mb-0 text-danger">hereby declare that the information
										mentioned above is true and correct to my knowledge and
										belief. In case any information is found false or incorrect on
										verification, that registraion of my ward will stand
										cancelled. I fully clearify understand that this online
										registration does not essentially mean admission. I understand
										that admission will be done as per rules and criteria decided
										by the school in accordance with the directions given by the
										DOE and Government / Court.</p>

								</blockquote>

							</div>


							<!-- /.box-body -->
							<div class="form-group">
								<div class="col-sm-offset-4 col-sm-6">
									<input type="submit" class="btn btn-success"
										value="Submit">


								</div>
							</div>

							<!-- /.box-footer -->
					</form>
				</div>
			</div>
		</div>
		</section>

	</div>


	<!-- jQuery 3 -->
	<jsp:include page="js.jsp" />
</body>
</html>