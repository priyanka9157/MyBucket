<%@page import="com.grownited.bean.AddressBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>View Category</h2>

	<%
	AddressBean addressBean = (AddressBean) request.getAttribute("addressBean");
	%>

	AddressId :
	<%=addressBean.getAddressId()%><br> AddressName :<%=addressBean.getAddressId() %>
	<br> 
	
</body>
</html>