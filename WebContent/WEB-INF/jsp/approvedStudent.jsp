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
		<div class="box-body" style="border: 2px, red; border-color: green;">

			<div class="row">
				<div class="col-lg-12">


					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Registration List</h3>
						</div>
						<!-- /.box-header -->
						<div class="row"
							style="overflow-x: auto; margin-right: 10px; margin-left: 10px;">
							<table id="example1"
								class="table table-striped table-bordered table-hover dataTable no-footer"
								style="width: 1300px">
								<thead>
									<tr>
										<th class="col-xs-1">S.No</th>
										<th class="col-xs-1">StuId</th>
										<th class="col-xs-1">Name</th>
										<th class="col-lg-1">Father Name</th>

										<th class="col-lg-1">Mother Name</th>

										<th class="col-lg-1">Class</th>
										<th class="col-lg-1">Points</th>
										<th class="col-lg-1">Registration Status</th>
										<th class="col-lg-1">Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="stu" items="${studentList}">
										<c:set var="count" value="${count + 1}" scope="page" />

										<tr>
											<td data-title="# S.No">${count }</td>
											<td data-title="# S.id">${stu.sid }</td>
											<td data-title="Student Name">${stu.name }</td>
											<td data-title="Father's Name">${stu.parent.fname }</td>

											<td data-title="Student Phone">${stu.parent.mname }</td>

											<td data-title="student Class">${stu.clas }</td>
											<td>60</td>
											<td data-title="Registration Status">${stu.registrationStatus }</td>
											<td><a href="continoue/${stu.sid}"
												class='btn btn-success'
												style="margin-left: 2px; font-size: 15px; margin-bottom: 5px;">
													continue</a> <a href="studentInfo/${stu.sid}"
												class='btn btn-primary btn-xs mrg'
												style="margin-left: 2px; font-size: 20px"
												data-placement='top' data-toggle='tooltip'
												data-original-title='View'><i class='fa fa-eye'></i></a></td>

										</tr>
									</c:forEach>
								</tbody>

							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
		</div>
		<!-- /.row --> </section>
	</div>


	<!-- jQuery 3 -->
	<jsp:include page="js.jsp" />

</body>
</html>