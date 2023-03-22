<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>onlineGrocery | New Order</title>
</head>
<body>
<form action="saveorder" method="post">
		OrderDate : <input type="text" name="orderDate"/>
		<br><br>
		totaleAmount : <input type="number" name="totaleAmount"/>

		<br><br>
		<input type="submit" value="Save Category"/>

	</form>
	<a href="listcategories">List Category</a>
</body>
</html>