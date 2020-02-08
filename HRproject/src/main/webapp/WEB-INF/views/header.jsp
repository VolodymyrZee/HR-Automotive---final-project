
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link href="static1/css/styles.css" rel="stylesheet" />
<link href="static1/css/agency.css" rel="stylesheet" />
<link href="static1/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="static1/css/custom.css" rel="stylesheet">
<!-- Custom Fonts -->
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

<header>

	<div class="container">

		<div class="row nomargin">
			<div class="span12">
				<div class="headnav">
					<ul>
						<c:choose>
							<c:when test="${empty loggedInUser}">
								<li><a href="register"><i class="icon-user"></i>
										<h4></h4></a></li>

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
				<div id="mySignup" class="modal styled hide fade" tabindex="-1"
					role="dialog" aria-labelledby="mySignupModalLabel"
					aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 id="mySignupModalLabel">
							Create an <strong>account</strong>
						</h4>
					</div>


				</div>
				<!-- end signup modal -->
				<!-- Sign in Modal -->
				<div id="mySignin" class="modal styled hide fade" tabindex="-1"
					role="dialog" aria-labelledby="mySigninModalLabel"
					aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 id="mySigninModalLabel">
							Login to your <strong>account</strong>
						</h4>
					</div>
					<div class="modal-body">
						<form action="login" method="post" class="form-horizontal">
							<div class="control-group">
								<label class="control-label" for="email">Username</label>
								<div class="controls">
									<input type="text" id="email" name="email"
										placeholder="Username">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="password">Password</label>
								<div class="controls">
									<input type="password" id="password" name="password"
										placeholder="Password">
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="btn">
										<h4>Sign in</h4>
									</button>
								</div>
								<p class="aligncenter margintop20">
									Forgot password? <a href="#myReset" data-dismiss="modal"
										aria-hidden="true" data-toggle="modal">Reset</a>
								</p>
							</div>
						</form>
					</div>
				</div>
				<!-- end signin modal -->
				<!-- Reset Modal -->
				<div id="myReset" class="modal styled hide fade" tabindex="-1"
					role="dialog" aria-labelledby="myResetModalLabel"
					aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 id="myResetModalLabel">
							Reset your <strong>password</strong>
						</h4>
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
								<p class="aligncenter margintop20">We will send instructions
									on how to reset your password to your inbox</p>
							</div>
						</form>
					</div>
				</div>
				<!-- end reset modal -->
			</div>
		</div>
		<nav id="mainNav"
			class="navbar navbar-default navbar-custom navbar-fixed-top">
			<div class="container">

				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> Menu <i
							class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand page-scroll" href="index">HR Automotive
						Services</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">

					<ul class="nav navbar-nav navbar-center">
						<li class="hidden"><a href="#page-top"></a></li>






						<!-- <li>
                        <a class="page-scroll" href="login">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="register">Sign Up</a>
                    </li> -->


						<li><a class="page-scroll" href="index">HOME</a></li>
						<li><a class="page-scroll" href="services">Contact Us</a></li>

						<li><a class="page-scroll" href="about">About</a></li>
						<!-- <li>
                        <a class="page-scroll" href="#team">Team</a>
                    </li> -->
						



						<c:choose>
							<c:when test="${empty loggedInUser}">


								<!-- <li><a href="#mySignup" data-toggle="modal"><i class="icon-user"></i>Sign Up</a></li>
               -->
								<li><a href="login" class="page-scroll">Login</a></li>
								<li><a href="register" class="page-scroll">Sign Up</a></li>
							</c:when>
							<c:otherwise>
                              <c:if test="${loggedInUser.role eq 'ADMIN'}"> 
                              <li><a href="profile" class="page-scroll">My Profile</a></li>
                              <li><a class="page-scroll" href="users">Users</a></li>
                              <li><a href="logout" class="page-scroll">Logout</a></li>
                              
                              </c:if>
                              <c:if test="${loggedInUser.role eq 'USER'}">
								<li><a href="profile" class="page-scroll">My Profile</a></li>
								<li><a href="mycars" class="page-scroll">My Cars</a></li>
								
								<li><a href="logout" class="page-scroll">Logout</a></li>
								</c:if>
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