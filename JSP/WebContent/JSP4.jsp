<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page info="清华大学"%>
<%
	String s = getServletInfo();
%>
<%!Date data = new Date();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=s%>是中国著名的高等学府！
	<br>
	<br>
	<%=s%>出版社是中国著名的出版社！
	<br>
	<br>
	<%
		out.print("今天的日期是：" + data);
	%>
</body>
</html>