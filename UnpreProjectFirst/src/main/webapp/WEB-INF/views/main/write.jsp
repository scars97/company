<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<!-- CLOUDTURING 챗봇 -->
<script>
	window.dyc = {
		chatbotUid : "b3979c0b019058cb"
	};
</script>
<script async src="https://cloudturing.chat/v1.0/chat.js"></script>
<!-- End CLOUDTURING -->

<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<meta charset="utf-8">
<title>게시글 작성</title>
<script src="${path}/resources/js/write_null.js"}></script>
</head>
<body>
	<!-- upper navbar here -->
	<jsp:include page="./common/navbar.jsp" />
	
	<div class="container">
	
		<h3>게시글 작성</h3>
		<br>
			<form method="POST" action="write.do" style="margin-bottom: 3rem;">
			<div>
				<select name="category"
					style="width: 10%; height: 1cm; border-radius: 4px">
					<option value="">카테고리</option>
					<option value="와인">와인</option>
					<option value="위스키">위스키</option>
					<option value="맥주">맥주</option>
				</select> &nbsp;&nbsp; <input type="text" placeholder="제목" id="title"
					name="b_title"
					style="width: 80%; border-radius: 4px; height: 1cm;">
		</div>

		<input type="hidden" name="nickname" value="${signIn.nickname }">

		<div>
			<br>

			<textarea rows="15" cols="30" style="resize: vertical;"
				placeholder="자유롭게 작성해 보세요." name="b_content" class="form-control"
				style="height: 100px"></textarea>

		</div>
		<input type="hidden" name="user_id" value="${signIn.user_id }">

		<br> <input class="form-control" type="file" id="formFile">

		<hr>
		<!-- 가로 선 -->

		<input type="reset" value="초기화" class="btn btn-secondary"> <input
			type="button" onclick="history.go(-1)" value="뒤로가기"
			class="btn btn-secondary"> <input type="submit"
			class="btn btn-primary" value="등록"
			style="float: right; background-color: #455889; border-color: #455889;">

		</form>
	</div>

	<!-- footer here -->

	<jsp:include page="./common/footer.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>