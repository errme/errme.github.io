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
		request.getSession(true);
		Object count = application.getAttribute("countid");
		if (session.isNew()) {
			if (count == null) {
				Integer a = Integer.valueOf(1);
				application.setAttribute("countid", a);

			} else {
				Integer i = (Integer) count;
				application.setAttribute("countid", i.intValue() + 1);
			}
		}
		Integer icount = (Integer)application.getAttribute("countid");
		out.println("你是第"+icount.intValue()+"访客");
		// 		setCount();
		// 		String counter = String.valueOf(count);
		// 		session.setAttribute("countid", counter);
	%>
</body>
</html>