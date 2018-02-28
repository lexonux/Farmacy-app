<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expired Product</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<h1 align="center">Expired Product Record</h1>
	<c:if test="${!empty ExpiredProduct}">
		<div class="container">
			<div class="panel panel-default">
				<div class="panel-body">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Product Name</th>
								<th>Batch No</th>
								<th>Expired Date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${ExpiredProduct}" var="e">
								<tr>
									<td>${e.productName}</td>
									<td>${e.batchNo}</td>
									<td>${e.expDate}</td>
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