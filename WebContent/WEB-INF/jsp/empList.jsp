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
    <div class="box-body">
    	 <div class="row">
	            
	              </div>
	            
    
      <div class="row">
        <div class="col-lg-12">
           <div class="box">
            <a href="addEmpForm" class="btn btn-success">Add Employee</a>
            <input type="button" class="btn btn-primary" onclick="printDiv('printableArea')" value="print" />
            </div>
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Employee List</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body" style="overflow-x:auto;" id="printableArea">
              <table id="example1" class="table table-striped table-bordered table-hover dataTable no-footer">
                <thead>
                <tr>
                                <th class="col-xs-1"># S.No</th>
                                <th class="col-lg-1">Name</th>
                                 <th class="col-lg-1">DOB</th> 
                                  <th class="col-lg-1">Email</th> 
                                   <th class="col-lg-1">Phone</th> 
                                 <th class="col-lg-1">Joining Date</th>
                                  <th class="col-lg-1">Role</th>  
                                <th class="col-lg-2">Actions</th>
                </tr>
                </thead>
                <tbody>
                       
                         <c:forEach var="emp" items="${empBean}">
                           <c:set var="count" value="${count + 1}" scope="page"/>
                             <tr>
                               
                                <td data-title="# S.No">${count } </td>
                                <td data-title="name">${emp.name}</td>
                                <td data-title="dob">${emp.dob}</td> 
                                 <td data-title="email">${emp.email } </td>
                                <td data-title="phone">${emp.phone}</td>
                                <td data-title="doj">${emp.doj}</td> 
                                 <td data-title="type">${emp.type } </td>
                                
                              <td>
                               <a href="#" class="btn btn-info btn-sm"> <span class="glyphicon glyphicon-edit"></span> Edit</a>
                               <a href="#" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove-circle"></span> Remove </a>
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
      <!-- /.row -->
     </div>
     
  <!-- jQuery 3 -->
<jsp:include page="js.jsp" />
<script type="text/javascript">
function printDiv(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;

    window.print();

    document.body.innerHTML = originalContents;
}
</script>
</body>
</html>

