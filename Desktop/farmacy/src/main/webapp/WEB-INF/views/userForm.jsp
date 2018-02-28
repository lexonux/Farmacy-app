<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration Form</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<form:form action="user_save" method="post" modelAttribute="user">
		<div>
			<form:label path="userName">User Name</form:label>
			<form:input type="text" path="userName" />
		</div>
		<div>
			<form:label path="password">Password</form:label>
			<form:input type="password" path="password" />
		</div>
		<div>
			<input type="submit" value="Submit">
		</div>
	</form:form>
</body>
</html>