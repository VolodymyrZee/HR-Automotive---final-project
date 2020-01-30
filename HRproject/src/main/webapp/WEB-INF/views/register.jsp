<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.io.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>


<a href="about">About US</a>
<a href="services">Services</a>
<a href="index">Home</a> <!--  queiry string -->
<a href="https://www.google.com/maps/dir//HR+Automotive+Service/data=!4m8!4m7!1m0!1m5!1m1!1s0x87df33d1f9382f83:0xf4e691658e23f97c!2m2!1d-90.3832698!2d38.6879243" data-tracking-element-type="5" jslog="56039; track:impression,click" itemprop="hasMap" data-enable-ga="true" data-ga-prefix="action-list">•Get directions</a> <!--  queiry string -->
<a href="tel:+1-314-426-2020" data-tracking-element-type="2" jslog="56037; track:impression,click" itemprop="telephone" data-enable-ga="true" data-ga-prefix="action-list">•Call now</a>
<a href="register">Register</a>

<h1>${success} ${msg}</h1>

<%-- Last name: ${users.lname} first name: ${users.fname} phone: ${users.phone}
 --%>
<form:form action="register" modelAttribute="user" method="post">
<label>Last Name</label>
<form:input path="lname" placeholder="Last Name"></form:input><br>

<label>First Name</label>
<form:input path="fname" placeholder="First Name"></form:input><br>
<label>Repeat password</label>
<form:input path="repeatpassword" placeholder="Repeat password"></form:input><br>
<label>Password</label>
<form:input path="password" placeholder="Password"></form:input><br>
<label>Email</label>
<form:input path="email" placeholder="Email"></form:input><br>
<label>Phone</label>
<form:input path="phone" placeholder="Phone"></form:input><br>
<label>Car Year</label>
<form:input path="carYear" placeholder="Car Year"></form:input><br>
<label>Car Make</label>
<form:input path="carMake" placeholder="Car Make"></form:input><br>
<label>Car Model</label>
<form:input path="carModel" placeholder="Car Model"></form:input><br>
<label>Car Color</label>
<form:input path="carColor" placeholder="Car Color"></form:input><br>
<label>License Plate</label>
<form:input path="carLicensePlate" placeholder="License Plate"></form:input><br>
<button type="submit">Submit</button>
</form:form>


</body>
</html>