<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
	
	<center>
		<div class = "w3-container w3-teal">
		<h1>Welcome to Fico Dhabha</h1>
		</div>
	</center>
	
	<form action="/save-user" method="get">

		<div class="w3-container w3-teal w3-padding-16" >

			<div class="w3-container w3-teal w3-padding-16">

			<label for="username"><b>Username</b></label> <input type="text" class = "w3-input"
					placeholder="Enter Username" name="username" required> 
					
			<label for="firstname"><b>FirstName</b></label> <input type="text" class = "w3-input"
					placeholder="Enter Username" name="firstname" required> 
			<label
					for="lastname"><b>LastName</b></label> <input type="text" class = "w3-input"
					placeholder="Enter Username" name="lastname" required> 
			<label
					for="password"><b>Password</b></label> <input type="password" class = "w3-input"
					placeholder="Enter Password" name="password" required> 
			<label
					for="email"><b>email</b></label> <input type="text" class = "w3-input"
					placeholder="Enter Username" name="email" required>
			</div>

			<button class = "w3-button w3-black" type="submit"> <a href="/login">Submit</a></button>
		</div>
			
	</form>
</body>
</html>