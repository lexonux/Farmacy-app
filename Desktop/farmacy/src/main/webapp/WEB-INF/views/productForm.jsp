<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Form</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<div class="container">
		<h1>Product Registration Form</h1>
		<form:form action="product_save" method="post"
			modelAttribute="product" class="form-horizontal">
			<div class="form-group row">
				<form:label path="productName" class="col-sm-2 col-form-label">Product Name</form:label>
				<div class="col-sm-4">
					<form:input type="text" path="productName" class="form-control" />
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
				<form:label path="mfgDate" class="col-sm-2 col-form-label">Manufactured Date</form:label>
				<div class="col-sm-4">
					<form:input type="date" path="mfgDate" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="expDate" class="col-sm-2 col-form-label">Expired Date</form:label>
				<div class="col-sm-4">
					<form:input type="date" path="expDate" class="form-control" />
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