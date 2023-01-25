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
	margin-bottom: 25px;
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

ul.selectbar {
	padding-left: 0px;
	margin-bottom: 0px;
}

li.selectbar1 {
	display: inline-block;
	margin-right: 30px;
	font-weight: bold;
}

.submit_button {
	text-align: center;
	padding-bottom: 80px;
}

.submit_button input {
	padding: 8px;
    width: 180px;
    border-radius: 10px;
    color: #1e2539;
    font-weight: 565;
}
</style>
</head>
<body>
	<!-- Navigator -->
	<!-- upper navbar here -->
	<jsp:include page="./common/navbar.jsp" />

	<!-- Content -->
	<section class="py-4 text-center container"
		style="border-bottom: 1px solid #dbdbdb; padding-bottom: 0 !important;">
		<div class="row py-lg-4">
			<div class="col-lg-6 col-md-8 mx-auto">
				<h1 class="fw-light">MyPage</h1>

			</div>
		</div>
		<div>
			<ul class="selectbar">
				<li class="selectbar1">내 정보 수정</li>
				<li class="selectbar1">내가 쓴 글</li>
			</ul>
		</div>
	</section>

	<div class="container">
		<div class="row py-lg-5">
			<h2 style="text-align: left; padding-left: 150px;">Change Info</h2>
		</div>
		<form method=post action="mypageupdate.do">
			<table class="type07">
				<tr>
					<th>ID</th>
					<td>${userdata.user_id}</td>
					<input type=hidden name=user_id value="${userdata.user_id }">
				</tr>
				<tr>
					<th>PW</th>
					<td><input type=password name=pwd id=pwdbefore disabled
						placeholder="필수 입력 사항입니다." value="${userdata.pwd }"> <input
						type=button id=pw_button value="변경" onclick="change_pw();"></td>
					<input type=hidden name=pwd id=pwdafter value="${userdata.pwd }">
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name=user_tel id=telbefore disabled
						value="${userdata.user_tel }"> <input type=button
						id=phone_button value="변경" onclick="change_phone();"></td>
					<input type=hidden name=user_tel id=telafter
						value="${userdata.user_tel }">
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" name=email id=emailbefore disabled
						value="${userdata.email }"> <input type=button
						id=email_button value="변경" onclick="change_email();"></td>
					<input type=hidden name=email id=emailafter
						value="${userdata.email }">
				</tr>
				<tr>
					<th>닉네임</th>
					<td><input type="text" name=nickname id=nicknamebefore
						disabled value="${userdata.nickname }"> <input type=button
						id=nickname_button value="변경" onclick="change_nickname();"></td>
					<input type=hidden name=nickname id=nicknameafter
						value="${userdata.nickname }">
				</tr>

			</table>
			<div class="submit_button">
				<input disabled id=submit type=submit value="변경사항을 확정하기">
			</div>
		</form>
	</div>

	<!-- Footer -->
	<!-- footer here -->
	<jsp:include page="./common/footer.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
	function change_pw() {
		document.getElementById("pwdbefore").disabled = false;
		document.getElementById("pw_button").value = "확정";	
		document.getElementById("pw_button").setAttribute("onclick", "decide_pw()");
	}
	function decide_pw() {
		document.getElementById("submit").disabled = false;
		document.getElementById("pwdafter").value = document.getElementById("pwdbefore").value;
		document.getElementById("pwdbefore").disabled = true;
		document.getElementById("pw_button").disabled = true;
		document.getElementById("pw_button").value = "확정됨";
	}

	function change_phone() {
		document.getElementById("telbefore").disabled = false;
		document.getElementById("phone_button").value = "확정";
		document.getElementById("phone_button").setAttribute("onclick", "decide_phone()");
	}
	function decide_phone() {
		document.getElementById("submit").disabled = false;
		document.getElementById("telafter").value = document.getElementById("telbefore").value;
		document.getElementById("telbefore").disabled = true;
		document.getElementById("phone_button").disabled = true;
		document.getElementById("phone_button").value = "확정됨";
    }

	function change_email() {
		document.getElementById("emailbefore").disabled = false;
		document.getElementById("email_button").value = "확정";
		document.getElementById("email_button").setAttribute("onclick", "decide_email()");
	}
	function decide_email() {
		document.getElementById("submit").disabled = false;
		document.getElementById("emailafter").value = document.getElementById("emailbefore").value;
		document.getElementById("emailbefore").disabled = true;
		document.getElementById("email_button").disabled = true;
		document.getElementById("email_button").value = "확정됨";
	}
	
	function change_nickname() {
		document.getElementById("nicknamebefore").disabled = false;
		document.getElementById("nickname_button").value = "확정";
		document.getElementById("nickname_button").setAttribute("onclick", "decide_nickname()");
	}
	function decide_nickname() {
		document.getElementById("submit").disabled = false;
		document.getElementById("nicknameafter").value = document.getElementById("nicknamebefore").value;
		document.getElementById("nicknamebefore").disabled = true;
		document.getElementById("nickname_button").disabled = true;
		document.getElementById("nickname_button").value = "확정됨";
	}
	</script>

</body>
</html>