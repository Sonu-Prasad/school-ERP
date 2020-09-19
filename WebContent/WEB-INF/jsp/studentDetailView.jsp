<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

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
		<section class="content-header"> <!-- /.col -->
		<div class="col-md-12">
			<!-- Widget: user widget style 1 -->
			<div class="box box-widget widget-user">
				<!-- Add the bg color to the header using any of the bg-* classes -->
				<div class="widget-user-header bg-aqua-active">
					<h3 class="widget-user-username">${studentInfo.name }</h3>
					<h5 class="widget-user-desc">Founder &amp; CEO</h5>
				</div>
				<div class="widget-user-image">
					<img class="img-circle"
						src=${studentInfo.img}
						alt="User Avatar">
				</div>
				<div class="box-footer">
					<div class="row">
						<div class="nav-tabs-custom2">
							<ul class="nav nav-tabs" style="padding-left: 30px">
								<li class="active"><a data-toggle="tab" href="#personal">Personal</a></li>
								<li class=""><a data-toggle="tab" href="#parential">Parent</a></li>
								<li class=""><a data-toggle="tab" href="#stu_attendance">Attendance</a></li>
								<li class=""><a data-toggle="tab" href="#stu_course">Courses</a></li>
								<li class=""><a data-toggle="tab" href="#stu_facility">Facility</a></li>
								<li class=""><a data-toggle="tab" href="#stu_document">Documents</a></li>
								<li class=""><a data-toggle="tab" href="#stu_invoice">Fees</a></li>
								<li class=""><a data-toggle="tab" href="#stu_address">Address</a></li>
								<li class=""><a data-toggle="tab" href="#stu_transport">Transport</a></li>

							</ul>


							<div class="tab-content text-justify"
								style="text-align: justify; padding-left: 50px">
								<div id="personal" class="tab-pane active">

									<div class="panel-body profile-view-dis">
										<div class="inbox">
											<h1 class="text-center">Personal Information</h1>

											<div class="row pad_left">
											
                                               <div class="profile-view-tab col-md-6">

													<p>
														<span class="text_dark">Class </span>: ${studentInfo.clas }
													</p>
													<hr>

												</div>
                                               
												<div class="profile-view-tab col-md-6">

													<p>
														<span class="text_dark">Roll </span>:
													</p>
													<hr>

												</div>

												<div class="profile-view-tab col-md-6">

													<p>
														<span class="text_dark">Section </span>: B
													</p>
													<hr>

												</div>

												<div class="profile-view-tab col-md-6">

													<p>
														<span class="text_dark">Date of Birth </span>:
														${studentInfo.sdob }
													</p>
													<hr>

												</div>

												<div class="profile-view-tab col-md-6">

													<p>
														<span class="text_dark">Gender </span>:
														${studentInfo.gender }
													</p>
													<hr>

												</div>

												<div class="profile-view-tab col-md-6">

													<p>
														<span class="text_dark">Religion </span>:
														${studentInfo.relogion }
													</p>
													<hr>

												</div>

												<div class="profile-view-tab col-md-6">

													<p>
														<span class="text_dark">Email </span>: ${studentInfo.email }
													</p>
													<hr>

												</div>

												<div class="profile-view-tab col-md-6">

													<p>
														<span class="text_dark">Phone </span>: 7250797399
													</p>
													<hr>

												</div>

												

												<div class="profile-view-tab col-md-6">

													<p>
														<span class="text_dark">Username </span>:
														${studentInfo.name }
													</p>
													<hr>

												</div>


											</div>
										</div>
									</div>
								</div>
								<!-- parrents detail -->
								<div id="parential" class="tab-pane ">
									<div class="panel-body profile-view-dis">
										<div class="inbox">
											<h1>Parent Information</h1>

											<div class="row pad_left">
												<div class="col-md-6">

													<p>
														<span class="text_dark">Father's Name </span>: ${parent.fname }
														
													</p>
													<hr>

												</div>

												<div class="col-md-6">

													<p>
														<span class="text_dark">Mother's Name </span>: ${parent.mname }
														
													</p>
													<hr>

												</div>

												<div class="col-md-6">

													<p>
														<span class="text_dark">Father's Profession </span>: ${parent.fprofession }
													</p>
													<hr>

												</div>

												<div class="col-md-6">

													<p>
														<span class="text_dark">Mother's Profession </span>: ${parent.mprofession }
													</p>
													<hr>

												</div>

												<div class="col-md-6">

													<p>
														<span class="text_dark">Father's Email-Id </span>:
														${parent.femail }
													</p>
													<hr>

												</div>
												<div class="col-md-6">

													<p>
														<span class="text_dark">mother's Email-Id </span>:
														${parent.memail }
													</p>
													<hr>

												</div>
												<div class="col-md-6">

													<p>
														<span class="text_dark">father's Phone No </span>: ${parent.fmobileno }
													</p>
													<hr>

												</div>
												<div class="col-md-6">

													<p>
														<span class="text_dark">mother's Phone No </span>: ${parent.mmobileno }
													</p>
													<hr>

												</div>
												

											</div>
										</div>
									</div>
								</div>



								<!-- end parrents detail -->
								
								<!-- attendance -->
								<div id="stu_attendance" class="tab-pane ">
									<div class="panel-body profile-view-dis">
										<div class="inbox">
											<h1>Attendance Sheet Information</h1>

											<div class="row pad_left">
											<div class="box-body" style="overflow-x:auto;" id="printableArea">
                                         <table class="table table-striped table-bordered table-hover dataTable no-footer">
                                           <thead>
                                             <tr>
                                             <th class="col-xs-1">Month/Day</th>
                                             <c:forEach var = "i" begin = "1" end = "31">
                                                  <th class="col-xs-1"><c:out value = "${i}"/></th>
										        
										      </c:forEach>
												
				               				 </tr>
				               				  
                						</thead>
                						<tbody>
                						<tr>

                                        <th>April</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                						<th>May</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>Jun</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>July</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>August</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>September</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>October</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>November</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>December</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>January</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>Feb</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>March</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                                    <th>April</th>

                                        <td class='att-bg-color' data-title='1' ></td><td class='att-bg-color' data-title='2' ></td><td class='att-bg-color' data-title='3' ></td><td class='att-bg-color' data-title='4' ></td><td class='att-bg-color' data-title='5' ></td><td class='att-bg-color' data-title='6' ></td><td class='att-bg-color' data-title='7' ></td><td class='att-bg-color' data-title='8' ></td><td class='att-bg-color' data-title='9' ></td><td class='att-bg-color' data-title='10' ></td><td class='att-bg-color' data-title='11' ></td><td class='att-bg-color' data-title='12' ></td><td class='att-bg-color' data-title='13' ></td><td class='att-bg-color' data-title='14' ></td><td class='att-bg-color' data-title='15' ></td><td class='att-bg-color' data-title='16' ></td><td class='att-bg-color' data-title='17' ></td><td class='att-bg-color' data-title='18' ></td><td class='att-bg-color' data-title='19' ></td><td class='att-bg-color' data-title='20' ></td><td class='att-bg-color' data-title='21' ></td><td class='att-bg-color' data-title='22' ></td><td class='att-bg-color' data-title='23' ></td><td class='att-bg-color' data-title='24' ></td><td class='att-bg-color' data-title='25' ></td><td class='att-bg-color' data-title='26' ></td><td class='att-bg-color' data-title='27' ></td><td class='att-bg-color' data-title='28' ></td><td class='att-bg-color' data-title='29' ></td><td class='att-bg-color' data-title='30' ></td><td class='att-bg-color' data-title='31' ></td>
                                    </tr>
                						</tbody>
                						</table>
                						</div>
											</div>
										</div>												
									</div>
								</div>
								
								<!-- attendance -->
								
								<!-- start address -->
								<div id="stu_address" class="tab-pane ">
									<div class="panel-body profile-view-dis">
										<div class="inbox">
											<h1>Address Information</h1>

											<div class="row pad_left">
												<div class="col-md-6">

													<p>
														<span class="text_dark">village/Mohallah </span>: ${studentInfo.address.home }
														
													</p>
													<hr>

												</div>

												<div class="col-md-6">

													<p>
														<span class="text_dark">Post-office </span>: ${studentInfo.address.post }
														
													</p>
													<hr>

												</div>

												

												<div class="col-md-6">

													<p>
														<span class="text_dark">police-station</span>: ${studentInfo.address.ps }
													</p>
													<hr>

												</div>

												<div class="col-md-6">

													<p>
														<span class="text_dark">Dist </span>:
														${studentInfo.address.dist }
													</p>
													<hr>

												</div>
												<div class="col-md-6">

													<p>
														<span class="text_dark">state </span>: ${studentInfo.address.state}
														
													</p>
													<hr>

												</div>
												<div class="col-md-6">

													<p>
														<span class="text_dark">pin-code </span>: ${studentInfo.address.pin }
													</p>
													<hr>

												</div>
																							</div>
										</div>
									</div>
								</div>
								
								<!-- address -->
								
								<!-- start fee body -->
								<div id="stu_invoice" class="tab-pane ">
									<div class="panel-body profile-view-dis">
										<div class="inbox">
										
										 <div class="row col-md-12"
			style="overflow-x: auto;border:1px solid black;">
			
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
								<!-- end fee body -->
							</div>
							<!-- /.row -->
						</div>
					</div>
					<!-- /.widget-user -->
				</div>
			</div>
		</section>

	</div>


	<!-- jQuery 3 -->
	<jsp:include page="js.jsp" />
</body>
</html>