
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

 <link href="static1/css/styles.css" rel="stylesheet" />
 <link href="static1/css/agency.css" rel="stylesheet" />
   <link href="static1/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="static1/css/custom.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Theme CSS -->
    <link href="static1/css/agency.min.css" rel="stylesheet">
    
<header>

      <div class="container">
       
        <div class="row nomargin">
          <div class="span12">
            <div class="headnav">
              <ul>              
              <c:choose>
			  <c:when test="${empty loggedInUser}">			  
              <li><a href="register" ><i class="icon-user"></i><h4></h4></a></li>
              
              <!-- <li><a href="#mySignup" data-toggle="modal"><i class="icon-user"></i>Sign Up</a></li>
               -->
               <li><a href="#mySignin" data-toggle="modal"><h4></h4></a></li>
              </c:when>
			  <c:otherwise>
			  <li><a href="logout"><h4></h4></a></li>
			  <li><a href="profile"><h4></h4></a></li>
			  </c:otherwise>
			  </c:choose>
              </ul>
            </div>
            <!-- Signup Modal -->
            <div id="mySignup" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                <h4 id="mySignupModalLabel">Create an <strong>account</strong></h4>
              </div>
              <!-- <div class="modal-body"> -->
                <%-- <form:form action="register" modelAttribute="user" method="post" class="form-horizontal">
                  
                  <div class="control-group">
                    <label class="control-label" for="inputText">Email*</label>
                    <div class="controls">
                      <form:input type="email" path="email" placeholder="Email"/>
                    <div class="has-error">
					  <form:errors path="email" class="text-error"/>
					</div>
                    </div>
                    
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="password">Password*</label>
                    <div class="controls">
                     <form:input type="password" path="password" placeholder="Password" /> 
                    <div class="has-error">
					  <form:errors path="password" class="text-error"/>
					</div>
					</div>
                    
                  </div>
                  
                  <div class="control-group">
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
                </form:form> --%>
              <!-- </div> -->
            </div>
            <!-- end signup modal -->
            <!-- Sign in Modal -->
            <div id="mySignin" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySigninModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                <h4 id="mySigninModalLabel">Login to your <strong>account</strong></h4>
              </div>
              <div class="modal-body">
                <form action="login" method="post" class="form-horizontal">
                  <div class="control-group">
                    <label class="control-label" for="email">Username</label>
                    <div class="controls">
                      <input type="text" id="email" name="email" placeholder="Username">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="password">Password</label>
                    <div class="controls">
                      <input type="password" id="password" name="password" placeholder="Password">
                    </div>
                  </div>
                  <div class="control-group">
                    <div class="controls">
                      <button type="submit" class="btn"><h4>Sign in</h4></button>
                    </div>
                    <p class="aligncenter margintop20">
                      Forgot password? <a href="#myReset" data-dismiss="modal" aria-hidden="true" data-toggle="modal">Reset</a>
                    </p>
                  </div>
                </form>
              </div>
            </div>
            <!-- end signin modal -->
            <!-- Reset Modal -->
            <div id="myReset" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="myResetModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                <h4 id="myResetModalLabel">Reset your <strong>password</strong></h4>
              </div>
              <div class="modal-body">
                <form action="resetcode" class="form-horizontal" method="post">
                  <div class="control-group">
                    <label class="control-label" for="inputResetEmail">Email</label>
                    <div class="controls">
                      <input type="text" name="inputResetEmail" placeholder="Email">
                    </div>
                  </div>
                  <div class="control-group">
                    <div class="controls">
                      <button type="submit" class="btn">Reset password</button>
                    </div>
                    <p class="aligncenter margintop20">
                      We will send instructions on how to reset your password to your inbox
                    </p>
                  </div>
                </form>
              </div>
            </div>
            <!-- end reset modal -->
          </div>
        </div>
        <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">

          <!-- <div class="hidden-top">
                <div class="hidden-top-inner container">
                  <div class="row">
                    <div class="span12">
                      <ul>
                        <li color: "yellow";><strong>We are available for any custom works this month</strong></li>
                        <li>Main office: Springville center X264, Park Ave S.01</li>
                        <li>Call us <i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div> -->

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="index" >HR Automotive Services</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               
                <ul class="nav navbar-nav navbar-center">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
               
                    
              
              
          
                    
                    <!-- <li>
                        <a class="page-scroll" href="login">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="register">Sign Up</a>
                    </li> -->
                    
                    
                    <li>
                        <a class="page-scroll" href="index">HOME</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="services">Services</a>
                    </li>
                   
                    <li>
                        <a class="page-scroll" href="about">About</a>
                    </li>
                    <!-- <li>
                        <a class="page-scroll" href="#team">Team</a>
                    </li> -->
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                    
                   
                                
              <c:choose>
			  <c:when test="${empty loggedInUser}">			  
             
              
              <!-- <li><a href="#mySignup" data-toggle="modal"><i class="icon-user"></i>Sign Up</a></li>
               -->
               <li><a href="login" class="page-scroll">Login</a></li>
                <li><a href="register" class="page-scroll">Sign Up</a></li>
              </c:when>
			  <c:otherwise>
			  
			  <li><a href="profile" class="page-scroll">My Profile</a></li>'
			  <li><a href="logout" class="page-scroll">Logout</a></li>
			  </c:otherwise>
			  </c:choose>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

      </div>
    </header>