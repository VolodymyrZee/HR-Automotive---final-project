<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>404</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />


<!--   <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 -->
    <!-- Custom Fonts -->
    <link href="static1/css/bootstrap.css" rel="stylesheet" />
      <link href="static1/css/style2.css" rel="stylesheet" />
        <link href="static1/css/flexslider.css" rel="stylesheet" />
        <link href="static1/css/bootstrap-responsive.css" rel="stylesheet" />
        <link href="static1/css/jcarousel.css" rel="stylesheet" />
      
    
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Theme CSS -->
    <link href="static1/css/agency.min.css" rel="stylesheet">

</head>

<body>
  <div id="wrapper">
   
  <jsp:include page="header.jsp"/> 
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>404</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Pages</a><i class="icon-angle-right"></i></li>
              <li class="active">404 Error page</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <h2 class="aligncenter">404 Error not found</h2>
				<p class="aligncenter">
				<spring:message code="exeption.err"/>
				</p>
			</div>
		</div>
	</div>
	</section>
	
			 <jsp:include page="footer.jsp"/> 
</div>
<a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>

<script src="static1/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="static1/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js" integrity="sha384-mE6eXfrb8jxl0rzJDBRanYqgBxtJ6Unn4/1F7q4xRRyIw7Vdg9jP4ycT7x1iVsgb" crossorigin="anonymous"></script>

    <!-- Contact Form JavaScript -->
    <script src="static1/js/jqBootstrapValidation.js"></script>
    <script src="static1/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="static1/js/agency.min.js"></script>
    
    
    
    <script src="static/js/jquery.js"></script>
<script src="static/js/jquery.easing.1.3.js"></script>
<script src="static/js/bootstrap.js"></script>
<script src="static/js/jcarousel/jquery.jcarousel.min.js"></script>
<script src="static/js/jquery.fancybox.pack.js"></script>
<script src="static/js/jquery.fancybox-media.js"></script>
<script src="static/js/google-code-prettify/prettify.js"></script>
<script src="static/js/portfolio/jquery.quicksand.js"></script>
<script src="static/js/portfolio/setting.js"></script>
<script src="static/js/tweet/jquery.tweet.js"></script>
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
