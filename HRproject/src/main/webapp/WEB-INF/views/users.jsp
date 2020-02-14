<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.io.*,java.util.*"%>

<c:if test="${empty loggedInUser}">
	<%
		response.sendRedirect("login");
	%>
</c:if>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>users</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />



<link
	href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700"
	rel="stylesheet">
<link href="static/css/bootstrap.css" rel="stylesheet" />
<link href="static/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="static/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="static/css/jcarousel.css" rel="stylesheet" />
<link href="static/css/flexslider.css" rel="stylesheet" />
<link href="static/css/style.css" rel="stylesheet" />
<!-- Theme skin -->
<link href="static/skins/default.css" rel="stylesheet" />
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="static/ico/favicon.png" />

<style type="text/css">
img {
	border-radius: 50%;
}
</style>
</head>

<body>
	<div id="wrapper">

		<jsp:include page="header.jsp" />
		<!-- end header -->
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="span4">
						<div class="">
							<h2>Users</h2>
						</div>
					</div>
					<div class="span18">
						<ul class="breadcrumb">
							<li class="">
								<form class="form-search" action="search" method="post">
									<input name="name" placeholder="Type something" type="text"
										class="">
									<button type="submit" class="btn ">Search</button>
								</form>
							</li>



						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<!-- Default table -->
				<div class="row">
					<div class="span12">
						<h4>User Lists ${msg} ${sucess}</h4>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>#</th>

									<th></th>
									<th>Email</th>
									<th>Phone</th>
									<c:if test="${loggedInUser.role eq 'ADMIN'}">
										<th>Role</th>
										<th>Action</th>
									</c:if>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${users}">
									<tr>
										<td>${users.indexOf(item)+1}.</td>

										<td><strong> <a href="userprofile?id=${item.id}"
												style="color: black">${item.fname} ${item.lname} </a></strong></td>
										<td>${item.email}</td>
										<td>${item.phone}</td>
										<c:if test="${loggedInUser.role eq 'ADMIN'}">
											<td>
												<form method="POST" action="editrole">
													<input type="hidden" name="id" value="${item.id}" /> <select
														onchange="this.form.submit()" name="role"
														class="form-control">
														<option value="${item.role}">${item.role}</option>
														<option value="USER">USER</option>
														<option value="DBA">DBA</option>
														<option value="ADMIN">ADMIN</option>
													</select>
												</form>
											</td>
											<td><a href="update?id=${item.id}" class="text-success">
													<i class="glyphicon glyphicon-edit"></i>
											</a> <a href="delete?id=${item.id}" style="color: red"
												onclick="confirmed(); return false;"> <i
													class="icon-remove"></i></a></td>
										</c:if>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

				</div>
				<!-- divider -->
				<div class="row">
					<div class="span12">
						<div class="solidline"></div>
					</div>
				</div>
				<!-- end divider -->


			</div>
		</section>

	</div>

	<jsp:include page="footer.jsp" />



	<!-- <script src="static/vendor/jquery/jquery.min.js"></script>

    Bootstrap Core JavaScript
    <script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>

    Plugin JavaScript
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js" integrity="sha384-mE6eXfrb8jxl0rzJDBRanYqgBxtJ6Unn4/1F7q4xRRyIw7Vdg9jP4ycT7x1iVsgb" crossorigin="anonymous"></script>

    Contact Form JavaScript
    <script src="static/js/jqBootstrapValidation.js"></script>
    <script src="static/js/contact_me.js"></script>

    Theme JavaScript
    <script src="static/js/agency.min.js"></script>
     -->

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
	<script src="static/js/custom.js"></script>


	<script>
		function confirmed() {
			if (confirm('You are about to delete, Do you want to proceed?')) {
				document.getElementById("del").submit();
				return true;
			} else {
				return false;
			}
		}

		$("#searchnow").keyup(function() {
			var value = this.value.toLowerCase().trim();

			$("table tr").each(function(index) {
				if (!index)
					return;
				$(this).find("td").each(function() {
					var id = $(this).text().toLowerCase().trim();
					var not_found = (id.indexOf(value) == -1);
					$(this).closest('tr').toggle(!not_found);
					return not_found;
				});
			});
		});
	</script>

</body>

</html>
