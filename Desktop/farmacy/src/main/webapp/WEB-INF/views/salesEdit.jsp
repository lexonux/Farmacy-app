<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales Edit</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<h1>Sales Edit</h1>
	<div>
		<form:form action="sales_update" method="post" modelAttribute="sales">
			<form:input type="hidden" path="salesId" />
			<div>
				<form:label path="productName">Product Name</form:label>
				<form:input type="text" path="productName" />
			</div>
			<div>
				<form:label path="billNo">Bill No</form:label>
				<form:input type="text" path="billNo" />
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
				<form:label path="price">Price</form:label>
				<form:input type="text" path="price" />
			</div>
			<div>
				<form:label path="soldDate">Sold Date</form:label>
				<form:input type="date" path="soldDate" />
			</div>
			<div>
				<input type="submit" value="Submit">
			</div>
		</form:form>
	</div>
</body>
</html>