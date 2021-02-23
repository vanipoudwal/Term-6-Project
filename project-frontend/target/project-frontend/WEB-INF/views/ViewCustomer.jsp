<%@include file="header.jsp" %>
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
		<input type = "submit" value = "Back" action = "ViewCustomer.jsp" style = 'height: 50px; width: 175px; color: green' />
	</div>
	<hr/>
<%@include file = "footer.jsp" %>
</body>
</html>