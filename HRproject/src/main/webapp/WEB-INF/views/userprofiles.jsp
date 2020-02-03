<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="_profile" value="active"/>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Profile</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

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
    
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Profile</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li class="nav-item text-left">
			    <form class="form-search" action="search" method="post">
                  <input name="name" placeholder="Type something" type="text" class="input-medium search-query">
                  <button type="submit" class="btn btn-square btn-theme">Search</button>
                </form>
			  </li>
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="index">Home</a><i class="icon-angle-right"></i></li>
              <li class="active">Profile</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            
                <p class="text-info"><small>${msg} ${sucess}</small></p>
                <ul class="nav nav-tabs bold">
                  <li class="active">
                  <a href="#one" data-toggle="tab">
                  <i class="icon-info-sign"></i> 
                  Pictures
                  </a></li>                  
                  <li class=""><a href="#three" data-toggle="tab">
                  Contact Info My 
                  </a></li>
                  <li class=""><a href="#two" data-toggle="tab">
                  <i class="font-icon-email"></i> Contact Me 
                  </a></li>
                  
                </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="one"> 
                  <ul id="thumbs" class="portfolio">
                  <!-- Item Project and Filter Name -->
                  <c:forEach var="item" items="${filenames}" >
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="${profiles.fname} ${profiles.lname}" href="static/img/users/${profiles.id}/${item}">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
                    <!-- Thumb Image and Description -->
                    <img src="static/img/users/${profiles.id}/${item}" alt="Tel. ${profiles.phone}"
                    style="height:130px; width: auto;">
                  </li>
                  </c:forEach>
                 
                </ul>
                           
                    
                  </div>
                  <div class="tab-pane" id="two">
                  <form action="dropaline" method="post" role="form" class="contactForm">
                  <div class="row">
		                <input type="hidden" name="from" value="${loggedInUser.email}" />
		                <input type="hidden" name="to" value="${profiles.email}">
                    	<input type="hidden" name="fromname" value="${loggedInUser.fname}">
		                <div class="span8 margintop10 form-group">
		                  <textarea class="form-control" name="message" rows="7" data-rule="required" data-msg="Please write something for me" placeholder="Message"></textarea>
		                  <p class="text-left">
		                    <button class="btn btn-large btn-theme margintop10" type="submit">Send message</button>
		                  </p>
		                </div>
		              </div>
		            </form>
                  </div>
                  <div class="tab-pane" id="three">
                  <div class="span6">
		            <c:if test="${not empty profiles.image}">
					<img src="static/img/users/${profiles.id}/profile/${profiles.image}" 
						style="border-radius: 50%; height:100px; width: auto;">
					</c:if>
					<p>
					${profiles.fname} ${profiles.lname}<br>
                     ${profiles.phone} <br>${profiles.email}
                     
		            </p>
		          </div>   
                   
                  </div>
                  
                  
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
