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
	
	<style>
		.footer{
			background-color: pink;
			color: purple;
			min-width: 978px;
			border-top: 1px solid #add;
			border-top-width: 1px;
			border-top-style: solid;
			border-top-color: rgb(221, 221, 221);
			margin-top: 0px;
			box-sizing: border-box;
			padding: 25px;
			margin: 0px;
			margin-left: 0px;
			display: block;
		}
		
		.line{
			padding: 20px;
			display: inline-flex;
			right: 50px;
			left: 50px;
			word-spacing: 2px;
		}
	</style>
</head>

<body>
<hr/>

	<div class = "footer">
		<div class = "row">
			<div class = "col-sm-2">
				<h5 style = "color: black"><b><u> POLICY </u></b></h5>
					<h6><a href = "#">Return Policy</a></h6>
					<h6><a href = "#">Terms Of Use</a></h6>
					<h6><a href = "#">Security & Privacy</a></h6>
					<h6><a href = "#">SiteMap</a></h6>
			</div>
			<div class = "col-sm-2">
				<h5 style = "color: black"><b><u> CONTACT </u></b></h5>
					<h6>Mobile: 7291967064</h6>
					<h6>TelePhone: 12345678</h6>
					<h6>Fax : 123-456-789</h6>
			</div>
			<div class = "col-sm-2">
				<h5 style = "color: black"><b><u> SOCIAL </u></b></h5>	
					<h6><a href = "https://www.youtube.com/">YouTube</a></h6>
					<h6><a href = "https://www.facebook.com/">Facebook</a></h6>
					<h6><a href = "https://www.twitter.com/">Twitter</a></h6>
					<h6><a href = "https://www.instagram.com/">Instagram</a></h6>
			</div>
			<div class = "col-sm-2">
				<h5 style = "color: black"><b><u> ADDRESS </u></b></h5>
					<h6>Sandhya Deep Building,</h6>
					<h6>D-8, Community Center,</h6>
					<h6>East Of Kailash,</h6>
					<h6>New Delhi - 110065</h6>
			</div>
			<div class = "col-sm-2">
				<h5 style = "color: black"><b><u> HELP </u></b></h5>
					<h6><a href = "#">Payments & Shipping</a></h6>
					<h6><a href = "#">FAQ</a></h6>
					<h6><a href = "#">Cancellation & Returns</a></h6>
					<h6><a href = "#">Report</a></h6>
			</div>
		</div>
	</div>