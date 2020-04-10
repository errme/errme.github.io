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
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("username");
		String pass = request.getParameter("password");
		System.out.println("form username = " + name);
		System.out.println("form password = " + pass);
		session.setAttribute("key_name", name);
		System.out.println("session username = " + name);
		session.setAttribute("key_pass", pass);
		System.out.println("session password = " + pass);
		if (name.toString() == null || pass.toString() == null || name.toString() == "" || pass.toString() == "") {
			// 	request.getRequestDispatcher("/error.jsp").forward(request, response);
			response.sendRedirect("error.jsp");
		} 
		else if (name.equalsIgnoreCase("Canger") && pass.equalsIgnoreCase("abc")) {
			response.sendRedirect("index.jsp");
		} 
		// 	else if (name == "Canger" && pass == "abc") {
		// 			response.sendRedirect("index.jsp");
		// 		} 不能用
		else {
			response.sendRedirect("error.jsp");
		}
	%>
</body>
</html>