<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="_profile" value="active" />

<c:if test="${empty loggedInUser}">
	<%-- <jsp:forward page="login.jsp"/> --%>
	<%
		response.sendRedirect("login");
	%>
</c:if>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- css -->
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
<!-- boxed bg -->
<link id="bodybg" href="bodybg/bg1.css" rel="stylesheet" type="text/css" />
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="ico/favicon.png" />

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
						<div class="inner-heading">
							<h2>Profile</h2>
						</div>
					</div>
					<c:if test="${loggedInUser.role eq 'ADMIN'}">
						<form class="form-search" action="search" method="post">
							<input name="name" placeholder="Type something" type="text"
								class="input-medium search-query">
							<button type="submit" class="btn btn-square btn-theme">Search</button>
						</form>
					</c:if>

				</div>
			</div>
		</section>
		<section id="content">
			<div>
				<%-- <div class="row">
					<c:forEach var="car" items="${cars}">
						<div class="span4">
							<h3>${car.year} ${car.make} ${car.model} </h3>
						</div>
					</c:forEach>


				</div> --%>
				<section id="content">
      <div class="container">
        <!-- Default table -->
        <div class="row">
          <div class="span12">
            <h4>Car Lists
            ${msg} ${sucess}
            </h4>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Year</th>
                  <th>Make</th>
                  <%-- <c:if test="${loggedInUser.role eq 'ADMIN'}">  </c:if>    --%>            
                  <th>Model</th>
                  <th>Color</th>
                   <th>License Plate</th>
                                 
                </tr>
              </thead>
              <tbody>
                <c:forEach var="item" items="${cars}" >
                <tr>
                  <td>
                    ${cars.indexOf(item)+1}.
                  </td>            
                  
                  <td>
                  ${item.year}
                 
                  </td>
                  <td>
                      ${item.make}
                  </td>
                  <td>
                    ${item.model}
                  </td>
                  <td>
                    ${item.color}
                  </td>
                  <td>
                    ${item.licensePlate}
                  </td>
                 
                </tr>
                </c:forEach>
                
              </tbody>
            </table>
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

			</div>
		</section>
		<jsp:include page="footer.jsp" />
	</div>

	

	

	<a href="#" class="scrollup"><i
		class="icon-chevron-up icon-square icon-32 active"></i></a>
	<!-- javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
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

</body>

</html>
