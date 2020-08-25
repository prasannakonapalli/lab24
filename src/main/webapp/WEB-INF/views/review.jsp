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
			Navigation: <a href="/parties">Parties</a> > <a href="/vote">Options & votes</a>
		</div>
		<h2 class="display-4">Pizza Options</h2>
 
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



					</tr>
				</c:forEach>
			</tbody>
		</table>




		</form>





	</div>



</body>
</html>