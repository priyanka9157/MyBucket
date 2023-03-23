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
			
	</tr>
<%for(ProductImageBean pb:list){ %>
	<tr>
		<td><%=pb.getProductImageId() %></td>
		<td><%=pb.getProductId() %></td>
		<td><%=pb.getDeleted() %></td>
		<td><a href="deleteproductImage/<%=pb.getProductImageId()%>">Delete</a>
							<a href="viewcart/<%=pb.getProductImageId() %>">View</a>
						
		</td>
	</tr>

	<%} %>
	</table>
</body>
</html>