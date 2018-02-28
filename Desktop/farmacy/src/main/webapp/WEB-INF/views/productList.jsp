<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<h1>Product List</h1>
	<a href="product_form">Add New</a>
	<c:if test="${!empty products}">
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Product Name</th>
					<th>Manufactured Date</th>
					<th>Expired Date</th>
					<th>Quantity</th>
					<th>Rate</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="product">
					<tr>
						<td>${product.batchNo}</td>
						<td>${product.productName}</td>
						<td>${product.mfgDate}</td>
						<td>${product.expDate}</td>
						<td>${product.quantity}</td>
						<td>${product.rate}</td>
						<td><a href="product_edit?id=${product.batchNo}">Edit</a>| <a
							href="product_delete?id=${product.batchNo}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
</body>
</html>