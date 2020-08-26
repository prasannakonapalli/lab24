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
			Navigation: <a href="vote">Options & votes</a> > <a href="review">Review
				Options</a> > <a href="adminPage">Admin</a>
		</div>
		<br>
		<div>
			<h2 class="display-4">Parties</h2>
			<br>
			<h3 class="display-6">Search</h3>
		</div>
		<form action="/searchname" method="post">


			<div>
				By Name: <input type="text" name="Name1" />

			</div>
			<br>
			<div>
				By Date: <input type="radio" name="radiobutton" id="all" value="all"
					required> <label for="all">all time</label> <input
					type="radio" name="radiobutton" id="future" value="future">
				<label for="future">future only</label> <input type="radio"
					name="radiobutton" id="past" value="past"> <label
					for="past">past only</label>

			</div>

			<button type="submit">Search</button>
			<br>
			<br>
			<c:forEach var="classroom" items="${parties}">

				<ul>
					<li>${classroom.name}-${classroom.date}<br></li>
				</ul>





			</c:forEach>


		</form>




	</div>



</body>
</html>