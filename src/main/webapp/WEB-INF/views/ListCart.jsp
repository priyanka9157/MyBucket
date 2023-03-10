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
<h3>List Cart</h3>
 
 <%
	List<CartBean> list =(List<CartBean>)request.getAttribute("list");
 %>
<table border="1">
	<tr>
			<th>CartId</th>
			<th>UserId</th>
			<th>ProductId</th>
			<th>Quantity</th>
			<th>Deleted?</th>
			<th>ProductName</th>
	</tr>
<%for(CartBean cb:list){ %>
	<tr>
		<td><%=cb.getCartId() %></td>
		<td><%=cb.getUserId() %></td>
		<td><%=cb.getProductId() %></td>
		<td><%=cb.getQuantity() %></td>
		<td><%=cb.isDeleted() %></td>
		<td><%=cb.getProductName() %></td>
	</tr>

	<%} %>
	</table>
</body>
</html>