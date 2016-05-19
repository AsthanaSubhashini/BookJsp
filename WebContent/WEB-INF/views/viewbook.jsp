<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Books</title>
<link rel="stylesheet" href="bootstrap.min.css">
<!--  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="headeruser.jsp"/>
		<c:forEach items="${bookList}" var="book">
		<br>
		<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8" style="border: 1px solid green;">
		<br>
		<form method="post" action="ShowReviews">
		<input type="radio" value="${book.isbn}" name="isbn">
		ISBN:&nbsp;&nbsp;<c:out value="${book.isbn}"></c:out>
		<br>BookName:&nbsp;&nbsp;<c:out value="${book.bookName}"></c:out>
		<br>Author:&nbsp;&nbsp;<c:out value="${book.author}"></c:out>
		<br>Location&nbsp;&nbsp;<c:out value="${book.location}"></c:out>
		<br>
		<input type="submit" name="submit" value="Click to View Reviews" class="btn btn-primary">
		<input type="submit" name="submit" value="Click to Add a Review" class="btn btn-primary">
		</form>
		<br>
		</div>
		</div>
	</c:forEach>
</body>
</html>