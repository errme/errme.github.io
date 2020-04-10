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
		// 	String b = request.getParameter("score");
		// 	String b = (Integer)request.getAttribute("score")
		Integer b = (Integer) request.getAttribute("score");
		// int r = Integer.parseInt(request.getAttribute("aa").toString());
		// 	int z = Integer.parseInt(b);
	%>
	你的得分是<%=b %>,不及格!
</body>
</html>