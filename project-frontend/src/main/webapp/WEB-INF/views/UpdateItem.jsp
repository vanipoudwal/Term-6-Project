<%@include file = "header.jsp" %>
	<div class="container">
		<form action="<c:url value ='/update-item'/>" modelAttribute="Item" method="post">
			<div class="form-group">
				<label for="name">Item Name :: </label>
				<input type = "text" name = "name" class = "form-control" value = "${item.name }" id = "name">
			</div>
			<div class="form-group">
				<label for="price">Price :: </label>
				<input type = "number" name = "price" class = "form-control" value = "${item.price }" id = "price">
			</div>
			<div class="form-group">
				<label for="quantity">Quantity :: </label>
				<input type = "number" name = "quantity" class = "form-control" value = "${item.quantity }" id = "quantity">
			</div>
			<div class="form-group">
				<label for="description">Description :: </label>
				<input type = "text" name = "description" class = "form-control" value = "${item.description }" id = "description">
			</div>
			<div class="form-group">
				<label for="image">Item Image :: </label>
				<input type = "file" name = "image" class = "form-control" value = "${item.image }" id = "image">
			</div>
			<button type="submit" class="btn btn-info">Update Item</button>
		</form>
	</div>
<%@include file = "footer.jsp" %>
</body>
</html>