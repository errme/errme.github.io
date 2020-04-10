<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>
</head>
<style>
body {
	text-align: center;
	font-size: 20px;
	color: #ff0000;
	background-color: #ffffff;
}

table {
	bgcolor: #000;
	border-collapse: collapse;
	margin: auto;
}

td {
	height: 30px;
	width: 120px;
	border: 2px solid #add9c0;
}
</style>
<body>
	<%
		session.invalidate();
	%>
	<form action="validate.jsp" method="post" name="loginForm">
		<table>
			<tr>
				<th colspan="2">输入用户名和密码</th>
			</tr>
			<tr>
				<td>用户:</td>
				<td><input type="text" name="username" size="20"></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="password" size="21"></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="提交">&nbsp;&nbsp;&nbsp;
					<input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>