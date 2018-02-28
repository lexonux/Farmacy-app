<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User List</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<br>
	<br>
	<h1 align="center">Users List</h1>
	<div class="form-group row">
		<div class=" col-sm-10">
			<a href="user_form">
				<button class="btn btn-info navbar-btn" style="margin-left: 100%;">Add
					User</button>
			</a>
		</div>
	</div>
	<c:if test="${!empty users}">
		<div class="container">
			<div class="panel panel-default">
				<div class="panel-body">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>User Name</th>
								<th>Password</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${users}" var="user">
								<tr>
									<td>${user.uesrId}</td>
									<td>${user.userName}</td>
									<td>${user.password}</td>
									<td><a href="user_edit?id=${user.uesrId}">Edit</a>| <a
										href="user_delete?id=${user.uesrId}">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>