<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
<title>Form Information</title>
</head>
<body>
	<div class="container">
		<c:if test="${empty results }">
		<h3>Sorry, no form(s) found.</h3>
		</c:if>
		<c:if test="${not empty results }">
		<table class="table table-striped caption-top text-center">
			<caption>Found Form(s):</caption>
			<thead>
				<tr>
					<th scope="col">Form Id</th>
					<th scope="col">Form Number</th>
					<th scope="col">Form Title</th>
					<th scope="col">Year</th>
					<th scope="col">Update</th>
					<th scope="col">Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="form" items="${results}">
					<tr>
						<td>${form.id}</td>
						<td>${form.formNumber}</td>
						<td>${form.formTitle}</td>
						<td>${form.year}</td>
						<td>
							<form action="goToInput.do" method="POST">
								<input type="hidden" name="id" value="${form.id}"> <input
									type="hidden" name="formNumber" value="${form.formNumber}">
								<input type="hidden" name="formTitle" value="${form.formTitle}">
								<input type="hidden" name="year" value="${form.year}"> <input
									type="submit" value="Update Form" class="btn-success">
							</form>
						</td>
						<td>
							<form action="deleteForm.do" method="POST">
								<input type="hidden" name="id" value="${form.id}"> <input
									type="hidden" name="formNumber" value="${form.formNumber}">
								<input type="hidden" name="formTitle" value="${form.formTitle}">
								<input type="hidden" name="year" value="${form.year}"> <input
									type="submit" value="Delete Form" class="btn-warning">
							</form>
						</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		</c:if>

		<a href="home.do">Return</a>
		<!-- ADD DELETE BUTTON -->

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>
</html>