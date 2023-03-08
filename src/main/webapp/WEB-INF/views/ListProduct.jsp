<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>onlineGrocery | List Product</title>
</head>
<body>
<h3>List Product</h3>
 
 <%
	List<ProductBean> list =(List<ProductBean>)request.getAttribute("list");
 %>
<table border="1">
	<tr>
		<th>ProductId</th>
		<th>ProductName</th>
		<th>Description</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>TopSelling</th>
		<th>MostValueInd</th>
		<th>BrandName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>


<%for(ProductBean pb:list){ %>
	<tr>
		<td><%=pb.getproductId() %></td>
		<td><%=pb.getproductName() %></td>
		<td><%=pb.getdescription() %></td>
		<td><%=pb.getquantity() %></td>
		<td><%=pb.getprice() %></td>
		<td><%=pb.gettopSelling() %></td>
		<td><%=pb.getmostValueInd() %></td>
		<td><%=pb.getbrandName() %></td>
		<td><%=pb.getDeleted() %></td>
		<td><a href="deleteproduct/<%=pb.getproductId()%>">Delete</a></td>
	</tr>

	<%} %>
	
</table>
</body>
</html>