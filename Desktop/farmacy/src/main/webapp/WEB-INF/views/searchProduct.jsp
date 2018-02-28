<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<br>
	<br>
	<br>
	<div class="container">
		<form action="product_search" method="post">
			<div class="row">
				<div class="col-sm-6">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for product" aria-label="Search for..."
							name="batchNo"> <span class="input-group-btn">
							<button class="btn btn-secondary" type="submit">Go!</button>
						</span>
					</div>
				</div>
			</div>
		</form>
	</div>
	<div></div>
	<div class="container">
		<c:if test="${!empty product}">
		<table class="table" style="width: 60%">
			<tr>
				<td>Product Name</td>
				<td>${product.productName}</td>
			</tr>
			<tr>
				<td>Batch No</td>
				<td>${product.batchNo}</td>
			</tr>

		</table>
		</c:if>
	</div>
</body>
</html>