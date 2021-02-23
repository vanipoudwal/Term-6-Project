<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored = "false" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Guddu Jewellers</title>
	<link rel="stylesheet" href="<c:url value = '/resources/css/bootstrap.min.css' />"></link>
	<script type="text/javascript" src="<c:url value = '/resources/js/bootstrap.min.js'/>"></script>
</head>

<body>
<hr/>

	<center>
		<b><a href = "display-items"></a></b> 
		<b><a href = "display-customers"></a> | </b> 
		<b><a href = "login">Login/Logout</a> | </b> 
		<b><a href = "#">Sign Up</a> | </b>
	</center>
	<hr/>
	
	<center>
		<h1>
			<b>!! <u>Welcome :: ${pageContext.request.userPrincipal.name }</u> !!</b>
		</h1> 
	</center>