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
    <section class="content-header" style="background-color: #DB7093;">
      <h1>
        Dashboard
        <small>Control panel</small>
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
	              <form action="addclass" method="post" class="form-horizontal bg-gray">
	     
					    <div class="form-group"style="padding: 20px">
				                  <label for="inputName" class="col-sm-2 control-label ">Class</label>
				                 <div class="col-sm-6">
				                    <input type="text" class="form-control" id="inputName" name="classes" placeholder="class">
				                  </div>
				                </div>
                     <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-6">
                          <input type="submit" class="btn btn-success" value="Add" >
					   							
							
                        </div>
                    </div>
                      
                  </form>
	              </div>
	              </div>
	            
    
      <div class="row">
        <div class="col-lg-12">
          

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Class List</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body" style="overflow-x:auto;">
              <table id="example1" class="table table-striped table-bordered table-hover dataTable no-footer">
                <thead>
                <tr>
                                <th class="col-xs-1"># S.No</th>
                                <th class="col-lg-1">Class</th>
                                <th class="col-lg-2">Actions</th>
                </tr>
                </thead>
                <tbody>
                       
                         <c:forEach var="clas" items="${classlist}">
                           <c:set var="count" value="${count + 1}" scope="page"/>
                             <tr>
                               
                                <td data-title="# S.No">${count } </td>
                                <td data-title="class">${clas.className}</td>
                             
                              <td>
                               <a href="#" class="btn btn-info btn-sm"> <span class="glyphicon glyphicon-edit"></span> Edit</a>
                               <a href="deleteclass/${clas.classId}" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove-circle"></span> Remove </a>
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
     
	  <jsp:include page="js.jsp" />
</body>
</html>