<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reveiws</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="headeruser.jsp"/>
		<c:forEach items="${listReviews}" var="review">
		<br>
		<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8" style="border: 1px solid green;">
		<br>
		ISBN:&nbsp;&nbsp;<c:out value="${review.isbn}"></c:out>
		<br>
		Review&nbsp;&nbsp;<c:out value="${review.review}"></c:out>
		<br>
		</div>
		</div>
	</c:forEach>
</body>
</html>