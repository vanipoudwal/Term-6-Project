<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="<c:url value = '/resources/css/bootstrap.min.css' />"></link>
	<script type="text/javascript" src="<c:url value = '/resources/js/bootstrap.min.js'/>"></script>
	<title>Add Item Page</title>
</head>

<body>
<a href = "display-items">Items</a> | 
<c:if test = "${pageContext.request.userPrincipal.name == null } ">   
<a href = "#">Login</a> |
<a href = "#">Sign Up</a> |
</c:if>

<c:if test = "${pageContext.request.userPrincipal.name != null} ">   
Welcome :: ${pageContext.request.userPrincipal.name } |
<a href = "#">Logout</a> |
</c:if>
<hr>
