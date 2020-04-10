<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaEE网站欢迎你</title>
</head>
<body>
	<%
		// 		request.setCharacterEncoding("utf-8");
		String username = session.getAttribute("key_name").toString();
		if(username == null || username == ""){
			response.sendRedirect("login.jsp");
		}
	%>
	<h1>尊敬的<font color="red" size="6"><%=username %></font>,欢迎访问《JavaEE编程技术》课程网站!</h1>
	<br>
	<br>
	<a href="login.jsp">退出系统</a>
</body>
</html>