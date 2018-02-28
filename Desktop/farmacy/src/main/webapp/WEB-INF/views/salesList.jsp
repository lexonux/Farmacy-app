<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales List</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<h1 align="center">Sales Record</h1>
	<c:if test="${!empty sales}">
		<div class="container">
			<div class="panel panel-default">
				<div class="panel-body">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Sales Id</th>
								<th>Product Name</th>
								<th>Bill No</th>
								<th>Sold Date</th>
								<th>Quantity</th>
								<th>Rate</th>
								<th>Price</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${sales}" var="sales">
								<tr>
									<td>${sales.salesId}</td>
									<td>${sales.productName}</td>
									<td>${sales.billNo}</td>
									<td>${sales.soldDate}</td>
									<td>${sales.quantity}</td>
									<td>${sales.rate}</td>
									<td>${sales.price}</td>
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