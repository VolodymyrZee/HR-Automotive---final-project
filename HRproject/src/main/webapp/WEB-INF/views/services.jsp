
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Services</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<!--   <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 -->
<!-- Custom Fonts -->
<link href="static1/css/bootstrap.css" rel="stylesheet" />
<link href="static1/css/styles.css" rel="stylesheet" />
<link href="static/css/flexslider.css" rel="stylesheet" />
<link href="static/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="static/css/jcarousel.css" rel="stylesheet" />


<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Theme CSS -->
<link href="static1/css/agency.min.css" rel="stylesheet">

</head>

<body>

	<div id="wrapper">
		<jsp:include page="header.jsp" />


           

		<section id="content">
			<iframe
				src="https://maps.google.com/maps?q=HR%20Automotive%20st%20louis&t=&z=13&ie=UTF8&iwloc=&output=embed"
				width="100%" height="650" frameborder="0" style="border: 0"
				allowfullscreen></iframe>
			
			<!-- div class="mapouter"><div class="gmap_canvas"><iframe width="1080" height="642" id="gmap_canvas" src="https://maps.google.com/maps?q=HR%20Automotive%20st%20louis&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{position:relative;text-align:right;height:642px;width:1080px;}.gmap_canvas {overflow:hidden;background:none!important;height:642px;width:1080px;}</style></div> -->
		</section>
		<section id="content">

			<div class="container">
				<div class="row">
					<div class="span12">
						<h4>
							<span style="padding-left:315px; padding-bottom:85px">${msg}</span> <strong>contact form below</strong>
						</h4>

						<form action="sendemail" method="post" role="form"
							class="contactForm">
							<div id="sendmessage"></div>
							<div id="errormessage"></div>

							<div class="row">
								<div class="span4 form-group">
									<input type="text" name="name" class="form-control" id="name"
										placeholder="Your Name" data-rule="minlen:4"
										data-msg="Please enter at least 4 chars" />
									<div class="validation"></div>
								</div>
								<div class="span4 form-group">
									<input type="email" class="form-control" name="email"
										id="email" placeholder="Your Email" data-rule="email"
										data-msg="Please enter a valid email" />
									<div class="validation"></div>
								</div>
								<div class="span4 form-group">
									<input type="text" class="form-control" name="subject"
										id="subject" placeholder="Subject" data-rule="minlen:4"
										data-msg="Please enter at least 8 chars of subject" />
									<div class="validation"></div>
								</div>
								<div class="span12 margintop10 form-group">
									<textarea class="form-control" name="message" rows="7"
										data-rule="required" data-msg="Please write something for us"
										placeholder="Message"></textarea>
									<div class="validation"></div>
									<p class="text-center">
										<button class="btn "
											type="submit">Submit message</button>
									</p>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>


	</div>

	<jsp:include page="footer.jsp" />
	<a href="#" class="scrollup"><i
		class="icon-chevron-up icon-square icon-32 active"></i></a>

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


	<!-- Contact Form JavaScript File -->
	<script src="contactform/contactform.js"></script>

	<!-- Template Custom JavaScript File -->
	<script src="static/js/custom.js"></script>

</body>

</html>
