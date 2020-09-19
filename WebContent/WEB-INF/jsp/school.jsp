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
	<header class="main-header"> <jsp:include page="header.jsp" />
	</header>

	<jsp:include page="menu.jsp" />
	<!-- main body part -->

	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header" style="background-color: #DB7093;">
		<h1>
			Dashboard <small>Control panel</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="sucess"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Add Class</li>
		</ol>
		</section>
		<!-- Main content -->
		<div class="box-body">
		  <div class="row">
			 <div class="container">
				<form class="form-horizontal pad_left" role="form" action="schooldata" method="post"
						enctype="multipart/form-data">

						<center>
							<h2>School Information</h2>
						</center>
						<br>

						<div class="col-sm-6">
							<div class='form-group'>
								<label for="school_name" class="col-sm-4 control-label">

									School Name </label>

								<div class="col-sm-6">
								<input type="text" class="form-control" id="school_name"
										name="schoolName">

								</div>
								<span class="col-sm-4 control-label"> </span>

							</div>

						</div>
						<div class="col-sm-6">

							<div class='form-group'>
								<label for="address" class="col-sm-4 control-label">Address </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="address" name="address">

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>

						</div>
						<div class="col-sm-6">
							<div class='form-group'>
								<label for="principal" class="col-sm-4 control-label">

									Principal Name </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="principal"
										name="principal">

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>
						</div>
						<div class="col-sm-6">
							<div class='form-group'>
								<label for="principal_email" class="col-sm-4 control-label">Principal Email </label>

							<div class="col-sm-6">
								<input type="text" class="form-control" id="principal_email"
										name="principal_email"/>

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>

						</div>
						<div class="col-sm-6">
						 <div class='form-group'>
								<label for="principal_mobile" class="col-sm-4 control-label">

									Principal Mobile </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="principal_mobile"
										name="principal_mobile"/>

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>

						</div>
						<div class="col-sm-6">
						 <div class='form-group'>
								<label for="chairman" class="col-sm-4 control-label">

									Chairman </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="chairman"
										name="chairman" />

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>
						</div>
						
						<div class="col-sm-6">


							<div class='form-group'>
								<label for="cur_addmision_year" class="col-sm-4 control-label">

									Admission Year </label>

								<div class="col-sm-6">

									<select name="cur_addmision_year" id="cur_addmision_year"
										class="form-control">

										<option value="">select</option>
										<option value="2018-2019">
											2018-2019</option>
										<option value="2019-2020">
										<option value="2020-2021">
											2020-2021</option>
										<option value="2021-2022">
											2021-2022</option>
										<option value="2022-2023">
											2022-2023</option>
										<option value="2023-2024">
											2023-2024</option>
										<option value="2024-2025">
											2024-2025</option>
										<option value="2025-2026">
											2025-2026</option>
										<option value="2026-2027">
											2026-2027</option>
										<option value="2027-2028">
											2027-2028</option>
									</select>

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>

						</div>
						<div class="col-sm-6">


							<div class='form-group'>
								<label for="web_url" class="col-sm-4 control-label"> Website
									 </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="web_url"
										name="web_url" >

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>

						</div>
						<div class="col-sm-6">
						<div class='form-group'>
								<label for="fax_no" class="col-sm-4 control-label"> Fax
									No. </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="fax_no"
										name="fax_no">

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>
						</div>
						<div class="col-sm-6">
						<div class='form-group'>
								<label for="board" class="col-sm-4 control-label"> Board
								</label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="board" name="board">

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>

						</div>
						<div class="col-sm-6">


							<div class='form-group'>
								<label for="school_code" class="col-sm-4 control-label">

									School Code </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="school_code"
										name="school_code">

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>
						</div>
						

						<div class="col-sm-6">

							<div class='form-group'>
								<label for="estd_year" class="col-sm-4 control-label">

									Registration Year </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="estd_year"
										name="registd_year">

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>
						</div>

						<div class="col-sm-6">

							<div class='form-group'>
								<label for="registration_prefix" class="col-sm-4 control-label">

									Financial year </label>

								<div class="col-sm-6">

									<select name="financial_year" class="form-control">

										<option value="">select</option>
										<option value="2018-2019">
											2018-2019</option>
										<option value="2019-2020" >
										<option value="2020-2021">
											2020-2021</option>
										<option value="2021-2022">
											2021-2022</option>
										<option value="2022-2023">
											2022-2023</option>
										<option value="2023-2024">
											2023-2024</option>
										<option value="2024-2025">
											2024-2025</option>
										<option value="2025-2026">
											2025-2026</option>
										<option value="2026-2027">
											2026-2027</option>
										<option value="2027-2028">
											2027-2028</option>
									</select>

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>


						</div>


						
						<div class="col-sm-6">


							<div class='form-group'>
								<label for="estd_year" class="col-sm-4 control-label">

									School Contact </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="contact"
										name="schoolcontact">

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>

						</div>
						<div class="col-sm-6">
						<div class='form-group'>
								<label for="estd_year" class="col-sm-4 control-label">

									Email ID </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="email" name="email">

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>

						</div>
						<div class="col-sm-6">

							<div class='form-group'>
								<label for="estd_year" class="col-sm-4 control-label">

									Class Allow </label>

								<div class="col-sm-6">

									<input type="text" class="form-control" id="class_allow"
										name="class_allow">

								</div>

								<span class="col-sm-4 control-label"> </span>

							</div>

						</div>
						<div class="col-sm-6">

                       <div class='form-group' >
                        <label for="estd_year" class="col-sm-4 control-label">

									schoolLogo </label>

                        <div class="col-sm-8">
									<div class="fileUpload btn btn-success form-control">
										 <input
											id="fileToUpload" type="file" class="upload" name="file" />
									</div>
								</div>
                       </div>

                         <span class="col-sm-4 control-label col-xs-6 col-md-4">
                    </span>

                    </div>
                      
						<div class="form-group">

							<div class="col-sm-offset-2 col-sm-8">


								<input type="submit" class="btn btn-success" value="Submit">

							</div>

						</div>



					</form>


				</div>
			</div>




			<!-- /.row -->
		</div>
	</div>

	<jsp:include page="js.jsp" />
</body>
</html>