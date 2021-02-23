<%@include file = "header.jsp" %>
<%@page import = "com.niit.ecommerce.model.Item" %>
<%@taglib prefix = "spring" uri= "http://www.springframework.org/tags" %>

<section class = "container" data-ng-app="cartApp" style="height:470px;">
	<div data-ng-controller = "cartController" data-ng-init="initCartId('${cart.cartId}')">
	<br/>
		<div>
			<a class="btn btn-danger pull-left" data-ng-click = "clearCart()">
				<span class="glyphicon glyphicon-remove-sign"></span>Clear Cart!
			</a>
			<c:if test="${pageContext.request.userPrincipal.name != null }">
				<a href = "OrderConfirmation?id = ${item.id }"
					class="btn btn-success pull-right">Check Out!
				</a>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name == null }">
				<a href = "login" class="btn btn-success pull-right">Check Out!</a>
			</c:if>
		</div>
		<br/>
		<table class = "table table-hover">
			<tr>
				<th>Item No</th>
				<th>Item Name</th>
				<th>Quantity</th>
				<th>Unit Price</th>
				<th>Action</th>
			</tr>
			<tr data-ng-repeat="item in item">
				<td>${item.id }</td>
				<td>${item.name }</td>
				<td>${item.price }</td>
				<td>${item.quantity }</td>
				<td>
					<a href="<spring:url value="/deleteCart?id=${item.id }" />" class="btn btn-warning">
						<span class="glyphicon-info-sign glyphicon"></span> Remove!
					</a>
				</td>
			</tr>
			<tr>
				<th></th>
				<th></th>
				<th>Grand Total</th>
				<th>${item.price }</th>
				<th></th>
			</tr>
		</table>
		<a href="<spring:url value="#" />" class="btn btn-success">
			<span class="glyphicon-circle-arrow-left glyphicon"></span> Continue Shopping!
		</a>
	</div>
</section>
<%@include file = "footer.jsp" %>
</body>
</html>