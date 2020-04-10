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
		<input type="checkbox" name="choice" value="JavaEE教程">&nbsp;JavaEE教程<br>
		<input type="checkbox" name="choice" value="计算机导论">&nbsp;计算机导论<br>
		<input type="checkbox" name="choice" value="数据库原理">&nbsp;数据库原理<br>
		<input type="checkbox" name="choice" value="计算机网络">&nbsp;计算机网络<br>
		<br> <br> <INPUT TYPE="submit" value="加入购物车" name="submit">
	</form>
	<%
		request.setCharacterEncoding("utf-8");
		String goodsName[] = request.getParameterValues("choice");
		if (goodsName != null) {
			HashMap cart = (HashMap) session.getAttribute("cartID");

			if (cart == null)
				cart = new HashMap();
			int k = cart.size();
			System.out.println("k = " + k);
			for (int i = 0; i < goodsName.length; i++) {
				cart.put(k + i, goodsName[i]);

			}

			session.setAttribute("cartID", cart);
			System.out.println("HashMap已经保存到session中&nbsp;键值对总数为" + cart.size());
		}
	%>
	<p>
		逛逛水果店: <a href="fruitstore.jsp">水果店</a>
	</p>
	<p>
		购物结束: <a href="goodsorder.jsp">去结账</a>
	</p>

</body>
</html>