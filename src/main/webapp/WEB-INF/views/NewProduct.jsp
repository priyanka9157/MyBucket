<%@page import="com.grownited.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>onlineGrocery | New Product</title>
</head>
<body>
<form action="saveproduct" method="post">


		ProductName : <input type="text" name="productName"/><br><br>
		Description : <input type="text" name="description"/><br><br>
		Quantity : <input type="text" name="quantity"/><br><br>
		Price : <input type="number" name="price"/><br><br>
		TopSelling : <input type="text" name="topSelling"/><br><br>
		MostValue : <input type="text" name="mostValue"/><br><br>
		BrandName : <input type="text" name="brandName"/>

		<br><br>
		<input type="submit" value="saveproduct"/><br><br>

	</form>
	<a href="listproducts">List Product</a> 
</body>
</html>