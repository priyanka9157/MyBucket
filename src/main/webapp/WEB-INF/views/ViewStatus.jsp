<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="ch.qos.logback.core.status.StatusBase"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>View Status</h2>

	<%
	StatusBean statusBean = (StatusBean) request.getAttribute("statusBean");
	%>

	StatusId :
	<%=statusBean.getStatusId()%><br> Status :<%=statusBean.getStatus()%>
	<br> Deleted :
	<%=statusBean.getDeleted()%><br>
</body>
</html>