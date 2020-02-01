
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<header>
      <div class="container">
       
        <div class="row nomargin">
          <div class="span12">
            <div class="headnav">
              <ul>              
              <c:choose>
			  <c:when test="${empty loggedInUser}">			  
              <li><a href="register" ><i class="icon-user"></i><h4>Sign Up</h4></a></li>
              
              <!-- <li><a href="#mySignup" data-toggle="modal"><i class="icon-user"></i>Sign Up</a></li>
               -->
               <li><a href="#mySignin" data-toggle="modal"><h4>Sign in</h4></a></li>
              </c:when>
			  <c:otherwise>
			  <li><a href="logout"><h4>Logout</h4></a></li>
			  <li><a href="profile"><h4>My Profile</h4></a></li>
			  </c:otherwise>
			  </c:choose>
              </ul>
            </div>
            <!-- Signup Modal -->
            <div id="mySignup" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 id="mySignupModalLabel">Create an <strong>account</strong></h4>
              </div>
              <div class="modal-body">
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
                    <label class="control-label" for="repeatepass">Re-enter Password*</label>
                    <div class="controls">
                     <form:input type="password" path="repeatepass" placeholder="repeatepass" /> 
                    <div class="has-error">
					  <form:errors path="repeatepass" class="text-error"/>
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
              </div>
            </div>
            <!-- end signup modal -->
            <!-- Sign in Modal -->
            <div id="mySignin" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySigninModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
        <div class="row">
          <div class="span4">
            <div class="logo">
              <a href="index">
              </a>
              <a href="index"><h1>HR Automotive </h1></a>
            </div>
          </div>
          <div class="span8">
            <div class="navbar navbar-static-top">
              <div class="navigation">
                <nav>
                  <ul class="nav topnav">
                    <li class="dropdown">
                      <a href="index"><h3>Home </h3><i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu">
                        <li><a href="about">About</a></li>
                        <li><a href="services">Contact</a></li>
                      </ul>
                    </li>
                    <li>
                      <a href="about"><h3>About</h3> </a>
                    </li>                  
                    <li>
                      <a href="services"><h3>Contact</h3> </a>
                    </li>
                    <c:if test="${not empty loggedInUser}">
                      <li><a href="users"><h3>Users</h3></a></li>
                    </c:if>
                  </ul>
                </nav>
              </div>
              <!-- end navigation -->
            </div>
          </div>
        </div>
      </div>
    </header>