<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int count = 0;

	synchronized void setCount() {
		count++;
	}%>
	<%
		setCount();
		out.print("你是第" + count + "个访问本站的客户。");
	%>
</body>
</html>