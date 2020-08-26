<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Edit</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>


	<div class="container">
		<div>
			Navigation: <a href="/">Back to Party List</a>
		</div>
		<br>
		<div>
			<h2 class="display-10">Edit Party</h2>
		</div>
		<form action="/editAdmin?id=${party.id}" method="post">

			<!--  <div hidden>
				Id: <input type="number" name="id" value="${party.id}" />
			</div>-->
			<div>
				Name: <input type="text" name="name" value="${party.name}" />
			</div>
			<br>
			<div>
				Date: <input type="date" name="date" placeholder="mm/dd/yyyy"
					value="${party.date}" />
			</div>
			<br>
			<button type="submit">Submit</button>



		</form>




	</div>



</body>
</html>