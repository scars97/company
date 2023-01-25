<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- upper navbar -->
	<header style="margin-top: 70px;">

		<nav class="navbar navbar-expand-lg bg-white fixed-top"
			style="height: 59px;">

			<div class="container">
				<a class="navbar-brand" href="#"><img
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
					
						<c:if test="${signIn.user_id == '관리자'}">
							<li class="nav-item"
								style="border-right: 2px solid; border-left: 2px solid; width: 85px; text-align: center; margin-top: 15px;">
								<a class="nav-link active" href="#">관리페이지</a>
							</li>
						</c:if>
						
						<li class="nav-item"
							style="border-right: 2px solid; width: 85px; text-align: center; margin-top: 15px;">
							<a class="nav-link active" href="board.do">커뮤니티</a>
						</li>
						<li class="nav-item"
							style="border-right: 2px solid; width: 85px; text-align: center; margin-top: 15px;">
							<a class="nav-link active" href="#">대자보</a>
						</li>

						<li class="nav-item"
							style="border-right: 2px solid; width: 85px; text-align: center; margin-top: 15px;">
							<a class="nav-link active" href="bar">Bar</a>
						</li>
						<c:if test="${signIn.user_id != null}">
						<li class="nav-item"
							style="border-right: 2px solid; width: 85px; text-align: center; margin-top: 15px;">
							<a class="nav-link active" href="mypage.do">마이페이지</a>
						</li>
						</c:if>
						
						<li class="nav-item"
							style="width: 85px; text-align: center; margin-top: 15px;">
							<c:if test="${signIn == null }">
								<a class="nav-link active" href="login.do">로그인</a>
							</c:if> <c:if test="${signIn != null }">
								<a class="nav-link active" href="logout.do">${signIn.user_id }로그아웃</a>
							</c:if>
						</li>
					</ul>
				</div>
			</div>

		</nav>
	</header>
</body>
</html>