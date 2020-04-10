<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		HashMap cart = (HashMap) session.getAttribute("cartID");
		if (cart == null)
			out.println("<strong>购物车中，还没有商品！</strong>");
		else {
			out.println("<strong>按照选购的顺序，购物车中商品如下&nbsp;:&nbsp;</strong>\n");
			Iterator iterator = cart.values().iterator();
			while (iterator.hasNext()) {
				String gname = iterator.next().toString();
				out.println("<br><br>商品名称为&nbsp;:&nbsp;" + gname);
			}
		}
	%>
	<p>
		显示结束: <a href="payment.jsp">去支付</a>
	</p>
</body>
</html>