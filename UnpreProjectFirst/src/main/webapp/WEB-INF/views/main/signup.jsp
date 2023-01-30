<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/resources/css/signup.css">
</head>
<body>
<jsp:include page="./common/navbar.jsp"/>

<div class="main-signup">
        <!--웹페이지 상단-->
        <header>
            <!--NAVER LOGO-->
            <div class="logo">
                <h2>회원가입</h2>
            </div>
        </header>

        <!--회원가입 부분-->
        <form action="signup.do" method="post">
        <section class="signup-wrap">

            <div>
                <!--아이디,비번,비번재확인-->

                <h3>아이디</h3>
                <span class="signup-input">
                    <input id="signup-id" type="text" name="user_id"></input>
                    
                </span>

                <h3>비밀번호</h3>
                <span class="signup-input">
                    <input id="signup-pw" type="password" name="pwd"></input>
                    
                </span>       
            </div>

            <div style="margin-top: 35px;">
                <!--이름,생년월일,성별,이메일-->
                <h3>이름</h3>
                <span class="signup-input">
                    <input id="signup-name" type="text" name="user_name"></input>
                </span>
            
            </div>

            <div style="margin-top: 35px;">
                <!--휴대전화-->
                <h3>휴대전화</h3>            
                <div style="display: flex;">
                    <span class="signup-input" style="width:100%; margin: 10px 0px 0px 0px">
                        <input id="signup-phone" type="text" placeholder="전화번호 입력" name="user_tel"></input>
                    </span>
                   
                </div>
                
             
            </div>
            
            <span class="choice">
                    <h3>이메일</h3>
                    
                </span>
                <span class="signup-input">
                    <input id="signup-email" type="text" placeholder="ex) abcd123@updt.com" name="email"></input>
                </span>
                
                <h3>닉네임</h3>
                <span class="signup-input">
                    <input id="signup-nickname" type="text" name="nickname"></input>
                </span>

            <div>
                <!--가입하기-->
                <div class="signup-btn-wrap">
                	<button id="signup-btn" style="height:50px; padding-bottom:5px;" 
                		type="submit" onclick="signup_success();">가입하기</button>
                </div>
            </div>
        </section>
		</form>
        

    </div>
    <jsp:include page="./common/footer.jsp"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script>
    	function signup_success(){
    		alert("회원가입이 완료되었습니다.")
    	}
    </script>
</body>
</html>