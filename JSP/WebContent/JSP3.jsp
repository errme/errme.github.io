<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 字体颜色 大小 -->
	<font size="3" color="blue">抽取字符串"H:\me\Java\Eclipse\JavaEE\Course\JSP\WebContent\index.jsp"</font>
	<%!String s = "H:\\me\\Java\\Eclipse\\JavaEE\\Course\\JSP\\WebContent\\index.jsp";%>
	<%--Java程序段 --%>
	<%
		int index = s.lastIndexOf("\\");
		String str = s.substring(index + 1);
	%><br>
	<%=str%>
</body>
</html>