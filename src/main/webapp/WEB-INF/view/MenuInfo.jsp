<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<center>
	<form class="w3-container w3-teal" action="/MenuInfo" method="get">
	<label for="Menuname"><b>Item</b></label> <input type="text"
					placeholder="Enter Menuname" name="Menuname" required>  <label
					for="price"><b>price</b></label> <input type="text"
					placeholder="Enter price" name="price" required>
					 <button class="w3-button w3-black" type="submit"><a href="/menu_view">Submit</button>
	</form>
	
</center>
</body>
</html>