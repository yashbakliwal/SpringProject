<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

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