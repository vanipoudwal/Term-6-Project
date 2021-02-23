<%@include file = "header.jsp" %>
<hr/>
	<h2>
		<center>Items Page</center>
	</h2>
	<!-- ${List} --->
	<hr>
	<div style="float: left;">
		<a href="item-page">Add Item</a>
	</div>
	<table class = "table table-striped">
		<tr>
			<th>Item Id</th>
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Description</th>
			<th>Image</th>
			<th>Item Actions</th>
		</tr>
	<c:forEach var = "item" items = "${List }">
		<tr>
			<td>${item.id }</td>
			<td>${item.name }</td>
			<td>${item.price }</td>
			<td>${item.quantity }</td>
			<td>${item.description }</td> 
			<td>
				<img src="<c:url value='/resources/images/${item.id }.jpg' />" class="rounded-circle" height="50px" width="50px" />
			</td>
			
			<td>
	<!-- for links -->
			<a href = "<c:url value='/view-item/${item.id }' />">View</a> |
			<a href = "update-item/${item.id }">Update</a> |
			<a href = "delete-item/${item.id }">Delete</a> 
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