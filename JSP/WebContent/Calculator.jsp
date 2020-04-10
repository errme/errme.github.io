<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#00FFFF">
	<form action="calu.jsp" method="post">
		<div align="center">
			<font size="5">简易计算器的制作</font><br>
			第一个数<input type="text" name="s1"><br>
			第二个数<input type="text" name="s2"><br>
			操作类型<select name="type">
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select> <input type="submit" value="计算">
		</div>
	</form>
</body>
</html>