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
<hr style="border: solid 1px gray; box-shadow: 1px 1px 5px 2px gray; margin-top:-11px;">
<div class="main-signup">
        <!--웹페이지 상단-->
        <header>
            <!--NAVER LOGO-->
            <div class="logo">
                <h2>회원가입</h2>
            </div>
        </header>

        <!--회원가입 부분-->
        <form action="" name="member" method="post" onsubmit="return join();">
        <section class="signup-wrap">

            <div>
                <!--아이디,비번,비번재확인-->

                <h3>아이디</h3>
                <span class="signup-input">
                    <input id="signup-id" type="text" name="user_id"></input>
                    
                </span>

                <h3>비밀번호</h3>
                <span class="signup-input">
                    <input id="signup-pw" type="text" name="pwd"></input>
                    <span class="pw-lock"></span>
                </span>

                <h3>비밀번호 재확인</h3>
                <span class="signup-input">
                    <input id="signup-pww" type="text"></input>
                    <span class="pww-lock"></span>
                </span>

            </div>

            <div style="margin-top: 35px;">
                <!--이름,생년월일,성별,이메일-->
                <h3>이름</h3>
                <span class="signup-input">
                    <input id="signup-name" type="text" name="user_name"></input>
                </span>

                <h3>생년월일</h3>
                <span style="display: flex;">
                    <span class="signup-input-birth">
                        <input id="signup-birth-yy" type="text" placeholder="년(4자)" class="int" maxlength="4"></input>
                    </span>
                    <span class="signup-input-birth" style="margin-left: 10px;">
                        <select id="signup-birth-mm" class="selectbox" name="month" onchange="">
                            <option value="month">월</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                    </span>
                    <span class="signup-input-birth" style="margin-left: 10px;">
                        <input id="signup-birth-dd" type="text" placeholder="일" class="int" maxlength="2"></input>
                    </span>
                </span>

                <span class="choice">
                    <h3>본인 확인 이메일</h3>
                    
                </span>
                <span class="signup-input">
                    <input id="signup-email" type="text" placeholder="ex) abcd123@updt.com" name="email"></input>
                </span>

            </div>

            <div style="margin-top: 35px;">
                <!--휴대전화-->
                <h3>휴대전화</h3>
                <span class="signup-input">
                    <select id="signup-country" class="selectbox" onchange="">
                        <option value="ko">대한민국 +82</option>
                    </select>
                </span>
                <div style="display: flex;">
                    <span class="signup-input" style="width:100%; margin: 10px 0px 0px 0px">
                        <input id="signup-phone" type="text" placeholder="전화번호 입력" name="user_tel"></input>
                    </span>
                    <span class="cnum-btn-wrap">
                        <button id="cnum-btn" style="height:50px; padding-bottom:5px; text-align:center;">인증번호 받기</button>
                    </span>
                </div>
                
                <span class="signup-input-c" style="margin-top: 10px;">
                    <input id="signup-cnum" type="text" placeholder="인증번호 입력하세요"></input>
                </span>
            </div>

            <div>
                <!--가입하기-->
                <div class="signup-btn-wrap">
                	<button id="signup-btn" style="height:50px; padding-bottom:5px;" onclick="signCheck">가입하기</button>
                </div>
            </div>
        </section>
		</form>
        

    </div>
    <jsp:include page="./common/footer.jsp"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/resources/js/signup.js"></script>
</body>
</html>