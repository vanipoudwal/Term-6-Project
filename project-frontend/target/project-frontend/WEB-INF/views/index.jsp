<%@include file = "header.jsp" %>
<hr/>
<center>
	<h5> | <b><a href="display-items">ITEMS</a></b> | <b><a href="display-customers">CUSTOMERS</a></b> | </h5>
</center>
<hr/>
<center>
	<h5>!! <u>Student Names</u> !!</h5>
			<c:forEach var = "Name" items = "${message}">
				<center>
					<h6>${Name }</h6>
				</center>
			</c:forEach>
		</ul>
</center>
<hr/>
<%@include file = "footer.jsp" %>
</body>
</html>