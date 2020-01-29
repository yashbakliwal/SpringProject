<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Login For Admin</h1>
	</center>
	 
	 <form action="/admin" method="get">
		<div class="w3-container w3-teal">

			<div class = "w3-container">
				<label for="username"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="username" required>  <label
					for="password"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required> 
				<button class = "w3-btn w3-black" type="submit"><a href="/admin">Submit</a></button>
			</div>

       		
		</div>
	</form>
</body>
</html>