<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/resources/css/mypage.css" rel="stylesheet">
</head>
<body>
	<!-- Navigator -->
	<!-- upper navbar here -->
	<jsp:include page="./common/navbar.jsp" />

	<!-- Content -->
	<jsp:include page="./common/mypageheader.jsp" />

	<div class="container">
		<div class="row py-lg-5">
			<h2 style="text-align: left; padding-left: 150px;">Change Info</h2>
		</div>
		<form method=post action="mypageupdate.do">
			<table class="type07" style="margin-bottom: 25px;">
				<tr>
					<th>ID</th>
					<td>${signIn.user_id}</td>
					<input type=hidden name=user_id value="${signIn.user_id }">
				</tr>
				<tr>
					<th>PW</th>
					<td><input type=password name=pwd id=pwdbefore disabled
						placeholder="필수 입력 사항입니다." value="${signIn.pwd }"> <input
						type=button id=pw_button value="변경" onclick="change_pw();"></td>
					<input type=hidden name=pwd id=pwdafter value="${signIn.pwd }">
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name=user_tel id=telbefore disabled
						value="${signIn.user_tel }"> <input type=button
						id=phone_button value="변경" onclick="change_phone();"></td>
					<input type=hidden name=user_tel id=telafter
						value="${signIn.user_tel }">
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" name=email id=emailbefore disabled
						value="${signIn.email }"> <input type=button
						id=email_button value="변경" onclick="change_email();"></td>
					<input type=hidden name=email id=emailafter
						value="${signIn.email }">
				</tr>
				<tr>
					<th>닉네임</th>
					<td><input type="text" name=nickname id=nicknamebefore
						disabled value="${signIn.nickname }"> <input type=button
						id=nickname_button value="변경" onclick="change_nickname();"></td>
					<input type=hidden name=nickname id=nicknameafter
						value="${signIn.nickname }">
				</tr>

			</table>
			<div class="submit_button">
				<input disabled id=submit type=submit value="변경사항을 확정하기" onclick="update_success();">
			</div>
		</form>
	</div>

	<!-- Footer -->
	<!-- footer here -->
	<jsp:include page="./common/footer.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/mypagechange.js">
	
	</script>

</body>
</html>