<%@include file = "header.jsp" %>
	<div class="container">
		<form action="add-item" modelAttribute="Item" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="name">Item Name :: </label>
				<input type = "text" name = "name" class = "form-control" placeholder = "Enter Item Name" id = "name">
			</div>
			<div class="form-group">
				<label for="price">Price :: </label>
				<input type = "number" name = "price" class = "form-control" placeholder = "Enter Price" id = "price">
			</div>
			<div class="form-group">
				<label for="quantity">Quantity :: </label>
				<input type = "number" name = "quantity" class = "form-control" placeholder = "Enter Quantity" id = "quantity">
			</div>
			<div class="form-group">
				<label for="description">Description :: </label>
				<input type = "text" name = "description" class = "form-control" placeholder = "Enter Description" id = "description">
			</div>
			<div class="form-group">
				<label for="image">Item Image :: </label>
				<input type = "file" name = "image" class = "form-control" id = "image">
			</div>
			<button type="submit" class="btn btn-success">Add Item</button>
		</form>
	</div>
<%@include file = "footer.jsp" %>
</body>
</html>