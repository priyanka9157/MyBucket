<%@page import="com.grownited.bean.OrderBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>

<h3>List Order</h3>
 
 <%
	List<OrderBean> listOrders =(List<OrderBean>)request.getAttribute("listOrders");
 %>
<table border="1">
	<tr>
		<th>OrderId</th>
		<th>UserId</th>
		<th>AddressId</th>
		<th>StatusId</th>
		<th>OrderDate</th>
		<th>TotaleAmount</th>
		<th>status</th>
		<th>Deleted</th>
		<th>Action</th>
		
	</tr>


<%for(OrderBean ob:listOrders){ %>
	<tr>
		<td><%=ob.getOrderId() %></td>
		<td><%=ob.getUserId() %></td>
		<td><%=ob.getAddressId() %></td>
		<td><%=ob.getStatusId() %></td>
		<td><%=ob.getOrderDate() %></td>
		<td><%=ob.getTotaleAmount() %></td>
		<td><%=ob.getStatus() %></td>
		<td><%=ob.getDeleted() %></td>
		<td><a href="deleteorder/<%=ob.getOrderId()%>">Delete</a>
					<a href="vieworder/<%=ob.getOrderId() %>">View</a></td>
		
		</tr>

	<%} %>
	</table>
	 
</body>
</html>