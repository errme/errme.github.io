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
	<form action="" method="post" name="form">
		<input type="checkbox" name="choice" value="苹果">&nbsp;苹果<br>
		<input type="checkbox" name="choice" value="香蕉">&nbsp;香蕉<br>
		<input type="checkbox" name="choice" value="草莓">&nbsp;草莓<br>
		<input type="checkbox" name="choice" value="葡萄">&nbsp;葡萄<br>
		<input type="checkbox" name="choice" value="柑橘">&nbsp;柑橘<br>
		<input type="checkbox" name="choice" value="荔枝">&nbsp;荔枝<br>
		<br> <br> <input type="submit" name="submit" value="加入购物车">
	</form>
	<%
		request.setCharacterEncoding("utf-8");
		String goodsName[] = request.getParameterValues("choice");
		if (goodsName != null) {
			HashMap cart = (HashMap) session.getAttribute("cartID");
			if (cart == null) {
				cart = new HashMap();
			}
			int k = cart.size();
			System.out.println("k = " + k);
			for (int i = 0; i < goodsName.length; i++) {
				cart.put(k + i, goodsName[i]);
				System.out.println("key=" + (k + i) + " value=" + goodsName[i] + " 已保存到HashMap中.");
			}
			session.setAttribute("cartID", cart);
			System.out.println("HashMap已保存到session中&nbsp;键值对总数为" + cart.size());
		}
	%>
	<p>
		逛逛图书店: <a href="bookstore.jsp">图书店</a>
	</p>
	<p>
		购物结束: <a href="goodsorder.jsp">去结账</a>
	</p>

</body>
</html>