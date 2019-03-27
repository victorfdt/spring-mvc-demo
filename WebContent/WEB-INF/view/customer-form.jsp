<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Page - Costumer Form</title>
<%@include file="template/header-imports.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2>Customer Form</h2>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<form:form action="processForm" modelAttribute="customer">

					<!-- First name -->
					<div class="form-group row">
						<form:label path="firstName" cssClass="col-sm-2 col-form-label">First name: </form:label>
						<div class="col-sm-8">
							<form:input path="firstName" cssClass="form-control" />
						</div>
					</div>

					<!-- Last name -->
					<div class="form-group row">
						<form:label path="lastName" cssClass="col-sm-2 col-form-label">Last name: </form:label>
						<div class="col-sm-8">
							<form:input path="lastName" cssClass="form-control" />
						</div>

						<div class="col-sm-2">
							<form:errors path="lastName" cssClass="col-form-label error"/>
						</div>
					</div>

					<input type="submit" value="Submit">

				</form:form>

			</div>
		</div>
	</div>
</body>
</html>