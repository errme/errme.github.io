<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

</style>
<body>
	<%
		// 	String b = request.getParameter("score");
		// 	String b = (Integer)request.getAttribute("score")
		Integer b = (Integer) request.getAttribute("score");
		// int r = Integer.parseInt(request.getAttribute("aa").toString());
		// 	int z = Integer.parseInt(b);
		if (b == 100) {
	%>你的得分是<%=b%>,优秀!竟然满分!牛!<%
		} else if (b >= 85) {
	%>你的得分是<%=b%>,优秀!<%
		} else if (b >= 75) {
	%>你的得分是<%=b%>,良好!<%
		} else {
	%>你的得分是<%=b%>,及格!<%
		}
	%>


	<%-- 	<%String s = request.getParameter("number");%> --%>
	<%-- 	你的得分是<%out.println(s);%>;分数不错！继续努力 --%>
</body>
</html>