<%@page import="com.grownited.bean.OrderBean"%>
<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New OrderDetail</title>
</head>
<body>
	<form action="saveorderdetail" method="post">

<%
		List<OrderBean> listOrders = (List<OrderBean>) request.getAttribute("listOrders");
	%>
	

		
		<br><BR>
		 Order <select name="orderId">

			<%for(OrderBean ob:listOrders){ %>
			<option value="<%=ob.getOrderId()%>"><%=ob.getTotaleAmount() %></option>
			<%
				}
			%>
		</select><br><br>
		
	
<%
	List<ProductBean> listProducts =(List<ProductBean>)request.getAttribute("listProducts");
 %>
		
		<br><BR>
		 Product <select name="productId">

			<%
				for (ProductBean pb : listProducts) {
			%>
			<option value="<%=pb.getproductId()%>">
			<%=pb.getproductName()%></option>
			<%
				}
			%>
		</select><br><br>
		
<% List<StatusBean> list =(List<StatusBean>)request.getAttribute("list");%>

		<br><br>
		Status <select name="statusId">
		
		  <% for(StatusBean sb:list){%>
		<option value="<%=sb.getStatusId() %>"><%=sb.getStatus() %></option>
		
		<%} %>
		
		
		</select>
		<br><br>
		
		Quantity : <input type="text" name="quantity"/><br><br>
		Price : <input type="text" name="price"/><br><br>
		
		<input type="submit" value="Add new orderdetail"/>
		
	
	<br>
	</form>
	<br>
	<a href="listorderdetail">List Order Detail</a>
</body>
</html>