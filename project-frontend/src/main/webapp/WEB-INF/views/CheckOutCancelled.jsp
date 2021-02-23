<%@include file = "header.jsp" %>
<%@ taglib prefix = "spring" uri="http://www.springframework.org/tags" %>

<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1 class="alert alert-danger">Checkout Cancelled!</h1>
					<p>Your Checkout Process Is Cancelled! You May Continue Shopping.</p>
				</div>
			</div>
		</section>
		<section class="container">
			<p>
				<a href="<spring:url value="/item/itemList" />" class="btn btn-default">Items</a>
			</p>
		</section>
	</div>
</div>

<%@include file = "footer.jsp" %>
</body>
</html>