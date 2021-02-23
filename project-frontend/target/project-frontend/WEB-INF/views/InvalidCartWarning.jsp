<%@include file = "header.jsp" %>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>

<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Invalid Cart!</h1>
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
<br/>
<hr/>
<%@include file = "footer.jsp" %>

</body>
</html>