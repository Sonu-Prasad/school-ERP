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
	 <div class="box-body">
		<div class="row">
			<div class="col-md-8 ">
				<form action="feeheaddata" class="form-horizontal" method="post">
					<div class='form-group'>
						<label for="feehead" class="col-sm-2 control-label"> Fee
							Head </label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="feehead"
								name="feehead" value="">
						</div>
						<span class="col-sm-4 control-label"> </span>
					</div>

					<div class='form-group'>
						<label for="class_type" class="col-sm-2 control-label">
							Fee Type </label>
						<div class="col-sm-6">
							<select name="fee_type" id='fee_type' class='form-control'>
								<option value="Month Wise">Month Wise</option>
								<option value="Yearly">yearly</option>
								<option value="One Time">one Time</option>
							</select>
						</div>
						<span class="col-sm-4 control-label"> </span>
					</div>
					<div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <input type="submit" class="btn btn-success" value="Add Fee Head" >
                        </div>
                    </div>

				</form>
			</div>
		</div>
		<div class="row">
		<div class="box-header">
			<h3 class="box-title">Fee Head List</h3>
		</div>
		<!-- /.box-header -->
		<div class="row col-md-11"
			style="overflow-x: auto; margin-right: 10px; margin-left: 10px;">
			<table id="example1"
				class="table table-striped table-bordered table-hover dataTable no-footer">
				<thead>
					<tr>
						<th class="col-xs-1">S.No</th>
						<th class="col-xs-1">Head</th>
						<th class="col-xs-1">Fee Type</th>
						<th class="col-xs-1">Action</th>
					</tr>
				</thead>
				       <tbody>
								  <c:forEach var="feehead" items="${feeheadList}">
                                     <c:set var="count" value="${count + 1}" scope="page"/>
								
									<tr>
										<td data-title="# S.No">${count }</td>
										<!--  <td data-title="# feeid">${feehead.feeId }</td>-->
										<td data-title="# feehead name">${feehead.headName}</td>
										<td data-title="feehead Type">${feehead.headType }</td>
										<td>										
										<a href="#" class="btn btn-info btn-sm"> <span class="glyphicon glyphicon-edit"></span> Edit</a>
                                        <a href="#/${clas.classId}" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove-circle"></span> Remove </a>
                               
										</td>
										
									</tr>	
								</c:forEach>
								</tbody>	
			</table>
		</div>
	</div>
	
	</div>
	</div>
	


	<!-- jQuery 3 -->
	<jsp:include page="js.jsp" />
</body>
</html>