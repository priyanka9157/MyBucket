<%@page import="com.grownited.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Product Description</h2>

	<%
	ProductBean productBean = (ProductBean) request.getAttribute("productBean");
	%>

	ProductId :
	<%=productBean.getproductId()%><br> ProductName :<%=productBean.getproductName()%>
	<br>
	ProductDescription :<%=productBean.getdescription() %><br> 
	ProductQuantity : <%=productBean.getquantity() %><br>
	ProductPrice:<%=productBean.getprice() %>
	<br>
	 Deleted :
	<%=productBean.getDeleted()%><br>
</body>
</html>