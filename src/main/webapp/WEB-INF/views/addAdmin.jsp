<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Party Page</title>
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
			<h2 class="display-10">Add a Party</h2>
		</div>
		<form action="/addAdmin" method="post">


			<div>
				Name: <input type="text" name="name" />
			</div>
			<br>
			<div>
				Date: <input type="date" name="date" placeholder="mm/dd/yyyy" />
			</div>
			<br>
			<button type="submit">Submit</button>



		</form>




	</div>



</body>
</html>