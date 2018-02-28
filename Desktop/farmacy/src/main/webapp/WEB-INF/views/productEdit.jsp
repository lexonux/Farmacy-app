<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Edit</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<h1>Product Edit</h1>
	<div>
		<form:form action="product_update" method="post"
			modelAttribute="product">
			<form:input type="hidden" path="batchNo" />
			<div>
				<form:label path="productName">Product Name</form:label>
				<form:input type="text" path="productName" />
			</div>
			<div>
				<form:label path="quantity">Quantity</form:label>
				<form:input type="text" path="quantity" />
			</div>
			<div>
				<form:label path="rate">Rate</form:label>
				<form:input type="text" path="rate" />
			</div>
			<div>
				<form:label path="mfgDate">Manufactured Date</form:label>
				<form:input type="date" path="mfgDate" />
			</div>
			<div>
				<form:label path="expDate">Expired Date</form:label>
				<form:input type="date" path="expDate" />
			</div>
			<div>
				<input type="submit" value="Submit">
			</div>
		</form:form>
	</div>
</body>
</html>