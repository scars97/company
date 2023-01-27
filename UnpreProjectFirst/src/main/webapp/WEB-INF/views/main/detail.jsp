<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<!-- CLOUDTURING 챗봇 -->
<script>
    window.dyc = {
        chatbotUid: "b3979c0b019058cb"
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
	
<meta charset="UTF-8">
<title>${data.b_title }</title>
</head>
<body> 

	<!-- upper navbar here -->
	<jsp:include page="./common/navbar.jsp"/>
	<br>
	<div class="container" style="width:70%">
	<h3>${ data.category } 게시판</h3>
	&nbsp;
	&nbsp;
	<hr>
	&nbsp;${ data.b_title }
	<span style="float: right;">&nbsp;
	<fmt:formatDate value="${data.cdate}" pattern="yyyy.MM.dd.hh.mm.ss" />&nbsp;</span>
	<hr>
	
	<div style=" height: 10cm; width: 27cm;
	padding:9px; margin: 0 auto;">
	${ data.b_content}
	</div>

	<hr><!-- 가로 선 -->
	
	<div></div>
	<input type="button" value="목록" onclick="location.href='http://localhost:8081/list'" class="btn btn-secondary"></input>
	<input type="button" value="수정" onclick="location.href='http://localhost:8081/update?bNum=${bNum}'" class="btn btn-secondary"></input>
	<form method="POST" action="/delete" style=" display: inline-block; float: right;">
		<input type="hidden" name="bNum" value="${bNum}" />
		<input class="btn btn-secondary" type="submit" value="삭제" style=" background-color: #455889; border-color: #455889;">
	</form>
	</div>
	<br>
</body>

	<!-- footer here -->
	<jsp:include page="./common/footer.jsp"/>

</html>