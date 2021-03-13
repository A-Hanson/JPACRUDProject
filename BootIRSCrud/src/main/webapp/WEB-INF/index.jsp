<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
<title>IRS Prior Year Forms</title>
</head>
<body>
	<div class="container">
		<h2>IRS Forms, now with extra fun!</h2>
		<c:if test="${deletedForm}==true">
		<h4>Form was deleted.</h4>
		</c:if>
		<form action="getForm.do" method="GET">
			<div class="mb-3">
				<label for="formId" class="form-label">Search by Form Id</label> 
				<input type="text" class="form-control" id="formId" placeholder="2" name="formId">
				<input type="submit" value="Find Form" class="btn btn-primary">
			</div>
		</form>
		<a href="goToInput.do" class="button">Add New Form Here</a>
		<table class="table table-striped caption-top">
			<caption>List of Form Numbers available currently</caption>
			<thead>
				<tr>
					<th scope="col">Form Number</th>
					<th scope="col">Form Title</th>
					<th scope="col">Full List by Form</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="f" items="${uniqueFormNums}">
					<tr>
						<td>${f[0]}</td>
						<td>${f[1]}</td>
						<td>
						<%-- <c:set var="num" value="${fn:replace(f[0], ' ', '-')}" /> --%>
						<a href="getForm.do?formNum=${f[0]}">Full List</a>
						</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
			crossorigin="anonymous"></script>
	</div>
</body>
</html>