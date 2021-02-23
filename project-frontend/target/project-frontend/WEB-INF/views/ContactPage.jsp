<%@include file = "header.jsp" %>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>

<section>
	<section id="contact-page">
		<div class="container">
			<div class="center">
				<h2>Drop Your Message!</h2>
			</div>
			<div class="row contact-wrap">
				<form:form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="addContact">
					<div class="col-sm-5 col-sm-offfset-1">
						<div class="form-group">
							<label>Name *</label>
							<form:input path="name" name="name" class="form-control" />
							<form:errors cssStyle="color:ff0000" path="name" />
						</div>
						<div class="form-group">
							<label>Email *</label>
							<form:input path="email" name="email" class="form-control" required="required" />
						</div>
						<div class="form-group">
							<label>Subject *</label>
							<form:input path="subject" class="form-control" />
						</div>
						<div class="form-group">
							<label>Company Name *</label>
							<form:input path="company" class="form-control" />
						</div>
					</div>
					<div class="col-sm-5">
						<div class="form-group">
							<label>Phone *</label>
							<form:input path="mobile" name="mobile" class="form-control" required="required" />
						</div>
						<div class="form-group">
							<label>Message *</label>
							<form:input path="message" name="message" required="required" class="form-control" />
						</div>
						<div class="form-group">
							<button type="submit" name="submit" class="btn btn-primary btn-lg">Submit Message</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</section>
</section>
<br/><hr/>
<%@include file = "footer.jsp" %>

</body>
</html>