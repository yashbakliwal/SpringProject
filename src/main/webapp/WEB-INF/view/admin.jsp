<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Login For Admin</h1>
	</center>
	 
	 <form action="/admin" method="get">
		<div class="container">

			<div style="position: relative; center: 8px; bottom: 20px;">


				<label for="username"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="username" required>  <label
					for="password"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required> 
			</div>

       <button type="submit"><a href="/admin">Submit</a></button>
		
		
	
					
		

		<div class="container" style="background-color: #f1f1f1">
			
			
		</div>
	</form>
</body>
</html>