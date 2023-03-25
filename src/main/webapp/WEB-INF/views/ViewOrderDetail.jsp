<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.grownited.bean.OrderDetailBean"%>
    <%@page import="java.util.List"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>View OrderDetail</h2>

	<%
	OrderDetailBean orderDetailBean = (OrderDetailBean) request.getAttribute("orderDetailBean");
	%>

	OrderDetailId :
	<%=orderDetailBean.getOrderDetailId() %>
	<br><br>
	Product Name :
	<%=orderDetailBean.getproductName() %>
	<br> 
</body>
</html>