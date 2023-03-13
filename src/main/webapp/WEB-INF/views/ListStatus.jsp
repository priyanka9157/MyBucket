<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>

<h2>Status</h2>
<%
 List<StatusBean> listStatus =(List<StatusBean>)request.getAttribute("listStatus");
%>
<table border="1">
	<tr>
			<th>StatusId</th>
			<th>Status</th>
			<th>Deleted?</th>
			<th>Action</th>
			
	</tr>

<% for(StatusBean sb:listStatus){%>

	<tr>
			<td><%=sb.getStatusId() %></td>
			<td><%=sb.getStatus() %></td>
			<td><%=sb.getDeleted()%></td>
			<td><a href="deletestatus"<%=sb.getStatusId() %>>Delete</a>
			<a href="viewstatus/<%=sb.getStatusId() %>">View</a>
		</td>
	</tr>

	<%} %>
	</table>
	
	
	
</body>
</html>