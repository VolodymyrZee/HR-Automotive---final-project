<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="_profile" value="active" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />



<!-- css -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700"
	rel="stylesheet">
<link href="static/css/bootstrap.css" rel="stylesheet" />
<link href="static/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="static/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="static/css/jcarousel.css" rel="stylesheet" />
<link href="static/css/flexslider.css" rel="stylesheet" />
<link href="static/css/style.css" rel="stylesheet" />
<!-- Theme skin -->
<link href="static/skins/default.css" rel="stylesheet" />
<!-- boxed bg -->
<link id="bodybg" href="bodybg/bg1.css" rel="stylesheet" type="text/css" />
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="ico/favicon.png" />




</head>

<body>
	<div id="wrapper">

		<jsp:include page="header.jsp" />

		<!-- end header -->
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="span4">
						<div class="">
							<h2>Profile</h2>
						</div>
					</div>
					<div class="span18">
						<ul class="breadcrumb">
							<li class="">
								<form class="form-search" action="search" method="post">
									<input name="name" placeholder="Type something" type="text"
										class="input-medium search-query">
									<button type="submit" class="btn ">Search</button>
								</form>
							</li>

						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="span12">

						<p class="text-info">
							<small>${msg} ${sucess}</small>
						</p>
						<ul class="nav nav-tabs bold">

							<li class="active"><a href="#one" data-toggle="tab"> Car
									Services </a></li>
							<li class=""><a href="#three" data-toggle="tab"> Contact
									Info </a></li>
							<li class=""><a href="#two" data-toggle="tab"> <i
									class="font-icon-email"></i> Contact ${profiles.fname}
									${profiles.lname}
							</a></li>
						</ul>
						<div class="tab-content">

							<div class="tab-pane" id="two">
								<form action="dropaline" method="post" role="form"
									class="contactForm">
									<div class="row">
										<input type="hidden" name="from" value="${loggedInUser.email}" />
										<input type="hidden" name="to" value="${profiles.email}">
										<input type="hidden" name="fromname"
											value="${loggedInUser.fname}">
										<div class="span8 margintop10 form-group">
											<textarea class="form-control" name="message" rows="7"
												data-rule="required"
												data-msg="Please write something for me"
												placeholder="Message"></textarea>
											<p class="text-left">
												<button class="btn btn-large btn-theme margintop10"
													type="submit">Send message</button>
											</p>
										</div>
									</div>
								</form>
							</div>
							<div class="tab-pane" id="three">
								<div class="span6">

									<p>
										${profiles.fname} ${profiles.lname}<br> ${profiles.phone}
										<br>${profiles.email}

									</p>
								</div>

							</div>



							<div class="" id="one">
								<section id="content">
									<div class="container">
										<!-- Default table -->
										<div class="row">
											<div class="span12">
												<h4>Services List ${msg} ${sucess}</h4>
												<table class="table table-striped">
													<thead>
														<tr>

															<th>Car</th>
															<th>Service Description</th>
															<th>Service Request Date</th>


															<th>Status</th>
															<c:if test="${loggedInUser.role eq 'ADMIN'}">
																<th>Action</th>
															</c:if>


														</tr>
													</thead>
													<tbody>
														<c:forEach var="item" items="${carServices}">
															<tr>

																<td><strong>${item.serviceCar.make} <br />
																		${item.serviceCar.model} ${item.serviceCar.year}
																</strong></td>

																<td><strong>${item.serviceDescription}</strong></td>
																<td><strong>${item.serviceRequestDate}</strong></td>
																<td><strong>${item.serviceCompleted == true? "Completed on ".concat(item.serviceFulfillmentDate) : "Not Completed" }</strong></td>
																<c:if test="${loggedInUser.role eq 'ADMIN'}">
																	<td><c:if test="${item.serviceCompleted == false}">
																			<form action="completecarservice" method="post">
																				<input type="hidden" name="serviceId"
																					value="${item.id}" />
																				<button type="submit" class="btn btn-warning">Complete</button>
																			</form>
																		</c:if></td>
																</c:if>
															</tr>
														</c:forEach>

													</tbody>
												</table>
											</div>

										</div>


									</div>
								</section>


							</div>
						</div>


					</div>
				</div>
			</div>
		</section>
		<jsp:include page="footer.jsp" />
	</div>




	<script src="static/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"
		integrity="sha384-mE6eXfrb8jxl0rzJDBRanYqgBxtJ6Unn4/1F7q4xRRyIw7Vdg9jP4ycT7x1iVsgb"
		crossorigin="anonymous"></script>

	<!-- Contact Form JavaScript -->
	<script src="static/js/jqBootstrapValidation.js"></script>
	<script src="static/js/contact_me.js"></script>

	<!-- Theme JavaScript -->
	<script src="static/js/agency.min.js"></script>
	<script src="static/js/jquery.js"></script>
	<script src="static/js/jquery.easing.1.3.js"></script>
	<script src="static/js/bootstrap.js"></script>
	<script src="static/js/jcarousel/jquery.jcarousel.min.js"></script>
	<script src="static/js/jquery.fancybox.pack.js"></script>
	<script src="static/js/jquery.fancybox-media.js"></script>
	<script src="static/js/google-code-prettify/prettify.js"></script>
	<script src="static/js/portfolio/jquery.quicksand.js"></script>
	<script src="static/js/portfolio/setting.js"></script>
	<script src="static/js/jquery.flexslider.js"></script>
	<script src="static/js/jquery.nivo.slider.js"></script>
	<script src="static/js/modernizr.custom.js"></script>
	<script src="static/js/jquery.ba-cond.min.js"></script>
	<script src="static/js/jquery.slitslider.js"></script>
	<script src="static/js/animate.js"></script>

	<!-- Template Custom JavaScript File -->
	<script src="static/js/custom.js"></script>
</body>

</html>
