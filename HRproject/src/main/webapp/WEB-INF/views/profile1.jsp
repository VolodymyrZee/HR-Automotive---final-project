<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="_profile" value="active"/>

<c:if test="${empty loggedInUser}">
<%-- <jsp:forward page="login.jsp"/>  --%>
<%response.sendRedirect("login");%>
</c:if>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Profile</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Home</title>

  <link href="static1/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<link href="static1/css/agency.min.css" rel="stylesheet">

<link href="static1/css/styles2.css" rel="stylesheet">
    <!-- Theme CSS -->
    <link href="static1/css/agency.min.css" rel="stylesheet">
    
    
    
    
    
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700" rel="stylesheet">
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
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="ico/favicon.png" />
    
    
    
  <style type="text/css">
        img {
		  border-radius: 50%;
		}
  </style>
</head>

<body>
  <div id="wrapper">
    
   <jsp:include page="header.jsp"/>
    
    <!-- end header -->
    <%-- <section id="inner-headline">
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
    </section> --%>
    <section class="bgr" id="content">
      <div class="container">
        <div class="row">
          <div class="span9">
            <h4>
            <c:if test="${not emptyloggedInUser.email}">
            <button type="button" class="btn btn-primary btn-rounded" data-toggle="modal" data-target="#addImages">
			 <i class="fas fa-plus"> Upload Images</i> 
			</button>
			</c:if>
            </h4>
                <p class="text-info"><small>${msg} ${sucess}</small></p>
                <ul class="nav nav-tabs bold">
                  <li class="active"><a href="#one" data-toggle="tab">
                  <i class="icon-info-sign"></i> Contact Info</a></li>
                  <li class=""><a href="#two" data-toggle="tab">
                  <i class="icon-pencil"></i>Update Profile</a></li>
                  <li class=""><a href="#three" data-toggle="tab"></a>
                  
                </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="one">                    
                    <p>
                    
                     ${loggedInUser.fname} ${loggedInUser.lname}<br>
                     ${loggedInUser.phone} <br>${loggedInUser.email}
                     
                    </p>
                  </div>
                  <div class="tab-pane" id="two">
                  <form:form action="editprofile" modelAttribute="profile" method="post" class="form-horizontal">
                  <h3 class="text-center">
                  <span class="text-success"> ${success}</span>
                  </h3>
                             
                  <div class="control-group">
                    <label class="control-label" for="fname">First Name*</label>
                    <div class="controls">
                     <form:input path="fname" value="${loggedInUser.fname}" placeholder="First Name" /> 
                     <form:input path="email" value="${loggedInUser.email}" type="hidden" /> 
                    
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label" for="lname">Last Name*</label>
                    <div class="controls">
                     <form:input path="lname" value="${loggedInUser.lname}" placeholder="Last Name" /> 
                    </div>                    
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label" for="phone">Phone*</label>
                    <div class="controls">
                     <form:input path="phone" value="${loggedInUser.phone}" placeholder="Phone" /> 
                    
					</div>
                    
                  </div>
                  
                  <div class="control-group">
                    <div class="controls">
                      <button type="submit" id="submit" class="btn btn-danger">Submit</button>
                    </div>
                    
                  </div>
                </form:form>
                  </div>
                  <div class="tab-pane" id="three">
                    <p>
                      Text in Profile that you can easily change in profile.jsp. Just go for it. 
                    </p>
                  </div>
                  
                  
          </div>
        </div>
        
        <div class="span3 text-center">
        
        <c:if test="${not empty loggedInUser.image}">
			<img src="static1/img/users/${loggedInUser.id}/profile/${loggedInUser.image}" 
				alt="Profile Image" style="height:150px; width: auto;">
		</c:if>	
			<span class="text-danger text-center">${error}</span>  
			<c:if test="${not empty loggedInUser.image}">
				<a  href="#" data-toggle="modal" data-target="#add-images" class="btn btn-danger">
				Change Photo <i class="fa fa-pencil"></i></a>
			</c:if>
			<c:if test="${empty loggedInUser.image}">
			<a  href="#" data-toggle="modal" data-target="#add-images" 
			class="btn btn-danger">
			Add Image</a>
			</c:if>
			 
          </div>
        
       </div>
      </div>
    </section>
    <%--  <jsp:include page="footer.jsp"/> --%>
  </div>
  
  <div id="add-images" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="text-center" id="mySignupModalLabel">Add <strong>Pictures</strong></h4>
              </div>
              <div class="modal-body">                 
	                 <form enctype="multipart/form-data" action="addimages" method="POST" class="form-horizontal">
		              <div class="control-group">
	                    
	                    <div class="controls">
	                    <label>Please select:</label>
	                    <input type="hidden" name="id" value="${loggedInUser.id}">
	                    <input id="file" type="file" id="two" name="file" >
	                    </div>
	                    </div>
	                  
	                  <div class="control-group">
	                    <div class="controls">
	                      <button type="submit" class="btn">Upload</button>
	                    </div>
	                  </div>
	                </form>
              </div>
              </div>
              
               
  <div id="addImages" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="text-center" id="mySignupModalLabel">Add <strong>Pictures</strong></h4>
              </div>
              <div class="modal-body">                 
	                 <form enctype="multipart/form-data" action="uploadMultipleFiles" method="POST" class="form-horizontal">
		              <div class="control-group">
	                    <div class="controls">
	                    <label>Please select:</label>
	                    <input id="fileInput" type="file" id="one" name="uploadingFiles" multiple required>
	                    </div>
	                    <div class="controls">
	                    <label>Please select:</label>
	                    <input id="fileInput" type="file" id="two" name="uploadingFiles" multiple>
	                    </div>
	                    <div class="controls">
	                    <label>Please select:</label>
	                    <input id="fileInput" type="file" id="three" name="uploadingFiles" multiple>
	                    </div>
	                    <div class="controls">
	                    <label>Please select:</label>
	                    <input id="fileInput" type="file" id="four" name="uploadingFiles" multiple>
	                    </div>
	                    <div class="controls">
	                    <label>Please select:</label>
	                    <input id="fileInput" type="file" id="five" name="uploadingFiles" multiple>
	                    <input type="hidden" name="id" value="${loggedInUser.id}">
	                    </div>
	                    </div>
	                  
	                  <div class="control-group">
	                    <div class="controls">
	                      <button type="submit" class="btn">Upload</button>
	                    </div>
	                  </div>
	                </form>
              </div>
            </div>
            <section id="content">
             <jsp:include page="footer.jsp"/> 
             </section>
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
  <script src="static/js/jquery.flexslider.js"></script>
  <script src="static/js/jquery.nivo.slider.js"></script>
  <script src="static/js/modernizr.custom.js"></script>
  <script src="static/js/jquery.ba-cond.min.js"></script>
  <script src="static/js/jquery.slitslider.js"></script>
  <script src="static/js/animate.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="static1/js/custom.js"></script>
</body>

</html>
