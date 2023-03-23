<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="java.util.List"%>
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
		<% List<ProductBean> list = (List<ProductBean>) request.getAttribute("listProducts");%>
    	<form action="savecart" method="post">
		
		<br><BR>
		 Product <select name="productId">

			<%
				for (ProductBean pb : list) {
			%>
			<option value="<%=pb.getproductId()%>">
				<%=pb.getproductName()%></option>
			<%
				}
			%>
		</select><br><br>

		<br><br>
		<input type="submit" value="Save Category"/>

	</form>
	<a href="listorder">List Order</a>
</body>
</html>