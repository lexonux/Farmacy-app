<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales Form</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<div class="container">
		<h1>Sales Registration Form</h1>
		<form:form action="sales_save" method="post" modelAttribute="sales"
			class="form-horizontal">
			<div class="form-group row">
				<form:label path="productName" class="col-sm-2 col-form-label">Product Name</form:label>
				<div class="col-sm-4">
					<form:input type="text" path="productName" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="billNo" class="col-sm-2 col-form-label">Bill No</form:label>
				<div class="col-sm-4">
					<form:input type="text" path="billNo" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="quantity" class="col-sm-2 col-form-label">Quantity</form:label>
				<div class="col-sm-4">
					<form:input type="text" path="quantity" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="rate" class="col-sm-2 col-form-label">Rate</form:label>
				<div class="col-sm-4">
					<form:input type="text" path="rate" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="price" class="col-sm-2 col-form-label">Price</form:label>
				<div class="col-sm-4">
					<form:input type="text" path="price" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="soldDate" class="col-sm-2 col-form-label">Sold Date</form:label>
				<div class="col-sm-4">
					<form:input type="date" path="soldDate" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<div class="offset-sm-2 col-sm-4">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>