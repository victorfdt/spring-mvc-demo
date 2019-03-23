<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC - Result Page</title>

<%@include file="template/header-imports.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<p>You name is ${param.studentName}</p>
				<br>
				<p>Message: ${message}</p>
			</div>
		</div>
	</div>
</body>
</html>