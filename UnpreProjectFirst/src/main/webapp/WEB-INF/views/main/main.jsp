<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Insert title here</title>

</head>
<body>
	<header style="margin-top: 70px;">
		<nav class="navbar navbar-expand-lg bg-white fixed-top"
			style="height: 59px;">
			<div class="container ">
				<a class="navbar-brand" href="main"><img
					src="https://scontent-ssn1-1.xx.fbcdn.net/v/t39.30808-6/324743408_1194186174806270_7811699012082904800_n.jpg?stp=dst-jpg_s600x600&_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=A50zUfLChPsAX9RuQZK&_nc_ht=scontent-ssn1-1.xx&oh=00_AfBLd80qeHx9BxDWzyxTURP1ysgn_lh9IqSDK9A2QoUQfw&oe=63C300E6"
					style="width: 10%; height: 10%" alt="logo"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarSupportedContent">
					<ul class="navbar-nav" style="height: 60px;">
						<li class="nav-item"
							style="border-right: 2px solid; border-left: 2px solid; width: 85px; text-align: center; margin-top: 15px;">
							<a class="nav-link active" href="#">커뮤니티</a>
						</li>
						<li class="nav-item"
							style="border-right: 2px solid; width: 85px; text-align: center; margin-top: 15px;">
							<a class="nav-link active" href="#">대자보</a>
						</li>

						<li class="nav-item"
							style="border-right: 2px solid; width: 85px; text-align: center; margin-top: 15px;">
							<a class="nav-link active" href="bar">Bar</a>
						</li>
						<li class="nav-item"
							style="width: 85px; text-align: center; margin-top: 15px;">
							<c:if test="${signIn == null }">
								<a class="nav-link active" href="login.do">로그인</a>
							</c:if>
							<c:if test="${signIn != null }">
								<a class="nav-link active" href="logout.do">${signIn.userID }로그아웃</a>
							</c:if>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<main>

		<h1>메인페이지 내용</h1>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br>

	</main>

	<!-- Footer -->
	<footer>
		<div class="container-fluid text-bg-dark p-3 sticky-bottom"
			style="height: 150px;">
			<h1 style="font-color: white;">여기가 풋터</h1>
		</div>
	</footer>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>