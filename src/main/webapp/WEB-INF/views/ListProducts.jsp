<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>onlineGrocery | List Products</title>
</head>
<body>
<h3>List Products</h3>
 
 <%
	List<ProductBean> list =(List<ProductBean>)request.getAttribute("listProducts");
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
		
		</tr>

	<%} %>
	
</table>
<br>

</body>
</html>