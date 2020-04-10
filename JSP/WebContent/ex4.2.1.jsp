<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");
		String user = request.getParameter("username");
String password = request.getParameter("password");
		if(user.trim().equals("") || password.trim().equals("")){
			%>
			<jsp:forward page="ex4.2.2.html"></jsp:forward>
			<%
		}
	%>
	用户名是:<%=user%>,密码是<%=password%>
</body>
</html>