<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</head>
<body>
	<br>
	<br>
	<div class="loginmodal-container">
		<h1>Login to Your Account</h1>
		<br>
		<form action="login" method="post">
		<span style="color: red">${logInError}</span>
			<span style="color: red">${logOutMsg}</span> <input type="text"
				name="userName" placeholder="Username"> <input
				type="password" name="password" placeholder="Password"> <input
				type="submit" name="login" class="login loginmodal-submit"
				value="Login">
		</form>
	</div>
</body>
</html>