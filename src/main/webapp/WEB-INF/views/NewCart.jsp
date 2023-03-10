<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body>
<h2>Cart </h2>
<%
		List<ProductBean> list = (List<ProductBean>) request.getAttribute("list");
	%>
<form action="savecart" method="post">


		Quantity : <input type="text" name="quantity"/><br><br>
		
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
		<input type="submit" value="add Cart"/><br><br>

	</form>
	<a href="listcart">List Cart</a> 

</body>
</html>