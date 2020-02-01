
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.io.*,java.util.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>About</title>

  <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Theme CSS -->
    <link href="static/css/agency.min.css" rel="stylesheet">
</head>

<body>
  <div id="wrapper">
   
    
     <jsp:include page="header.jsp"/> 
    
   
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>About us</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
             
              <li class="active">About us</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
         
          <div class="span6">
            <!-- start flexslider -->
            <div class="flexslider">
              <ul class="slides">
                <li>
                  <img src="static/img/works/full/image-01-full.jpg" alt="" />
                </li>
                <li>
                  <img src="static/img/works/full/image-02-full.jpg" alt="" />
                </li>
                <li>
                  <img src="static/img/works/full/image-03-full.jpg" alt="" />
                </li>
              </ul>
            </div>
            <!-- end flexslider -->
          </div>
        </div>
        <!-- divider -->
        <div class="row">
          <div class="span12">
            <div class="solidline">
            </div>
          </div>
        </div>
        <!-- end divider -->
        <div class="row">
          <div class="span12">
            <h4>Talented peoples behind Flattern</h4>
          </div>
          <div class="span3">
            <img src="static/img/dummies/team1.jpg" alt="" class="img-polaroid" />
            <div class="roles">
              <p class="lead">
                <strong>Vincent Austin Jr</strong>
              </p>
              <p>
                CEO - Founder
              </p>
            </div>
          </div>
          <div class="span3">
            <img src="static/img/dummies/team2.jpg" alt="" class="img-polaroid" />
            <div class="roles">
              <p class="lead">
                <strong>Tommy Laugher</strong>
              </p>
              <p>
                Lead designer
              </p>
            </div>
          </div>
          <div class="span3">
            <img src="static/img/dummies/team3.jpg" alt="" class="img-polaroid" />
            <div class="roles">
              <p class="lead">
                <strong>Gabirelle Borowski</strong>
              </p>
              <p>
                Customer support
              </p>
            </div>
          </div>
          <div class="span3">
            <img src="static/img/dummies/team4.jpg" alt="" class="img-polaroid" />
            <div class="roles">
              <p class="lead">
                <strong>Benny Strongton</strong>
              </p>
              <p>
                Coffee maker
              </p>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="span12">
            <div class="solidline">
            </div>
          </div>
        </div>
      
       
      </div>
    </section>
   <jsp:include page="footer.jsp"/> 
  </div>
  <a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>
  <script src="static/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js" integrity="sha384-mE6eXfrb8jxl0rzJDBRanYqgBxtJ6Unn4/1F7q4xRRyIw7Vdg9jP4ycT7x1iVsgb" crossorigin="anonymous"></script>

    <!-- Contact Form JavaScript -->
    <script src="static/js/jqBootstrapValidation.js"></script>
    <script src="static/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="static/js/agency.min.js"></script>

</body>

</html>
