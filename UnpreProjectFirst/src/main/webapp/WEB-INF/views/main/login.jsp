<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인</h1>
<form action="userlogin.do" method="post">
	<table>
		<tr>
			<td>아이디 : </td>
			<td><input type="text" name="userID"></td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input type="password" name="userPW"></td>
		</tr>
	</table>
	<input type="submit" value="로그인">
</form>
</body>
</html>