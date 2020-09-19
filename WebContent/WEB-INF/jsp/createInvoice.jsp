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
   <header class="main-header">
    <jsp:include page="header.jsp" />
  </header>

 <jsp:include page="menu.jsp" />
   
<!-- main body part -->

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
	          <form action="#" class="form-horizontal" method="post">
	          
	         
	          
		           <div class='form-group'>
						<label for="class" class="col-sm-2 control-label">
							Class </label>
						<div class="col-sm-2">
							<select name="class" id='class' class='form-control'>
							   <c:forEach var="clas" items="${classList}">
								<option value="${clas.classId }${'-'}${clas.className}">${clas.className}</option>
								</c:forEach>
								
							</select>
						</div>
						
						<span class="col-sm-4 control-label"> </span>
					</div>
			        <div class="col-md-2">
              <div class="form-group">
                <label>Select Month</label>
              <select name="month" id='month' class='form-control'>
                      <option value="1">January</option>
                      <option value="2">February</option>
                      <option value="3">March</option>
                      <option value="4">April</option>
                      <option value="5">May</option>
                      <option value="6">June</option>
                      <option value="7">July</option>
                      <option value="8">August</option>
                      <option value="9">September</option>
                      <option value="10">October</option>
                      <option value="11">November</option>
                      <option value="12">December</option>
              </select>             
 </div>
            
              <!-- /.form-group -->
            </div>
			    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <input type="submit" class="btn btn-success" value="Search Student" >
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
		<div class="row col-md-12"
			style="overflow-x: auto; margin-right: 10px; margin-left: 10px;border:1px solid black;">
			<table id="example1"
				class="table table-striped table-bordered table-hover dataTable no-footer"style="width: 1300px;">
				<thead>
					<tr>
						<th class="col-xs-1">S.No</th>
						<th class="col-xs-1">Invoice No</th>
						<th class="col-xs-1">Month</th>
						<th class="col-xs-1">Payment Date</th>
						<th class="col-xs-1">Tution Fee</th>
					    <th class="col-xs-1">Transport Fee</th>
					    <th class="col-xs-1">Exam Fee</th>
					    <th class="col-xs-1">Late Fine</th>
					    <th class="col-xs-1">Last Due</th>
					    <th class="col-xs-1">Status</th>
						<th class="col-xs-1">Action</th>
					</tr>
				</thead>
				     <!--    <tbody>
								    <c:forEach var="feestructure" items="${feeList}">
                                     <c:set var="count" value="${count + 1}" scope="page"/>
                                     
								
									<tr>
										<td data-title="# S.No">${count }</td>
										<td data-title="# feehead name">${feestructure.headName}</td>
										<td data-title="#class">${feestructure.className }</td>
										<td data-title="#month">${feestructure.month }</td>
										<td data-title="# amount">${feestructure.amount}</td>
										
										<td>										
										<a href="#" class="btn btn-info btn-sm"> <span class="glyphicon glyphicon-edit"></span> Edit</a>
                                        <a href="#/${clas.classId}" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove-circle"></span> Remove </a>
                               
										</td>
										
									</tr>	
								</c:forEach>
								</tbody>	-->
			</table>
		</div>
	</div>
         
    </div>

  </div>


  <!-- jQuery 3 -->
 <jsp:include page="js.jsp" />

</body>
</html>