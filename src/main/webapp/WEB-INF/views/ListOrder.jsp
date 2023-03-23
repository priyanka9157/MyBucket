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
	List<OrderBean> listOrder =(List<OrderBean>)request.getAttribute("listOrder");
 %>
<table border="1">
	<tr>
		<th>OrderId</th>
		<th>OrderDate</th>
		<th>TotalAmount</th>
		
	</tr>


<%for(OrderBean ob:listOrder){ %>
	<tr>
		<td><%=ob.getOrderId() %></td>
		<td><%=ob.getOrderDate() %></td>
		<td><%=ob.getTotaleAmount() %></td>
	
		
		</tr>

	<%} %>
	</table>
	 
</body>
</html>