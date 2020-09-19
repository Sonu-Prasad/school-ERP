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
					<form action="invoiceCreate" class="form-horizontal" method="post">

						<div class='form-group'>
							<label for="class" class="col-sm-2 control-label"> Class
							</label>
							<div class="col-sm-2">
								<select name="class" id='class' class='form-control'>
									<c:forEach var="clas" items="${classList}">
										<option value="${clas.classId }${'-'}${clas.className}">${clas.className}</option>
									</c:forEach>

								</select>
							</div>

							<label for="section" class="col-sm-2 control-label">Section</label>
							<div class="col-sm-2">
								<select name="sec" id='section' class='form-control'>
									<c:forEach var="sec" items="${sectionlist}">
										<option value="${sec.secId }${'-'}${sec.section}">${sec.section}</option>
									</c:forEach>
								</select>

							</div>

							<span class="col-sm-4 control-label"> </span>
						</div>
						<div class='form-group'>
							<label for="roll" class="col-sm-2 control-label"> Roll No
							</label>

							<div class="col-sm-6">

								<input type="text" class="form-control" id="roll" name="roll"
									value="">

							</div>

							<span class="col-sm-4 control-label"> </span>

						</div>
						<div class='form-group' style="margin-top: 10px;">
							<label for="sname" class="col-sm-2 control-label">

								Student Name </label>

							<div class="col-sm-6">

								<input type="text" class="form-control" id="sname" name="name"
									value="">

							</div>

							<span class="col-sm-4 control-label"> </span>

						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-8">
								<input type="submit" class="btn btn-success"
									value="Search Student">
							</div>
						</div>

					</form>
				</div>
			</div>
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
										<th class="col-lg-1">Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="stu" items="${student}">
										<c:set var="count" value="${count + 1}" scope="page" />

										<tr>
											<td data-title="# S.No">${count }</td>
											<td data-title="# S.id">${stu.sid }</td>
											<td data-title="Student Name">${stu.name }</td>
											<td data-title="Father's Name">${stu.parent.fname }</td>

											<td data-title="Student Phone">${stu.parent.mname }</td>

											<td data-title="student Class">${stu.clas }</td>
											
											<td><a href="create/${stu.sid}"
												class='btn btn-success'
												style="margin-left: 2px; font-size: 15px; margin-bottom: 5px;">
													create</a> <a href="studentInfo/${stu.sid}"
												class='btn btn-primary btn-xs mrg'
												style="margin-left: 2px; font-size: 20px"
												data-placement='top' data-toggle='tooltip'
												data-original-title='View'><i class='fa fa-eye'></i></a></td>

										</tr>
									</c:forEach>
								</tbody>

							</table>
						</div>
		</div>
	</div>
	
	<!-- jQuery 3 -->
	<jsp:include page="js.jsp" />
</body>
</html>