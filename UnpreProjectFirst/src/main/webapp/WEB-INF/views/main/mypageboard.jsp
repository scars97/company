<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
<title>게시글 목록</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link href="/resources/css/mypage.css" rel="stylesheet">

</head>
<body>

	<!-- upper navbar here -->
	<jsp:include page="./common/navbar.jsp" />

	<jsp:include page="./common/mypageheader.jsp" />


	<div class="container">
		<div class="row py-lg-5">
			<h2 style="text-align: left; padding-left: 150px;">My Board</h2>
		</div>

		<table class="type07"
			style="text-align: center; width: 80%; margin-bottom: 25px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>카테고리</th>
					<th>제목</th>
					<th>작성일</th>
					<th style="display: none;">내용</th>



				</tr>
			</thead>
			<tbody>

				<c:forEach var="row" items="${myboarddata}">

					<tr>
						<td style="width: 8%; border-left: none;">
							<a href="/detail?bNum=${row.b_num}">${row.b_num}</a>
						<td style="width: 10%;">${row.nickname}</td>
						<td style="width: 12%;">${row.category}</td>
						<td><a href="/detail?bNum=${row.b_num}">${row.b_title}</a></td>
						<td style="width: 9%; border-right: none;">
							<fmt:formatDate value="${row.cdate}" pattern="yyyy.MM.dd" /></td>
						<td style="display: none;">${row.b_content }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div style="width: 90%;">
			<c:if test="${signIn != null}">
				<input type="button" value="글쓰기"
					style="float: right; background-color: #1e2539; border: none;"
					class="btn btn-primary"
					onclick="location.href='http://localhost:8081/write'"></input>
			</c:if>

		</div>

		<form style="margin-left: 10%;">
			<input class="form-control me-2"
				style="width: 15%; float: left; margin: 0 auto;" type="text"
				placeholder="검색" name="keyword" value="${keyword}" /> 
			<input class="btn btn-outline-success" type="submit" value="검색" />
		</form>

		<br><br>

		<div class="row text-center" style="width: 60%;">
			<div class="btn-group me-2" role="group" aria-label="First group"
				style="width: 30%; float: none; margin: 0 auto">

				<button type="button" class="btn btn-primary"
					style="background-color: #455889; border-color: #455889;">1</button>
				<button type="button" class="btn btn-primary"
					style="background-color: #455889; border-color: #455889;">2</button>
				<button type="button" class="btn btn-primary"
					style="background-color: #455889; border-color: #455889;">3</button>
				<button type="button" class="btn btn-primary"
					style="background-color: #455889; border-color: #455889;">4</button>

			</div>
		</div>
	</div>
	<br>

	<!-- footer here -->
	<jsp:include page="./common/footer.jsp" />


<!-- CLOUDTURING 챗봇 -->
<script>
	window.dyc = {
		chatbotUid : "b3979c0b019058cb"
	};
</script>
<script async src="https://cloudturing.chat/v1.0/chat.js"></script>
<!-- End CLOUDTURING -->
<script src="${path}/resources/js/wr_board_login.js"></script>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>