<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">로그인해라</h3>
			<form class="form-signin" action="j_security_check" method="post">
				
			</form>
		</div> 
	</div>
</body>
</html>