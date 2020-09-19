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
		<div class="box-body">

			<div class="row">

				<div class="col-sm-8">

					<form action="learningmaterialdata" method="post" enctype="multipart/form-data" class="form-horizontal bg-gray">
												<div class='form-group'>
							<label for="htype" class="col-sm-2 control-label"> Class
							</label>
							<div class="col-sm-6">
								<select name="class" id='class' class='form-control'>
							   <c:forEach var="clas" items="${classList}">
								<option value="${clas.className}">${clas.className}</option>
								</c:forEach>
								
							</select>
							</div>
							<span class="col-sm-4 control-label" id="ciderror"
								style="color: red;"> </span>
						</div>





						<div class='form-group'>
							<label for="subject" class="col-sm-2 control-label">
								Subject </label>

							<div class="col-sm-6">
								<input type="text" class="form-control" id="subject"
									name="subject">
							</div>
							<span class="col-sm-4 control-label" id="subjecterror"></span>
						</div>

						<div class='form-group'>
							<label for="chapter" class="col-sm-2 control-label">
								Chapter </label>

							<div class="col-sm-6">
								<input type="text" class="form-control" id="chapter"
									name="chapter">
							</div>
							<span class="col-sm-4 control-label" id="chaptererror"></span>
						</div>
						<div class='form-group'>
							<label for="title" class="col-sm-2 control-label"> Title
							</label>

							<div class="col-sm-6">
								<input type="text" class="form-control" id="title" name="title">
							</div>
							<span class="col-sm-4 control-label" id="titleerror"></span>
						</div>
						<div class='form-group'>
							<label for="classesID" class="col-sm-2 control-label">
								Youtube Url </label>

							<div class="col-sm-6">
								<input type="text" class="form-control" id="url" name="url"
									onchange="checkitnow(this.value,'url');">
							</div>
							<span class="col-sm-4 control-label" id="urlerror"></span>
						</div>



						<div class='form-group'>
							<label for="cla" class="col-sm-2 control-label"> &nbsp; </label>

							<div class="col-sm-6">
								<p>OR</p>
							</div>
							<span class="col-sm-4 control-label" id="error"></span>
						</div>

						<!-- <div class='form-group' >
                        <label for="classesID" class="col-sm-2 control-label">
                           preview
                        </label>

                        <div class="col-sm-6" id="thumbnail" >
                         
                        </div>
                        <span class="col-sm-4 control-label"></span>
                    </div> -->

						<div class='form-group'>
							<label for="htype" class="col-sm-2 control-label"> File
								Type </label>
							<div class="col-sm-6">
								<select class="form-control" id="fileType" name="fileType">
									<option value=''>-Select Type-</option>
									<option value='PDF'>PDF</option>
									<option value='AUDIO'>AUDIO</option>
									<option value='VIDEO'>VIDEO</option>
									<option value='IMAGE'>IMAGE</option>
									<option value='DOC'>DOC</option>
								</select>
							</div>
							<span class="col-sm-4 control-label" id="classerror"
								style="color: red;"> </span>
						</div>

						<div class='form-group'>
							<label for="classesID" class="col-sm-2 control-label">
								File </label>

							<div class="col-sm-6">
									<div class="fileUpload btn btn-success form-control">
										 <input
											id="fileToUpload" type="file" class="upload" name="file" />
									</div>
								</div>
							<span class="col-sm-4 control-label">
								<div id="progress-wrp" style="display: none;">
									<div
										class="progress-bar progress-bar-success progress-bar-striped"></div>
									<div class="status">0%</div>
								</div>
								<div id="output">
									<!-- error or success results -->
								</div>
								<p id="fp"></p>
							</span>
						</div>
                      <div class="form-group">

							<div class="col-sm-offset-2 col-sm-8">

								<input type="submit" name="upload_data" id="upload_data"
									class="btn btn-success" value="uplaod">

							</div>

						</div>



					</form>

				</div>
				<!-- col-sm-8 -->


			</div>
			<!-- row -->

		</div>
		<!-- Body -->

	</div>
	<!-- /.box -->
	</div>


	<!-- jQuery 3 -->
	<jsp:include page="js.jsp" />
	
</body>
</html>