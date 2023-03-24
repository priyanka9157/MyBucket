<%@page import="com.grownited.bean.AddressBean"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>onlineGrocery | New Order</title>
</head>
<body>
<form action="saveorder" method="post">
		OrderDate : <input type="text" name="orderDate"/>
		<br><br>
		totaleAmount : <input type="number" name="totaleAmount"/>
		<br><br>
		<%
	List<AddressBean> listAddress =(List<AddressBean>)request.getAttribute("listAddress"); %>
		<br><BR>
		 Address <select name="addressId">

			
			<%for(AddressBean ab:listAddress){ %>
			
			<option value="<%=ab.getAddressId() %>"><%=ab.getAddressLine() %>
		<%=ab.getPincode() %><%=ab.getLandMark() %><%=ab.getCity()%><%=ab.getState() %></option>
			<%
				}
			%>
		</select><br><br>
		<br><br>
		<% List<StatusBean> list =(List<StatusBean>)request.getAttribute("list");%>
		
		<br><br>
		Status <select name="statusId">
		
		<% for(StatusBean sb:list){%>
		
		<option value="<%=sb.getStatusId() %>" >
					<%=sb.getStatus() %></option>
					
					<%} %>
					
		</select>
		<br><br>
		<input type="submit" value="Add Order"/>

	</form>
	<a href="listorders">List Order</a>
</body>
</html>