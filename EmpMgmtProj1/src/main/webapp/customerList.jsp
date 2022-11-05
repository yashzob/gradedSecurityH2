<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer List</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h3> Customers Directory</h3>
		<a href="add" class="btn btn-primary btn-sm mb-3">Add Customer</a>
		<table class="table table-border table-dark table-striped table-hover" border ="1">
			<thead  class="thead-dark">
				<tr >
					<th>Customer_ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th><center>Action</center></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${customerModel}" var="customer">
					<tr>
					<td>${customer.id}</td>
					<td>${customer.name}</td>
					<td>${customer.department}</td>
					<td>${customer.country}</td>
					<td><center>
					<a href="/api/customers/?id=${customer.id}" class="btn btn-success btn-sm mr-5">Update</a>
					<a href="/api/customers/?id=${customer.id}" class="btn btn-danger btn-sm" onclick="if(!(confirm('Are you sure to delete this customer?'))) return false">Delete</a>
					</center></td>
					</tr>
				</c:forEach>
				<!-- Tag lib For loop -->
			</tbody>
		</table>
	</div>
</body>
</html>
