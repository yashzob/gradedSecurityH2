<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Save Customer</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<h3> Save Customer</h3>
		<form action="/api/customers/save" method="post">
			<input type="hidden" name="id" value="${customer.id}">
			<div class="form-inline">
			<input type="text"  name="name" value="${customer.firstname}" placeholder="Customer Name" class="form-control mb-4 col-4">
			</div>
			<div class="form-inline">
			<input type="text"  name="lastname" value="${customer.lastname}" placeholder="Customer lastname" class="form-control mb-4 col-4">
			</div>
			<div class="form-inline">
			<input type="text"  name="email" value="${customer.email}" placeholder="email" class="form-control mb-4 col-4">
			</div>
			<button type="submit" class="btn btn-info col-2">Submit</button>
		</form>
		
		<a href="/api/customers/list">Back to Customer List</a>
	
	</div>
</body>
</html>