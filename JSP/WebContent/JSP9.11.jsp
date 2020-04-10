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
		double i = (int) (Math.random() * 100) + 1;
		if (i <= 50) {
	%><jsp:forward page="bad.jsp">
		<jsp:param value="<%=i%>" name="number" />
	</jsp:forward>
	<%
		} else {
	%><jsp:forward page="good.jsp">
		<jsp:param value="<%=i%>" name="number" />
	</jsp:forward>
	<%
		}
	%>
</body>
</html>