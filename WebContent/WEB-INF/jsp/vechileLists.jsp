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
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
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
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>
    <!-- Main content -->
          <section class="content">
		<div class="box-body" style="border: 2px,red;border-color: green;">

			<div class="row">
				<div class="col-lg-12">


					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Vechile List</h3>
						</div>
						<!-- /.box-header -->
						<div class="row" style="overflow-x: auto;margin-right: 10px;margin-left: 10px;">
							<table id="example1" 
								class="table table-striped table-bordered table-hover dataTable no-footer" style="width: 1300px">
								<thead>
                <tr>
                                <th class="col-xs-1"># S.No</th>
                                <th class="col-lg-1">Route</th>
                                 <th class="col-lg-1">Mid-Point1</th> 
                                  <th class="col-lg-1">Mid-Point2</th> 
                                   <th class="col-lg-1">Vechile No</th> 
                                 <th class="col-lg-1">Driver Name</th>
                                  <th class="col-lg-1">Driver No</th>  
                                  <th class="col-lg-2">Conductor Name</th>
                                  <th class="col-lg-1">Conductor No</th>
                                    <th class="col-lg-2"> Notes </th>
                                     <th class="col-lg-2" style="width: 150px;"> Actiom </th>
                </tr>
                </thead>
                <tbody>
                       
                         <c:forEach var="vechile" items="${vechileList}">
                           <c:set var="count" value="${count + 1}" scope="page"/>
                             <tr>
                         
                                <td data-title="# S.No">${count } </td>
                                <td data-title="Route">${vechile.routename}</td>
                                <td data-title="Mid-Point1">${vechile.midpoint1}</td> 
                                 <td data-title="Mid-Point2">${vechile.midpoint2 } </td>
                                <td data-title="Vechile No">${vechile.vechileNo}</td>
                                <td data-title="Driver Name">${vechile.driverName}</td> 
                                 <td data-title="Driver No">${vechile.driverNo } </td>
                                  <td data-title="Conductor Name">${vechile.conductorName}</td>
                                <td data-title="Conductor No">${vechile.conductorNo}</td> 
                                 <td data-title="Notes">${vechile.notes } </td>
                                 
                                
                              <td tyle="width: 150px;">
                               <a href="#" class="btn btn-info btn-sm"> <span class="glyphicon glyphicon-edit"></span> Edit</a>
                               <a href="deleteclass/${vechile.vechileId}" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove-circle"></span> Remove </a>
                              </td>

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