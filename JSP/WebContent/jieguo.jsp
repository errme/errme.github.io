<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新用户注册信息显示</title>
</head>
<body>
	<h1>新用户注册信息显示</h1>
	<!-- 	使用request对象获取表单提交的数据 -->
	<%
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String userage = request.getParameter("userage");
		String gender = request.getParameter("gender");
		String hobby[] = request.getParameterValues("hobby");
		String area = request.getParameter("area");
		String selfintroducation = request.getParameter("contents");
	%>
	<!-- 展示用戶注册信息 -->
	<%
		out.println("姓名 : " + username);
		out.println("<br><br>");
		out.println("密码  :" + password);
		out.println("<br><br>");
		out.println("年龄 : " + userage);
		out.println("<br><br>");
		out.println("性别 : " + gender);
		out.println("<br><br>");
		out.println("爱好 : ");
		for(int i = 0; i < hobby.length; i++){
			String str = hobby[i];
			out.println(str + " ");
		}
		out.println("<br><br>");
		out.println("地区 : " + area);
		out.println("<br><br>");
		out.println("介绍 : " + selfintroducation);
	%>
</body>
</html>