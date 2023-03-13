<%@page import="com.grownited.bean.OrderDetailBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>

<h3>List OrderDetail</h3>
 
 <%
	List<OrderDetailBean> listOrderDetail =(List<OrderDetailBean>)request.getAttribute("listOrderDetail");
 %>
<table border="1">
	<tr>
		<th>OrderDetailId</th>
		<th>OrderId</th>
		<th>UserId</th>
		<th>ProductId</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>Status</th>
		
		
	</tr>


<%for(OrderDetailBean od:listOrderDetail){ %>
	<tr>
		<td><%=od.getOrderDetailId() %></td>
		<td><%=od.getOrderId() %></td>
		<td><%=od.getUserId() %></td>
		<td><%=od.getProductId() %></td>
		<td><%=od.getQuantity() %></td>
		<td><%=od.getPrice() %></td>
		<td><%=od.getStatus() %></td>
		
		
		</tr>

	<%} %>
	
</table>

</body>
</html>