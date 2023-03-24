<%@page import="com.grownited.bean.AddressBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>

<h3>List Address</h3>
 
 <%
	List<AddressBean> listAddress =(List<AddressBean>)request.getAttribute("listAddress");
 %>
<table border="1">
	<tr>
		<th>AddressId</th>
		<th>AddressLine</th>
		<th>LandMark</th>
		<th>Pincode</th>
		<th>City</th>
		<th>State</th>
		<th>Deleted?</th>
		<th>DefualtInd</th>
		<th>Action</th>
		
		
	</tr>


<%for(AddressBean ab:listAddress){ %>
	<tr>
		<td><%=ab.getAddressId() %></td>
		<td><%=ab.getAddressLine() %></td>
		<td><%=ab.getPincode() %></td>
		<td><%=ab.getLandMark() %>
		<td><%=ab.getCity()%></td>
		<td><%=ab.getState() %></td>
		<td><%=ab.isDeleted() %></td>
		<td><%=ab.getDefaultInd() %></td>
		<td><a href="deleteaddress/<%=ab.getAddressId()%> ">Delete</a>
		<a href="viewaddress/<%=ab.getAddressId() %>">View</a>
						
						</td>
		
		</tr>

	<% } %>
</table>
 	
</body>
</html>