<%@include file = "header.jsp" %>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>

<section>
	<div align ="center">
		<form:form action="${pageContext.request.contextPath }/admin/ItemRegistration" method="POST" commandName="items">
			<div class="table-responsive">
				<table>
					<tr>
						<td colspan="2" align="center"></td>
						<h2>Item Registration</h2>
					</tr>
					<tr>
						<td>Item Image:</td>
						<td>
							<form:input type="file" path="imagePath" class="btn btn-warning"/>
						</td>
					</tr>
					<tr>
						<td>Item Name:</td>
						<td>
							<form:input path="name"/>
						</td>
					</tr>
					<tr>
						<td>Item Price:</td>
						<td>
							<form:input path="price"/>
						</td>
					</tr>
					<tr>
						<td>Item Quantity:</td>
						<td>
							<form:input path="quantity"/>
						</td>
					</tr>
					<tr>
						<td>Item Description:</td>
						<td>
							<form:input path="description"/>
						</td>
					</tr>
				</table>
				<br/>
				<div style="display: table-footer-group;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="Add Item" class="btn btn-info">
				</div>
			</div>
		</form:form>
	</div>
</section>
<br/>
<hr/>
<%@include file = "footer.jsp" %>

</body>
</html>