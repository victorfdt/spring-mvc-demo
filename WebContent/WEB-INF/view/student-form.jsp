<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC Page - Student Form</title>
<%@include file="template/header-imports.jsp"%>
</head>
<body>

	<!-- The model passed in modelAttribute is created in the method that calls this page  -->
	<form:form action="processForm" modelAttribute="student">
		<form:label path="firstName">First name: </form:label>
		<form:input path="firstName" />

		<br>

		<form:label path="lastName">Last name: </form:label>
		<form:input path="lastName" />

		<br>

		<input type="submit" value="Submit">
	</form:form>

</body>
</html>