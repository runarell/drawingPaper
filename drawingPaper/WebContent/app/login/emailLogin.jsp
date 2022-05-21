<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도화지 - 창작자를 위한 크라우드펀딩</title>
    
    <link rel="stylesheet" href="../../assets/css/login/emailLogin.css">
    <script defer src="../../assets/js/login/emailLogin.js"></script>
    
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    
    
</head>
<body>

	<script>
		if(code == 0){
			document.getElementById('checkEmail').innerText == '아이디가 존재하지 않습니다.';
		} else if(code == 1){
			document.getElementById('checkPw').innerText == '비밀번호가 맞지 않습니다.';		
		}
	</script>


    <div class="cover">
        <div class="left">
          <div class="contents">
            <header>
              <h1 class="logo">
                <img src="../../images/login/logo.jpg" alt="">
              </h1>
            </header>
          <div class="loginArea">
            <div class="top">
                <form action="${pageContext.request.contextPath}/user/userLoginOk.us" method="post" name="loginForm">
                    <p class="title1">이메일 주소</p>
                    <div>
                        <input type="text" name="user_email" id="user_email" placeholder="이메일 주소를 입력하세요">
                    </div>
                    <div id="checkEmail" class="logincheck"></div> <!-- 유효성 검사 -->
                    <p class="title2">비밀번호</p>
                    <div>
                        <input type="password" name="user_pw" id="user_pw" placeholder="비밀번호를 입력하세요">
                    </div>
                    <div id="checkPw" class="logincheck"></div> <!-- 유효성 검사 -->
                    <a href="#" class="log" onclick="loginCheck()">
                        로그인
                      </a>
                      </form>
              </div>
            <div class="bottom">
              <div class="gray_bar">
                <span>다른 방법으로 로그인</span>
              </div>
              <div class="snslogin">
                <a href=""><div name="mailCircle" class="Icon__SVGICON-sc-1xkf9cp-0 ccxeYs SocialMembershipMenu__StyledSVGIcon-sc-141itvp-2 cypxet"><svg width="40" height="40" viewBox="0 0 34 34" fill="none"><circle cx="17" cy="17" r="14.875" fill="#D0D0D0"></circle><path fill-rule="evenodd" clip-rule="evenodd" d="M24.5557 10.8608H9.44458V12.0886H24.5557V10.8608ZM24.5557 12.0887L17.0001 17.8183L9.44458 12.0887H24.5557Z" fill="white"></path><path d="M20.1483 16.9997L24.5557 20.2737L24.5557 13.7256L20.1483 16.9997Z" fill="white"></path><path d="M13.852 16.9997L9.44458 20.2737L9.44458 13.7256L13.852 16.9997Z" fill="white"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M17.0001 19.4554L19.1589 17.8184L24.5557 21.9109L24.5557 23.1387H9.44458V21.9109L14.8414 17.8184L17.0001 19.4554Z" fill="white"></path></svg></div></a>
              </div>
              <p class="findPW">혹시 비밀번호를 잊으셨나요? <a href="">비밀번호 재설정</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="rightimg"> <!--이미지 div-->
      </div>
    </div>
    </body>
</html>