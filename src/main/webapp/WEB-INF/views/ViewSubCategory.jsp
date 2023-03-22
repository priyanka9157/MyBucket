<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>View SubCategory</h2>

	<%
	SubCategoryBean subcategoryBean = (SubCategoryBean) request.getAttribute("subcategoryBean");
	%>

	SubCategoryId :
	<%=subcategoryBean.getSubCategoryId()%><br> SubCategoryName :<%=subcategoryBean.getSubCategoryName()%>
	<br> Deleted :
	<%=subcategoryBean.isDeleted()%><br>
</body>
</html>