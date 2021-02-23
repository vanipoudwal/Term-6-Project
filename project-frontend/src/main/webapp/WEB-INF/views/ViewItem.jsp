<%@include file="header.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrap.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%@ taglib prefix = "spring" uri="http://www.springframework.org/tags" %>

	<hr/>
	<div class="container">
		<ul>
			<li>Item's Image :: <img src="<c:url value='/resources/images/${Item.id }.jpg' />"
								class="square" height="125px" width="250px" /></li>
			<li>Item's ID :: ${Item.id }</li>
			<li>Item's Name :: ${Item.name }</li>
			<li>Item's Price :: ${Item.price }</li>
			<li>Item's Quantity :: ${Item.quantity }</li>
			<li>Item's Description :: ${Item.description }</li>
		</ul>
		<p data-ng-controller="cartController">
			<a href="<spring:url value="/display-items/" />" class="btn btn-success">Back!</a>
			<a href="<spring:url value="/cart?id=${Item.id }" />" class="btn btn-warning btn-large" data-ng-click="addToCart('${Item.id }')">
				<span class="glyphicon glyphicon-shopping-cart"></span>Order Now!
			</a>
		</p>
	</div>
	<hr/>
<%@include file = "footer.jsp" %>
</body>
</html>