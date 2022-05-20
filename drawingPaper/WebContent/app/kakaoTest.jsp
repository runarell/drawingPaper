<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
	<div class="button-login" align="center">
		<a id="kakao-login-btn">
			<img
    src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
    width="222"
    alt="카카오 로그인 버튼"
  />
		</a>
	</div>
</body>



<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
	Kakao.init('40d43d31106b52ee3697f5b4bc8ee509');

	$("#kakao-login-btn").on("click", function() {
		//1. 로그인 시도
		Kakao.Auth.login({
			success : function(authObj) {

				//2. 로그인 성공시, API 호출
				Kakao.API.request({
					url : '/v2/user/me',
					success : function(res) {
						var ac = res.kakao_account
						console.log('res');
						console.log(res);
						console.log(ac.email);
						console.log(ac.profile.nickname);
						var id = res.id;
						console.log('id : ' + id)
						scope: 'account_email';
						alert('로그인성공');
						location.href = "${pageContext.request.contextPath}/app/test.jsp";

					}
				})
				console.log('aaaaaaaa');
				console.log(authObj);
				var token = authObj.access_token;
			},
			fail : function(err) {
				alert(JSON.stringify(err));
			}
		});

	}) //
</script>
</html>