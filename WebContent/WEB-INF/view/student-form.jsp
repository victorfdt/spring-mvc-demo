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

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<!-- The model passed in modelAttribute is created in the method that calls this page  -->
				<form:form action="processForm" modelAttribute="student">

					<!-- First name -->
					<div class="form-group row">
						<form:label path="firstName" cssClass="col-sm-2 col-form-label">First name: </form:label>
						<div class="col-sm-10">
							<form:input path="firstName" cssClass="form-control" />
						</div>
					</div>

					<!-- Last name -->
					<div class="form-group row">
						<form:label path="lastName" cssClass="col-sm-2 col-form-label">Last name: </form:label>
						<div class="col-sm-10">
							<form:input path="lastName" cssClass="form-control" />
						</div>
					</div>

					<!-- Countries -->
					<div class="form-group row">
						<form:label path="country" cssClass="col-sm-2 col-form-label">Country: </form:label>
						<div class="col-sm-10">
							<form:select path="country">
								<%--
								I could also pass a method that returns a Collection.
								Ex: ${student.countryOptions}, which calls Student.getCountryOptions
								In this case, I'm using the property countryList I added in the Model.
								--%>
								<form:options items="${countryList}" />
							</form:select>
						</div>
					</div>

					<!-- Programming languages -->
					<fieldset class="form-group">
						<div class="row">
							<legend class="col-form-label col-sm-2 pt-0">Radios</legend>
							<div class="col-sm-10">
								<div class="form-check">
									<form:radiobutton path="progLanguage" value="java"
										cssClass="form-check-input" />
									<form:label path="progLanguage" cssClass="form-check-label">Java</form:label>
								</div>
							</div>
						</div>
					</fieldset>

					<!-- Submit -->
					<input type="submit" value="Submit">
				</form:form>
			</div>
		</div>
	</div>

</body>
</html>