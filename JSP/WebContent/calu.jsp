<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- <body bgcolor="#000FFF"> -->
<body>
	<%
		String shu1 = request.getParameter("s1");
		String shu2 = request.getParameter("s2");
		String tx = request.getParameter("type");
		double result = 0.0;
		if (tx.equals("+")) {
			result = Double.parseDouble(shu1)+Double.parseDouble(shu2);
		} else if (tx.equals("-")) {
			result = Double.parseDouble(shu1)-Double.parseDouble(shu2);
		} else if (tx.equals("*")) {
			result = Double.parseDouble(shu1)*Double.parseDouble(shu2);
		} else {
			result = Double.parseDouble(shu1)/Double.parseDouble(shu2);
		}
	%>
	<h1>
		结果是<%=result%></h1>
</body>
</html>