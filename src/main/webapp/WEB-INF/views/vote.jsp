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


	<div class="container">
		<div>
			Navigation: <a href="/review">Parties Review Options</a>
		</div>
		<h2 class="display-4">Pizza Options</h2>







		<form action="/add" method="post">


			<table class="table">
				<thead>
					<tr>
						<th>Name</th>
						<th>Description</th>
						<th>Votes</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="classroom" items="${partyOptions}">
						<tr>

							<td>${classroom.name}</td>
							<td>${classroom.description}</td>
							<td>${classroom.votes}</td>
							<td><a href="/incrementvote?id=${classroom.id}">vote! </a></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
			<br>
			<div>
				<h2 class="display-6">Add an Option</h2>
				<br> Name: <input type="text" name="Name" /> Description: <input
					type="text" name="Description" />
				<button type="submit">Add</button>

			</div>



		</form>





	</div>



</body>
</html>