<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>


	<div class="container card">
		<div>
			Navigation:  <a href="/parties">Parties</a> ><a href="/vote">Options & votes</a> > <a href="/review">Review
				Options</a> > 
		</div>
		<br>
		<div>
			<h2 class="display-8">Party: <c:out value="${party.name}"/></h2>
			<c:out value="${party.date}"/>
			<br>
			
			<h3 class="display-6">RSVPs</h3>
		</div>
		<table class="table table-striped">
			<tr>
				
				<th>Attendee</th>
				<th>Comment</th>
			</tr>

			<c:forEach var="rsvp" items="${rspvs}">

				<tr>
					
					<td><c:out value="${rsvp.attendee}" /></td>
					<td>${rsvp.comment}</td>
				</tr>

			</c:forEach>
		</table>
		

			
		
			
			
			

		</div>
		
		


</body>
</html>