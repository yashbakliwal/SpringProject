<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.fico.demo.model.Menu"%>
<%@ page import="java.util.List"%>



<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<center>
		<div class="w3-container w3-teal">
			<a href="/menu_view"><button class="w3-button w3-black"
					id="button">Add Item</button></a> <a href="/menu_view_delete"><button
					class="w3-button w3-black" id="button">Delete Item</button></a> <a
				href="/menu_view_modify"><button class="w3-button w3-black"
					id="button">Modify Item</button></a>
		</div>

		<div>
			<h2>MENU DASHBOARD</h2>
			<%
				if (request.getAttribute("list") != null) {
					List<Menu> list = (List<Menu>) request.getAttribute("list");
					System.out.print(list.size()); 
					}
			%>
			<table class="w3-container">
				<thead>
					<tr>
						<th>ItemId</th>
						<th>ItemName</th>
						<th>Price</th>
						<th>Modify</th>
						<th>Delete</th>
					</tr>
				</thead>
				
				<tbody>
					<%
						List<Menu> list = (List<Menu>)request.getAttribute("list");
						Menu item;
							for (int i = 0; i < list.size(); i++) {
								item = list.get(i);
					%>
					<tr>
						<td><%=item.getId()%></td>
						<td><%=item.getName()%></td>
						<td><%=item.getPrice()%></td>
					</tr>
					<%
						}
							
					%>
				</tbody>
				
			</table>


		</div>
	</center>
</body>
</html>