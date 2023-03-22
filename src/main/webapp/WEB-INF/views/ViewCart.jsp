<%@page import="com.grownited.bean.CartBean"%>
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
<h2>View Cart</h2>

	<%
	CartBean cartBean = (CartBean) request.getAttribute("cartBean");
	%>

	CartId :
	<%=cartBean.getCartId()%><br> CartId :<%=cartBean.getQuantity()%>
	<br> 
	ProductName :<%=cartBean.getProductName() %><br> <%=cartBean.getUserId() %>
	<br>
	ProductQuantity :<%=cartBean.getQuantity() %>
	<br>
	Deleted :
	<%=cartBean.isDeleted()%><br>
</body>
</html>