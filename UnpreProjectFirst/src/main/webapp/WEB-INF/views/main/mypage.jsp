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
<style>
table.type07 {
	border-collapse: collapse;
	line-height: 1.5;
	border: 1px solid #ccc;
	margin: auto;
	margin-bottom: 100px;
    border-left: none;
    border-right: none;
}

table.type07 th {
text-align: center;
	width: 150px;
	padding: 10px;
	font-weight: bold;
	font-color: white;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #1e2539;;
	color: white;
}

table.type07 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
ul.selectbar{
	padding-left: 0px;
	margin-bottom: 0px;
}
li.selectbar1{
	display: inline-block;
	margin-right: 30px;
	font-weight: bold;
}
</style>
</head>
<body>
	<!-- Navigator -->
	<!-- upper navbar here -->
	<jsp:include page="./common/navbar.jsp" />

	<!-- Content -->
	<section class="py-4 text-center container"
		style="border-bottom: 1px solid #dbdbdb; padding-bottom: 0!important;">
		<div class="row py-lg-4">
			<div class="col-lg-6 col-md-8 mx-auto">
				<h1 class="fw-light">MyPage</h1>

			</div>
		</div>
		<div>
			<ul class="selectbar">
				<li class="selectbar1"><a href="mypagechange">내 정보 수정</a></li>
				<li class="selectbar1"><a href="mypageboard">내가 쓴 글</a></li>
			</ul>
		</div>
	</section>

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