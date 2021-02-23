<%@include file = "header.jsp" %>
<hr/>
	<h2>
		<center>Customers Page</center>
	</h2>
	<!-- ${List} --->
	<hr>
	<div style="float: left;">
		<a href="customer-page">Add Customer</a>
	</div>
	<table class = "table table-striped">
		<tr>
			<th>Customer Id</th>
			<th>Username</th>
			<th>Password</th>
			<th>Email id</th>
			<th>Phone Number</th>
			<th>Address</th>
			<th>Date Of Birth</th>
			<th>Customer Image</th>
			<th>Customer Actions</th>
		</tr>
	<c:forEach var = "customer" items = "${List }">
		<tr>
			<td>${customer.id }</td>
			<td>${customer.username }</td>
			<td>${customer.password }</td>
			<td>${customer.email }</td>
			<td>${customer.phno }</td>
			<td>${customer.address }</td>
			<td>${customer.dob }</td>
			<td>
				<img src="<c:url value='/resources/images/customer.png' />" class="rounded-circle" height="50px" width="50px" />
			</td>
			
			<td>
	<!-- for links --> 
			<a href = "<c:url value='/view-customer/${customer.id }' />">View</a> |
			<a href = "update-customer/${customer.id }">Update</a> |
			<a href = "delete-customer/${customer.id }">Delete</a> 
	<!-- for buttons --> 
		 	<!-- <input type = "submit" value = "view" />
			 	 <input type = "submit" value = "update" />
			 	 <input type = "submit" value = "delete" /> -->
			</td>
		</tr>
	</c:forEach>
	</table>
<%@include file = "footer.jsp" %>
</body>
</html>