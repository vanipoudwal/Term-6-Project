<%@include file = "header.jsp" %>
	<div class="container">
		<form action="add-customer" modelAttribute="Customer" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="username">Username :: </label>
				<input type = "text" name = "username" class = "form-control" placeholder = "Enter Username" id = "username">
			</div>
			<div class="form-group">
				<label for="password">Password :: </label>
				<input type = "text" name = "password" class = "form-control" placeholder = "Enter Password" id = "password">
			</div>
			<div class="form-group">
				<label for="email">Email Id:: </label>
				<input type = "text" name = "email" class = "form-control" placeholder = "Enter Email Id" id = "email">
			</div>
			<div class="form-group">
				<label for="phno">Phone Number :: </label>
				<input type = "number" name = "phno" class = "form-control" placeholder = "Enter Phone Number" id = "phno">
			</div>
			<div class="form-group">
				<label for="address">Address :: </label>
				<input type = "text" name = "address" class = "form-control" placeholder = "Enter Address" id = "address">
			</div>
			<div class="form-group">
				<label for="dob">Date Of Birth :: </label>
				<input type = "text" name = "dob" class = "form-control" placeholder = "Enter Date Of Birth" id = "dob">
			</div>
			<div class="form-group">
				<label for="image">Customer Image :: </label>
				<input type = "file" name = "image" class = "form-control" placeholder = "Enter Image" id = "image">
			</div>
			<button type="submit" class="btn btn-success">Add Customer</button>
		</form>
	</div>
<%@include file = "footer.jsp" %>
</body>
</html>