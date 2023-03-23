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
<%
		List<OrderBean> list = (List<OrderBean>) request.getAttribute("lisrOrder");
	%>

	<form action="saveorderdetail" method="post">
		
		<br><BR>
		 Order <select name="orderId">

			<%
				for (OrderBean ob : list) {
			%>
			<option value="<%=ob.getOrderId()%>">
			<%
				}
			%>
		</select><br><br>
		
		<%
		List<ProductBean> listProduct = (List<ProductBean>) request.getAttribute("listProducts");
	%>

	<form action="saveorderdetail" method="post">
		
		<br><BR>
		 Product <select name="productId">

			<%
				for (ProductBean pb : listProduct) {
			%>
			<option value="<%=pb.getproductId()%>">
			<%=pb.getproductName()%></option>
			<%
				}
			%>
		</select><br><br>
		Quantity : <input type="text" name="quantity"/>
		Price : <input type="text" name="price"/>
		
		<input type="submit" value="Add SubCategory"/>
		
		<%
		List<StatusBean> listStatus = (List<StatusBean>) request.getAttribute("listStatus");
	%>

	<form action="saveorderdetail" method="post">
		
		<br><BR>
		 Status <select name="statusId">

			<%
				for (StatusBean pb : listStatus) {
			%>
			<option value="<%=pb.getStatusId()%>">
			<%=pb.getStatus()%></option>
			<%
				}
			%>
		</select><br><br>
	</form>
	<br>
	<br>
	<a href="listsubcategory">List SubCategory</a>
</body>
</html>