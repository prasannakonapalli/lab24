<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>


	<div class="container">
		<div class="display-6">
			Navigation: <a href="/">Back to Homepage</a>
		</div>
		<br>
		<div>
			<h2 class="display-10">Party Admin</h2>
		</div>
		<br>
		<div>


			<c:forEach var="party" items="${parties}">

				<ul>
					<li>${party.name}-${party.date}<!--<c:url var = "url"    value = "/editAdmin?id=${party.id}&name=${party.name}&date=${party.date}"/>
					--> <a href="/editAdmin?id=${party.id}">Edit</a> <a
						href="/deleteAdmin?id=${party.id}">Delete</a>
					</li>

				</ul>

			</c:forEach>



		</div>

		<br>
		<div>
			<a href="/addAdmin">Add a Party</a>
		</div>


	</div>



</body>
</html>