<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body>
	<center>
		<h1>Welcome to Fico Dhabha</h1>
	</center>
	<form action="/menu" method="get">

		<div class="container">

			<div style="position: relative; center: 8px; bottom: 20px;">


					<label for="Menu"><b>Menu</b></label> <input type="text"
					placeholder="Enter Menu" name="Menu" required>
		<br><br><br><br><br><br><br><br><br><br>	<button type="submit"> <a href="/menu">Place Order</a></button>
		</div>
			
		<div class="container" style="background-color: #f1f1f1">
		
		</div>
	</form>
</body>
</html>