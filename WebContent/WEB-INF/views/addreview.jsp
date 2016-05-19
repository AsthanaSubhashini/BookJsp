<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Add Review</title>
</head>
<body>
	<jsp:include page="headeruser.jsp"/>
	<div class="row" style="margin-top: 18em">
		<div class="col-md-4"></div>
		<div class="col-md-4" style="border: 1px solid green; padding: 10px;">
		<h4 align="center">
				Welcome ${session.user}
			</h4>
			<form method="post" action="AddReview">
				<input type="text" name="review" class="form-control" style="height: 10em"> <input
					type="hidden" name="isbn" value="${isbn}"> <br><input
					type="submit" name="Add Review" class="btn btn-default" style="float: right">
			</form>
		</div>
	</div>
</body>
</html>