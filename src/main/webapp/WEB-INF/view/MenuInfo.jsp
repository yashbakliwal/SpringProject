<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/MenuInfo" method="get">
<label for="Menuname"><b>Item</b></label> <input type="text"
					placeholder="Enter Menuname" name="Menuname" required>  <label
					for="price"><b>price</b></label> <input type="text"
					placeholder="Enter price" name="price" required>
					 <button type="submit"><a href="/menu_view">Submit</button>
</form>
</body>
</html>