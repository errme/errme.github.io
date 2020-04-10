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
		Double obj = Math.random() * 10;
		double d = Double.valueOf(obj);
		session.setAttribute("str", obj);
		System.out.println("d = " + d);
		if (d > 5) {
			response.sendRedirect("5.jsp");
		}
	%>
	<h1><%=d%></h1>
</body>
</html>