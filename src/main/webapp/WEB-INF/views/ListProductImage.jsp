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
<%
	List<ProductImageBean> list =(List<ProductImageBean>)request.getAttribute("listProductImage");
 %>
<table border="1">
	<tr>
			<th>ProductImageId</th>
			<th>ProductId</th>
			<th>Deleted?</th>
			<th>Action</th>
			<th>ImageURL</th>
			
	</tr>
<%for(ProductImageBean pi:list){ %>
	<tr>
		<td><%=pi.getProductImageId() %></td>
		<td><%=pi.getProductId() %></td>
		<td><%=pi.getDeleted() %></td>
		<td><a href="deleteproductImage/<%=pi.getProductImageId()%>">Delete</a></td>
		<td><a href="viewcart/<%=pi.getProductImageId() %>">URL</a></td>
	</tr>

	<%} %>
	</table>
</body>
</html>