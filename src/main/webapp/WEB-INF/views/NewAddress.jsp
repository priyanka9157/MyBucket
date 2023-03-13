<%@page import="com.grownited.bean.AddressBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>onlineGrocery | New Address</title>
</head>
<body>
<form action="saveaddress" method="post">
		AddressLine : <input type="text" name="addressLine"/><br><br>
		LandMark : <input type="text" name="landmark"/><br><br>
		Pincode : <input type="text" name="pincode"/><br><br>
		City : <input type="text" name="city"/><br><br>
		State : <input type="text" name="state"/><br><br>

		<br><br>
		<input type="submit" value="Save Address"/>

	</form>
	<br>
	<br>
	<a href="listaddress">List Address</a> 
</body>
</html>