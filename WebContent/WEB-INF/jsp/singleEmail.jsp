<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
 <jsp:include page="css.jsp" />
<style type="text/css">
.box .box-header {
    border-top: 1px solid rgb(144,144,234); 
     border-left: 1px solid rgb(144,144,234);
     border-right: 1px solid rgb(144,144,234);
}
.box .box-body {
    border: 1px solid rgb(144,144,234);
}
</style>


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
				<div class="col-sm-8"
					style="border: 1px solid blue; margin-left: 20px; margin-right: 30ox;">
					<!-- small box -->
					<form action="maildata" class="form-horizontal" method="post" enctype="multipart/form-data">

						<div class='form-group' style="margin-top: 10px;">
							<label for="minputName" class="col-sm-2 control-label ">From</label>
			
			                  <div class="col-sm-10">
			                    <input type="text" class="form-control" id="minputName" placeholder="From" name="from">
			                  </div>
			                  <span class="col-sm-4 control-label"></span>
			                </div>
			                <div class='form-group' style="margin-top: 10px;">
			                 <label for="minputName" class="col-sm-2 control-label ">To</label>
			
			                  <div class="col-sm-10">
			                    <input type="text" class="form-control" id="minputName" placeholder="TO" name="to">
			                  </div>
			                  <span class="col-sm-4 control-label"></span>
			               </div>
			               
						<div class='form-group' style="margin-top: 10px;">
							 <label for="minputName" class="col-sm-2 control-label ">Subject</label>
			
			                  <div class="col-sm-10">
			                    <input type="text" class="form-control" id="minputName" placeholder="Subject" name="subject">
			                  </div> 
			                  <span class="col-sm-4 control-label"></span>
			                </div>   
			             <div class='form-group' style="margin-top: 10px;">
							       <textarea class="form-control" name="message" rows="10" placeholder="Message"></textarea>
                        <div class="has-error"> </div>
                        </div>
                        <div class='form-group'>
								<label for="photo"
									class="col-sm-2 control-label col-xs-8 col-md-2">
									Attachment </label>
								

								<div class="col-sm-6">
									<div class="fileUpload btn btn-success form-control">
										 <input
											id="fileToUpload" type="file" class="upload" name="attachFile" />
									</div>
								</div>
								<span class="col-sm-4 control-label col-xs-6 col-md-4"> </span>
							</div>
                         <div class="pull-right">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Send</button>
                      </div>
                      </form>
                </div>
                
             </div>
             
      </div> 
    
  <script>
document.getElementById("attachment").onchange = function() {
    document.getElementById("uploadFile").value = this.value;
};
  </script>
  <!-- jQuery 3 -->
<jsp:include page="js.jsp" />
</body>
</html>