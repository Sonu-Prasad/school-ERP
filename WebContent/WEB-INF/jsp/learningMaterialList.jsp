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
			<div class="row"></div>


			<div class="row">
				<div class="col-lg-12">
					<ul class="list-inline">
						<li><a href="addmaterialForm" class="btn btn-success">Add
								LearningMaterial</a></li>
						<li><a href="listpdf" class="btn btn-success">PDF</a></li>
						<li><a href="listexcel" class="btn btn-success">Excel</a></li>
						<li><a href="#" class="btn btn-success">CSV</a></li>
					</ul>

				</div>
			</div>
			<div>
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">Learning List</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body" style="overflow-x: auto;">
						<table id="example1"
							class="table table-striped table-bordered table-hover dataTable no-footer">
							<thead>
								<tr>
									<th class="col-xs-1"># S.No</th>
									<th class="col-lg-1">Class Name</th>
									<th class="col-lg-1">Subject</th>
									<th class="col-lg-1">Chepter</th>
									<th class="col-lg-1">Title</th>
									<th class="col-lg-1">Link</th>

									<th class="col-lg-1">File</th>
									<th class="col-lg-2">Actions</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="doc" items="${docList}">
									<c:set var="count" value="${count + 1}" scope="page" />
									<tr>

										<td data-title="# S.No">${count }</td>
										<td data-title="Class Name">${doc.className}</td>
										<td data-title="dob">${doc.subject}</td>
										<td data-title="email">${doc.chepter }</td>
										<td data-title="phone">${doc.title}</td>
										<td data-title="doj">${doc.url}</td>
										<td data-title="type">${doc.fileName }</td>

										<td><a href="download/${doc.fileName }"
											class="btn btn-info btn-sm"> <span
												class="glyphicon glyphicon-edit"></span> Download File
										</a> <a href="deleteclass/${clas.classId}"
											class="btn btn-danger btn-sm"><span
												class="glyphicon glyphicon-remove-circle"></span> Remove </a></td>

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
		<!-- /.row -->
	</div>


	<!-- jQuery 3 -->
	<jsp:include page="js.jsp" />
</body>
</html>