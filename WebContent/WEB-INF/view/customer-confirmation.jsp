<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC - Customer Confirmation Page</title>
<%@include file="template/header-imports.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2>Customer confirmation</h2>

				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">#</th>
							<th scope="col">First name</th>
							<th scope="col">Last name</th>
							<th scope="col">Free passes</th>
							<th scope="col">Post code</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>${customer.firstName }</td>
							<td>${customer.lastName }</td>
							<td>${customer.freePasses}</td>
							<td>${customer.postCode}</td>
						</tr>
					</tbody>
				</table>


			</div>
		</div>
	</div>

</body>
</html>