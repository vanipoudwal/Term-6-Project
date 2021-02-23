<%@include file = "header.jsp" %>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>

<section>
	<div class="container">
		<p style="font-size: 50px;">Thank You!</p><br/>
		<p style="color: blue; font-size: 50px;">${cart.username }</p><br/>
		<p style="font-size: 30px;">for your business!</p><br/>
		<p>Your order with order Id <span class="label label-success">${cart.orderId }</span> will be shipped in <span class="label label-warning">Five</span>business days!</p><br/>
	</div>
</section>

<section class="container">
	<p>
		<a href="<spring:url value="/" />" class="btn btn-success">OK!</a>
	</p>
</section>
<br/><br/><br/>
<hr/>
<%@include file = "footer.jsp" %>
</body>
</html>