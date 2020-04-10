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
		if (session.getAttribute("u") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	用戶,<%=session.getAttribute("u")%>你好,欢迎访问教务管理系统!!!
	<a href="loginout.jsp">注销</a>
</body>
</html>