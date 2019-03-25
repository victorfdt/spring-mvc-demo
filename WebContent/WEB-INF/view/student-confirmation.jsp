<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC - Student Confirmation Page</title>
<%@include file="template/header-imports.jsp"%>
</head>
<body>

Student's name: ${student.firstName } ${student.lastName } 
<br>
Country: ${student.country } 
<br>
Programming language: ${student.progLanguage }
<br>
Operating systems: 
<ul>
	<c:forEach var="opSystem" items="${student.operatingSystems}">
		<li>${opSystem}</li>
	</c:forEach>
</ul> 


</body>
</html>