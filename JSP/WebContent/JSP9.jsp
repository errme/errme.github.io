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
		int a = (int) (Math.random() * 100) + 1;
		// 		Integer aa = new Integer((int) (Math.random() * 100));
		// 		request.setAttribute("ran", aa);
		// 		System.out.println("随机数aa=" + aa.intValue());
		if (a >= 60) {
			// 			RequestDispatcher cj = request.getRequestDispatcher("good1.jsp");
			// 			cj.forward(request, response);
			request.setAttribute("score", a);

			// 			System.out.println("request.getRequestDispatcher('/good1.jsp');");
			request.getRequestDispatcher("/JSP9_1.jsp").forward(request, response);
		} else {
			// 			RequestDispatcher cj = request.getRequestDispatcher("bad1.jsp");
			// 			cj.forward(request, response);
			request.setAttribute("score", a);

			// 			System.out.println("request.getRequestDispatcher('/bad1.jsp');");
			request.getRequestDispatcher("/JSP9_2.jsp").forward(request, response);
		}
	%>



</body>
</html>