<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Edit</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<h1>User Edit</h1>
	<form:form action="user_update" method="post" modelAttribute="user">
		<form:input type="hidden" path="uesrId" />
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