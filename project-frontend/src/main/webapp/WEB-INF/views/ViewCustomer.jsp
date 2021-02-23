<%@include file="header.jsp" %>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrap.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	 <%@ taglib prefix = "spring" uri="http://www.springframework.org/tags" %>
-->

	<hr/>
	<div class="container">
		<ul>
			<li>Customer's Image :: <img src="<c:url value='/resources/images/customer.png' />"
									class="square" height="250px" width="250px" /></li>
			<li>Customer ID :: ${Customer.id }</li>
			<li>Customer's Username :: ${Customer.username }</li>
			<li>Customer's Password :: ${Customer.password }</li>
			<li>Customer's Email-ID :: ${Customer.email }</li>
			<li>Customer's Phone Number :: ${Customer.phno }</li>
			<li>Customer's Address :: ${Customer.address }</li>
			<li>Customer's Date Of Birth :: ${Customer.dob }</li>
		</ul>
<!-- 	<center>
			<p data-ng-controller="cartController">
				<a href="<spring:url value="/display-customers/" />" class="btn btn-success">Back</a>
			</p>
		</center>
-->
	</div>
	<hr/>
<%@include file = "footer.jsp" %>
</body>
</html>