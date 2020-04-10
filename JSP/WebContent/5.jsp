<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
double d= Double.valueOf(session.getAttribute("str").toString());
%>
<h1><%=d %></h1>
</body>
</html>