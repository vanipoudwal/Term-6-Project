<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guddu Jewellers</title>
</head>
<body>
	<div class="container">
		<h2>Login Form</h2>
			<form action="login">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Enter username" name="username">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="Enter password" name="password">
				</div>
				<div class="form-group form-check">
					<label class="form-check-label">
						<input class="form-check-input" type="checkbox" name="remember"> Remember me
					</label>
				</div>
				<button type="submit" class="btn btn-primary">Login</button>
			</form>
	</div>
</body>
</html>



<!--  
<%@ include file="header.jsp" %>
<style>
body{
font-family: 'Ropa Sans', sans-serif; 
color:#666; 
font-size:14px;
color:#333;
}
li,ul,body,input{
margin:0; 
padding:0; 
list-style:none;
}
#login-form{
width:350px; 
background:#FFF; 
margin:0 auto; 
margin-top:80px; 
background:#f8f8f8; 
overflow:hidden; 
border-radius:7px;
}
.form-header{
display:table; 
clear:both;
}
.form-header label{
display:block; 
cursor:pointer; 
z-index:999;
}
.form-header li{
margin:0; 
line-height:40px; 
width:350px; 
text-align:center; 
background:#eee; 
font-size:18px; 
float:left; 
transition:all 600ms ease;
}
.section-out{
width:700px; 
float:left; 
transition:all 600ms ease;
}
.section-out:after{
content:''; 
clear:both; 
display:table;
}
.section-out section{
width:350px; 
float:left;
}
.login{
padding:20px;
}
.ul-list{
clear:both; 
display:table; 
width:100%;
}
.ul-list:after{
content:''; 
clear:both; 
display:table;
}
.ul-list li{ 
margin:0 auto; 
margin-bottom:12px;
}
.input{
background:#fff; 
transition:all 800ms; 
width:247px; 
border-radius:3px 0 0 3px; 
font-family: 'Ropa Sans', sans-serif; 
border:solid 1px #ccc; 
border-right:none; 
outline:none; 
color:#999; 
height:40px; 
line-height:40px; 
display:inline-block; 
padding-left:10px; 
font-size:16px;
}
.input,.login span.icon{
vertical-align:top;
}
.login span.icon{
width:50px; 
transition:all 800ms; 
text-align:center; 
color:#999; 
height:40px; 
border-radius:0 3px 3px 0; 
background:#e8e8e8; 
height:40px; 
line-height:40px; 
display:inline-block; 
border:solid 1px #ccc; 
border-left:none; 
font-size:16px;
}
.input:focus:invalid{
border-color:red;
}
.input:focus:invalid+.icon{
border-color:red;
}
.input:focus:valid{
border-color:green;
}
.input:focus:valid+.icon{
border-color:green;
}
#check,#check1{
top:1px; 
position:relative;
}
.btn{
border:none; 
outline:none; 
background:#0099CC; 
border-bottom:solid 4px #006699; 
font-family: 'Ropa Sans', sans-serif; 
margin:0 auto; 
display:block; 
height:40px; 
width:100%; 
padding:0 10px; 
border-radius:3px; 
font-size:16px;
color:#FFF;
}
.social-login{
padding:15px 20px; 
background:#f1f1f1; 
border-top:solid 2px #E8E8E8; 
text-align:right;
}
.social-login a{
display:inline-block; 
height:35px; 
text-align:center; 
line-height:35px; 
width:35px; 
margin:0 3px; 
text-decoration:none; 
color:#FFFFFF;
}
.form a i.fa{
line-height:35px;
}
.fb{
background:#305891;
}
.tw{
background:#2ca8d2;
} 
.gp{
background:#ce4d39;
} 
.in{
background:#006699;
}
.remember{
width:50%; 
display:inline-block; 
clear:both; 
font-size:14px;
}
.remember:nth-child(2){
text-align:right;
}
.remember a{
text-decoration:none; 
color:#666;
}
.hide{
display:none;
}
#signup:checked~.section-out{
margin-left:-350px;
}
#login:checked~.section-out{
margin-left:0px;
}
#login:checked~div .form-header li:nth-child(1),#signup:checked~div .form-header li:nth-child(2){
background:#e8e8e8;
}
</style>

<section>
	<div id="login-form">
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<div>
			<ul class="form-header">
				<li>
					<label for="login"><i class="fa fa-lock"></i> LOGIN<label for="login">
				</li>
			</ul>
		</div>
		<div class="section-out">
			<section class="login-section">
				<div class="login">
					<form name="login" action="perform_login" method="post" >
						<ul class="ul-list">
							<li>
								<input type="text" name="username" required class="input" placeholder="Your username"/>
								<span class="icon"><i class="fa fa-user"></i></span>
							</li>
							<form:errors path="username" cssClass="error" />
							<li>
								<input type="password" name="password" required class="input" placeholder="Password"/>
								<span class="icon"><i class="fa fa-lock"></i></span>
							</li>
							<li>
								<input type="submit" value="SIGN IN" class="btn">
							</li>
							<li>New User ?
								<a href="signUp">Sign Up Here</a>
							</li>
							<li>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							</li>
						</ul>
					</form>
				</div>
			</section>
		</div>
	</div>
</section>
<br/>
<hr/>
<%@ include file="footer.jsp" %>

</body>
</html>
-->