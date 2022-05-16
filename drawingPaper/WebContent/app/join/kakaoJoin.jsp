<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="../../assets/css/join/kakaoJoin.css">
</head>

<body>
  <div class="cover">
    <div class="left">
      <div class="contents">
        <header>
          <h1 class="logo">
               도화지
          </h1>
        </header>
        <div class="loginArea">
          <div class="top">
            <p class="title1">회원가입</p>
            
            <button class="kakaoButton" onclick="kakaoLogin()">
              카카오로 가입하기
            </button>

          </div>
          <div class="bottom">
            <div class="gray_bar">
              <span>다른 방법으로 회원가입</span>
            </div>
            <div class="snslogin">
              <a href=""><div name="naverCircle" class="Icon__SVGICON-sc-1xkf9cp-0 ccxeYs SocialMembershipMenu__StyledSVGIcon-sc-141itvp-2 cypxet"><svg width="40" height="40" viewBox="0 0 34 34" fill="none"><g clip-path="url(#clip0_226_6574)"><path d="M17 31.875C8.81875 31.875 2.125 25.1812 2.125 17C2.125 8.81875 8.81875 2.125 17 2.125C25.1812 2.125 31.875 8.81875 31.875 17C31.875 25.1812 25.1812 31.875 17 31.875Z" fill="#03C75A"></path><path d="M18.9338 17.3825L14.9105 11.6167H11.5742V22.3834H15.0663V16.6175L19.0896 22.3834H22.4259V11.6167H18.9338V17.3825Z" fill="white"></path></g><defs><clipPath id="clip0_226_6574"><rect width="29.75" height="29.75" fill="white" transform="translate(2.125 2.125)"></rect></clipPath></defs></svg></div></a>
              <a href=""><div name="facebookCircle" class="Icon__SVGICON-sc-1xkf9cp-0 ccxeYs SocialMembershipMenu__StyledSVGIcon-sc-141itvp-2 cypxet"><svg width="40" height="40" viewBox="0 0 34 34" fill="none"><path d="M17 31.875C8.81875 31.875 2.125 25.1812 2.125 17C2.125 8.81875 8.81875 2.125 17 2.125C25.1812 2.125 31.875 8.81875 31.875 17C31.875 25.1812 25.1812 31.875 17 31.875Z" fill="#1877F2"></path><path d="M27.625 16.9945C27.625 11.1325 22.8651 6.375 17 6.375C11.1349 6.375 6.375 11.1325 6.375 16.9945C6.375 22.2988 10.2595 26.6954 15.3477 27.4828V20.0568H12.634V16.9945H15.3477V14.6541C15.3477 11.9965 16.9234 10.52 19.3526 10.52C20.5125 10.52 21.7161 10.7387 21.7161 10.7387V13.3307H20.3812C19.0572 13.3307 18.6413 14.1619 18.6413 14.9931V16.9836H21.5958L21.1253 20.0459H18.6413V27.4719C23.7405 26.6954 27.625 22.2988 27.625 16.9945Z" fill="#1877F2"></path><path d="M21.1361 20.0676L21.6067 17.0053H18.6522V15.0148C18.6522 14.1727 19.079 13.3524 20.3921 13.3524H21.727V10.7495C21.727 10.7495 20.5234 10.5308 19.3635 10.5308C16.9343 10.5308 15.3586 12.0072 15.3586 14.6648V17.0053H12.6449V20.0676H15.3586V27.4936C15.8948 27.5811 16.4528 27.6248 17.0109 27.6248C17.5689 27.6248 18.127 27.5811 18.6632 27.4936V20.0676H21.1361Z" fill="white"></path></svg></div></a>
              <a href=""><div name="appleCircle" class="Icon__SVGICON-sc-1xkf9cp-0 ccxeYs SocialMembershipMenu__StyledSVGIcon-sc-141itvp-2 cypxet"><svg width="40" height="40" viewBox="0 0 34 34" fill="none"><circle cx="17" cy="17" r="14.875" fill="black"></circle><path d="M17.1893 12.0962C17.8965 12.0962 18.783 11.6206 19.3109 10.9866C19.7891 10.412 20.1377 9.60956 20.1377 8.80711C20.1377 8.69813 20.1277 8.58916 20.1078 8.5C19.3209 8.52972 18.3746 9.02506 17.8068 9.68881C17.3586 10.1941 16.9502 10.9866 16.9502 11.799C16.9502 11.9178 16.9701 12.0367 16.9801 12.0763C17.0299 12.0862 17.1096 12.0962 17.1893 12.0962ZM14.699 24.0833C15.6652 24.0833 16.0936 23.4394 17.2988 23.4394C18.524 23.4394 18.793 24.0635 19.8688 24.0635C20.9246 24.0635 21.6318 23.0927 22.2992 22.1416C23.0463 21.0519 23.3551 19.9819 23.375 19.9324C23.3053 19.9126 21.2832 19.0903 21.2832 16.7821C21.2832 14.7809 22.877 13.8794 22.9666 13.81C21.9107 12.3042 20.307 12.2646 19.8688 12.2646C18.6834 12.2646 17.7172 12.9779 17.1096 12.9779C16.4521 12.9779 15.5855 12.3042 14.5596 12.3042C12.6072 12.3042 10.625 13.9091 10.625 16.9406C10.625 18.8228 11.3621 20.8141 12.2686 22.102C13.0455 23.1917 13.7229 24.0833 14.699 24.0833Z" fill="white"></path></svg></div></a>
              <a href="emailJoin.jsp"><div name="mailCircle" class="Icon__SVGICON-sc-1xkf9cp-0 ccxeYs SocialMembershipMenu__StyledSVGIcon-sc-141itvp-2 cypxet"><svg width="40" height="40" viewBox="0 0 34 34" fill="none"><circle cx="17" cy="17" r="14.875" fill="#D0D0D0"></circle><path fill-rule="evenodd" clip-rule="evenodd" d="M24.5557 10.8608H9.44458V12.0886H24.5557V10.8608ZM24.5557 12.0887L17.0001 17.8183L9.44458 12.0887H24.5557Z" fill="white"></path><path d="M20.1483 16.9997L24.5557 20.2737L24.5557 13.7256L20.1483 16.9997Z" fill="white"></path><path d="M13.852 16.9997L9.44458 20.2737L9.44458 13.7256L13.852 16.9997Z" fill="white"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M17.0001 19.4554L19.1589 17.8184L24.5557 21.9109L24.5557 23.1387H9.44458V21.9109L14.8414 17.8184L17.0001 19.4554Z" fill="white"></path></svg></div></a>
            </div>
            <p class="login">이미 계정이 있으신가요? <a href="">로그인</a></p>
          </div>
        </div>
      </div>
    </div>
    <div class="right">
      <img src="https://tumblbug-assets.s3.ap-northeast-1.amazonaws.com/static_assets/login/bg_signup_kakao.jpg" width="100%" alt="">
    </div>
  </div>
</body>
   <script type="text/javascript" src="../../assets/js/jquery-3.6.0.min.js"> </script>
     <script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="../../assets/js/join/kakaoLogin.js"></script>
</html>