<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${not empty loggedInUser}">
<%response.sendRedirect("profile");%>
</c:if> 
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
  <title>Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

<!--   <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 -->
    <!-- Custom Fonts -->
    <link href="static1/css/bootstrap.css" rel="stylesheet" />
      
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
       <link href="static1/css/styles.css" rel="stylesheet" />
</head>
<body>




<div id="wrapper">
    
 <jsp:include page="header.jsp"/> 
    <!-- end header -->
    
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span6">
           <h3 style="color:#fed136;"class="text-center-green">${msg}</h3> 
           
         
			<form action="login" method="post" class="form-horizontal">
                  <h3 class="text-center">
                  <span class="text-success"> ${success}</span>
                  <span class="alert-error">${error}</span>
                  </h3>
                  <div class="control-group">
                    <label class="control-label" for="email">User Name</label>
                    <div class="controls">
                      <input type="email" name="email" id="user" placeholder="Username">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="password">Password</label>
                    <div class="controls">
                      <input type="password" name="password" id="pwd" placeholder="Password">
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <div class="controls">
                      <button type="submit" id="submiter" class="btn btn-warning">Sign in</button>  <br><br> <p><strong>If you don't have an account, please register below.</strong></p>  
                      <button class="btn btn-info"  ><a href="register" >Sign Up</a></button>
                    </div>
                    <p class="aligncenter margintop20">
                      Forgot password? <a href="#myReset" data-dismiss="modal" aria-hidden="true" data-toggle="modal">Reset</a>
                    </p>
                  </div>
                </form>
                
          </div>
          
        </div>
       
        
      </div>
    </section>
 <jsp:include page="footer.jsp"/> 
  </div>    <!-- wrapper -->
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

</body>
</html>