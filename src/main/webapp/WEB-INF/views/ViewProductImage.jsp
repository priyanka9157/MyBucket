<%@page import="com.grownited.bean.ProductImageBean"%>
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
<h2>ProductImage URL</h2>

	<%
	ProductImageBean productImageBean = (ProductImageBean) request.getAttribute("productImageBean");
	%>

	ProductImageId :<%=productImageBean.getProductImageId()%><br><br>
	 ProductId :<%=productImageBean.getProductId()%><br><br>
	 Deleted :<%=productImageBean.getDeleted()%><br>
</body>
</html>