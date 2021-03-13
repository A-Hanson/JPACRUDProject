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
<title>Add Form</title>
</head>
<body>
<div class="container">
	<c:choose>
	<c:when test="${not empty form }">
		<form action="updateForm.do" method="POST">
		<div class="mb-3">
			<input type="hidden" name="id" value="${form.id}">
	      <label for="formNumber">Form Number:</label>
	      <input type="text" name="formNumber" class="form-control" value="${form.formNumber}">
	      <br>
	      <label for="formTitle">Form Title:</label>
	      <input type="text" name="formTitle" class="form-control" value="${form.formTitle}">
	      <br>
	      <label for="year">Year:</label>
	      <input type="text" name="year" class="form-control" value="${form.year}">
	      <br>
	      <input type="submit" value="Update Form">
	      </div>
	    </form>
    </c:when>
    <c:otherwise>
    	<form action="addForm.do" method="POST">
		<div class="mb-3">
	      <label for="formNumber">Form Number:</label>
	      <input type="text" name="formNumber" class="form-control" value="">
	      <br>
	      <label for="formTitle">Form Title:</label>
	      <input type="text" name="formTitle" class="form-control" value="">
	      <br>
	      <label for="year">Year:</label>
	      <input type="text" name="year" class="form-control" value="">
	      <br>
	      <input type="submit" value="Add Form">
	      </div>
	    </form>
    </c:otherwise>
    
    </c:choose>
    
<a href="home.do">Return</a>
</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>
</html>