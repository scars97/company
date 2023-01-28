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
		<h2 style="text-align: left; padding-left: 150px;">About Me</h2>
	</div>	
		<table class="type07">
			<tr>
				<th scope="row">아이디</th>
				<td>${signIn.user_id }</td>
			</tr>
			<!-- <tr>
				<th scope="row">비밀번호</th>
				<td>내용이 들어갑니다.</td>
			</tr> -->
			<tr>
				<th scope="row">전화번호</th>
				<td>${signIn.user_tel }</td>
			</tr>
			<tr>
				<th scope="row">이메일</th>
				<td>${signIn.email }</td>
			</tr>
			<tr>
				<th scope="row">닉네임</th>
				<td>${signIn.nickname }</td>
			</tr>
		</table>
	</div>

	<!-- Footer -->
	<!-- footer here -->
	<jsp:include page="./common/footer.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>