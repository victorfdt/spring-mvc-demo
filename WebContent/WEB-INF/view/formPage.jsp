<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC - Form</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">

<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</head>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<form action="processFormLetsShoutDude" method="get">
					<input type="text" name="studentName"
						placeholder="What's your name?"> <input type="submit" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>