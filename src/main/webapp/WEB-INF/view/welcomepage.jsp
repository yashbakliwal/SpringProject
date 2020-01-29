<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
	<center>
		<h1>Welcome to Fico Dhabha</h1>
	</center>
	<form action="/save-user" method="get">

		<div class="container">

			<div style="position: relative; center: 8px; bottom: 20px;">

			<label for="username"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="username" required> <label
					for="firstname"><b>FirstName</b></label> <input type="text"
					placeholder="Enter Username" name="firstname" required> <label
					for="lastname"><b>LastName</b></label> <input type="text"
					placeholder="Enter Username" name="lastname" required> <label
					for="password"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required> <label
					for="email"><b>email</b></label> <input type="text"
					placeholder="Enter Username" name="email" required>
			</div>

			<button type="submit"> <a href="/login">Submit</a></button>
		</div>
			
		<div class="container" style="background-color: #f1f1f1">
		
		</div>
	</form>
</body>
</html>