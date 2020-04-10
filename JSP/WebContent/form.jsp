<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新用户注册</title>
</head>
<body>
	<form action="jieguo.jsp" id="register">
		姓名:<input type="text" name="username"><br>
		<br> 密码:<input type="password" name="password"><br>
		<br> 年龄:<input type="text" name="userage"><br>
		<br> 性别:
		<input type="radio" name="gender" value="男" checked="checked" />男
		<input type="radio" name="gender" value="女" />女<br>
		<br> 爱好:
		<input type="checkbox" name="hobby" id="cb1" value="健身" />健身
		<input type="checkbox" name="hobby" id="cb2" value="阅读" />阅读 
		<input type="checkbox" name="hobby" id="cb3" value="旅游" />旅游
		<input type="checkbox" name="hobby" id="cb4" value="购物" />购物
		<input type="checkbox" name="hobby" id="cb5" value="打游戏" />打游戏<br>
		<br> 所在地区:<select name="area">
			<option value="">所在地区</option>
			<option value="北京">北京</option>
			<option value="上海">上海</option>
			<option value="江苏">江苏</option>
			<option value="成都">成都</option>
		</select><br>
		<br> 自我介绍:<br>
		<textarea rows="5" cols="40" name="contents">自我介绍...</textarea>
		<br>
		<br> <input type="submit" value="提交">&nbsp;&nbsp;
		<input type="submit" value="重置">
	</form>
</body>
</html>