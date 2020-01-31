
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Register</title>

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
   
    <!-- start header -->
   <%--  <jsp:include page="header.jsp"/> --%>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Login</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="index">Home</a><i class="icon-angle-right"></i></li>
              <li class="active">Register</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span6">
           <h3 class="text-center">${msg} 
           
           </h3> 
			<form:form action="${action}" modelAttribute="users" method="post" class="form-horizontal">
                  <h3 class="text-center">
                  <span class="text-success"> ${success}</span>
                  <span class="text-error text-center">${error}</span>
                  </h3>
                  <div class="control-group ${hidden}">
                    <label class="control-label" for="inputText">Email*</label>
                    <div class="controls">
                      <form:input type="hidden" path="id"/>
                      <form:input type="email" path="email" placeholder="Email"/>
                    <div class="has-error">
					  <form:errors path="email" class="text-error"/>
					</div>
                    </div>
                    
                  </div>
                  <div class="control-group ${hidden}">
                    <label class="control-label" for="password">Password*</label>
                    <div class="controls">
                     <form:input type="password" path="password" placeholder="Password" /> 
                    <div class="has-error">
					  <form:errors path="password" class="text-error"/>
					</div>
					</div>
                    
                  </div>
                  
                  <div class="control-group" ${hidden}>
                    <label class="control-label" for="repeatpassword">Re-enter Password*</label>
                    <div class="controls">
                     <form:input type="password" path="repeatpassword" placeholder="repeatpassword" /> 
                    <div class="has-error">
					  <form:errors path="repeatpassword" class="text-error"/>
					</div>
                    </div>
                    
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label" for="fname">First Name*</label>
                    <div class="controls">
                     <form:input path="fname" placeholder="First Name" /> 
                    <div class="has-error">
					  <form:errors path="fname" class="text-error"/>
					</div>
					</div>
                    
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label" for="lname">Last Name*</label>
                    <div class="controls">
                     <form:input path="lname" placeholder="Last Name" /> 
                    <div class="has-error">
					  <form:errors path="lname" class="text-error"/>
					</div>
					</div>
                    
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label" for="phone">Phone*</label>
                    <div class="controls">
                     <form:input path="phone" placeholder="Phone" /> 
                    <div class="has-error">
					  <form:errors path="phone" class="text-error"/>
					</div>
					</div>
                    
                  </div>
                  
                  <div class="control-group">
                    <div class="controls">
                      <button type="submit" id="submit" class="btn btn-danger">Submit</button>
                      <a href="login" class="btn btn-success">Cancel</a>
                    
                    </div>
                    
                  </div>
                </form:form>
                
          </div>
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
        
      </div>
    </section>
  <%-- <jsp:include page="footer.jsp"/> --%>
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

