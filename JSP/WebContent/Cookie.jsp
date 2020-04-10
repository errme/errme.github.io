<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
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
		Cookie c = new Cookie("cnNameID", URLEncoder.encode("庞焜", "gbk"));
		c.setMaxAge(24 * 3600);
		response.addCookie(c);
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("cnNameID")) {
				out.println(cookie.getName() + " " + java.net.URLDecoder.decode(cookie.getValue()) + "<br>");
			}
		}
	%>
</body>
</html>