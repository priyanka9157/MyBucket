<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.grownited.bean.OrderBean"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>View Order</h2>

	<%
	OrderBean orderBean = (OrderBean) request.getAttribute("orderBean");
	%>

	OrderId :
	<%=orderBean.getOrderId()%><br> 
	UserId:<%=orderBean.getUserId()%><br>
		AddressId:<%=orderBean.getAddressId()%><br>
		StatusId:<%=orderBean.getStatusId()%><br>
		Order Date:<%=orderBean.getOrderDate()%><br>
		Total Amount:<%=orderBean.getTotaleAmount()%><br>
		Status:<%=orderBean.getStatus()%><br>
		Deleted: <%=orderBean.getDeleted()%> <br>

</body>
</html>