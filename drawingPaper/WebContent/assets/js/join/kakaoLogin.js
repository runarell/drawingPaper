Kakao.init("a22622a82bb2b46baf683ee0d15a21c5");

function kakaoLogin() {
  window.Kakao.Auth.login({
    // 카카오 개발자 사이트의 동의항목에서 설정한 ID와 반드시 일치해야함
    scope: 'profile_nickname,account_email,gender,birthday',
    success: function (authObj) {
          console.log(authObj);
          window.Kakao.API.request({
          url:'/v2/user/me',
          success: res => {
              const kakaoAccount = res.kakao_account;
              console.log(kakaoAccount);
              
              alert("로그인 성공")
          }

          });
          
    }
  });
}