<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>出错了</title>
</head>
<body>
	<%
		// 		request.setCharacterEncoding("utf-8");
		String username = session.getAttribute("key_name").toString();
		String password = session.getAttribute("key_pass").toString();
		if (username == "" || password == "" || username == null || password == null) {
			out.println("<h1><font color='red' size='5'>用户名和密码不可以为空!</font></h1>");
			out.println("<a href='login.jsp'>返回登录</a>");			
		}
		else {
			out.println("<h1><font color='red' size='5'>用户名和密码不正确!</font></h1>");
			out.println("<a href='login.jsp'>返回登录</a>");
		}
	%>
</body>
</html>