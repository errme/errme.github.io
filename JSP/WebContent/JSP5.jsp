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
		double a = 3, b = 4, c = 5;
	%>
	<br> 加载 trangle.jsp计算三边为<%=a%>,<%=b%>,<%=c%>的三角形面积：
	<br>
	<%-- <%include是动作组件，属于动态包含:包含的是trangle.js编译好的 %> --%>
	<jsp:include page="trangle.jsp">
		<jsp:param name="sideA" value="<%=a%>" />
		<jsp:param name="sideB" value="<%=b%>" />
		<jsp:param name="sideC" value="<%=c%>" />
	</jsp:include>
</body>
</html>