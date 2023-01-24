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
<h1>게시글 작성</h1>

<form action="board_write.do" method="post">
	작성자 : <c:if test="${signIn != null }">
				${signIn.nickname }
			</c:if>
			<input type="hidden" name="user_id" value="${signIn.user_id }">
	제목 : <input type="text" name="b_title">
	내용 : <input type="text" name="b_content">
	<input type="submit" value="등록">
</form>
</body>
</html>