<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>New Product Image </h2>
<% List<ProductBean> list = (List<ProductBean>) request.getAttribute("listProducts");%>
    	<form action="saveproductimage" method="post">
		
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
		<input type="submit" value="saveproductimage"/><br><br>

	</form>
	<a href="listproductimage">List Product Image</a> 
</body>
</html>