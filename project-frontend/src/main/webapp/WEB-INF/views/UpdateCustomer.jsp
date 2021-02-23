<%@include file = "header.jsp" %>
	<div class="container">
		<form action="<c:url value ='/update-customer'/>" modelAttribute="Customer" method="post">
			<div class="form-group">
				<label for="username">Username :: </label>
				<input type = "text" name = "username" class = "form-control" value = "${customer.username }" id = "username">
			</div>
			<div class="form-group">
				<label for="password">Password :: </label>
				<input type = "text" name = "password" class = "form-control" value = "${customer.password }" id = "password">
			</div>
			<div class="form-group">
				<label for="email">Email Id:: </label>
				<input type = "text" name = "email" class = "form-control" value = "${customer.email }" id = "email">
			</div>
			<div class="form-group">
				<label for="phno">Phone Number :: </label>
				<input type = "number" name = "phno" class = "form-control" value = "${customer.phno }" id = "phno">
			</div>
			<div class="form-group">
				<label for="address">Address :: </label>
				<input type = "text" name = "address" class = "form-control" value = "${customer.address }" id = "address">
			</div>
			<div class="form-group">
				<label for="dob">Date Of Birth :: </label>
				<input type = "text" name = "dob" class = "form-control" value = "${customer.dob }" id = "dob">
			</div>
			<div class="form-group">
				<label for="image">Customer Image :: </label>
				<input type = "file" name = "image" class = "form-control" value = "${customer.image }" id = "image">
			</div>
			<button type="submit" class="btn btn-info">Update Customer</button>
		</form>
	</div>
<%@include file = "footer.jsp" %>
</body>
</html>