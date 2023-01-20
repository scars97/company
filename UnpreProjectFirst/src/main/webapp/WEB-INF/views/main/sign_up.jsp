<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입</h1>
<form action="login.do" method="post">
	<table>
		<tr>
			<td>아이디 : </td>
			<td><input type="text" name="user_id"></td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td>이름 : </td>
			<td><input type="text" name="user_name"></td>
		</tr>
		<tr>
			<td>전화번호 : </td>
			<td><input type="text" name="user_tel"></td>
		</tr>
		<tr>
			<td>이메일 : </td>
			<td><input type="text" name="email"></td>
		</tr>
		<tr>
			<td>닉네임 : </td>
			<td><input type="text" name="nickname"></td>
		</tr>
	</table>
	<input type="submit" value="가입하기">
</form>
</body>
</html>