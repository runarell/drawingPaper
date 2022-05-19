

/*# 유효성 검사
1.>테두리 빨간색 처리
2.>이메일 주소를 입력해주세요.
3.>비밀번호를 입력해주세요.
4.>이메일 형식에 맞게 입력하세요.
5.>비밀번호는 6자 이상이어야 합니다.
6.>6자 이상, 20자 이하로 입력하세요.
로그인 버튼 누른후 -> 1> 아이디가 존재하지 않습니다. 2> 패스워드가 맞지 않습니다. => db쪽*/


// 로그인 버튼 유효성 체크
function loginCheck() {

    let submitResult = true; // submit 결정 변수

    if(!$('#user_email').val()){ //공백일떄
        $('#user_email').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //에러는 빨간색
        $('.checkEmail').html("<div class='warning'> 이메일 주소를 입력해주세요.</div>");
        $('.checkEmail').show(); //경고문구 출력
        submitResult=false //submit false
    }

    if(!$('#user_pw').val()){ //공백일떄
        $('user_pw').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //에러는 빨간색
        $('.checkPw').eq(1).html("<div class='warning'> 비밀번호를 입력해주세요.</div>");
        $('.checkPw').eq(1).show(); //경고문구 출력
        submitResult=false //submit false
    }
    
    loginForm.submit();

}

// 이메일 형식 유효성 검사 
$('#user_email').on('blur' ,function() {
        if (!/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g.test($('#user_email').val())) { // 이메일 형식 검사
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //빨간색 변경
            $('.checkArea').eq(0).html("<div class='warning'> 유효하지 않은 이메일 형식입니다.</div>"); 
            $('.checkArea').eq(0).show(); // 경고문구 추가
        } else {
        	$('.checkArea').eq(0).empty(); // 경고문구 제거
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" }); // 회색 변경
          }
        
        if(!$(this).val()){ // 아무 값도 없으면 정상
        	$(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" });
            $('.checkArea').eq(0).empty(); //경고문구 제거
            //색 검정색 변경
        }
 
});

// 비밀번호 수 제한
$('#password').on('blur' ,function() {
    if (!/^.{6,20}$/g.test($('#password').val())) { //PW 형식 검사
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 빨간색 변경
        $('.checkArea').eq(2).html("<div class='warning'> 비밀번호는 6자 이상, 20자 이하로 입력하세요.</div>");
        $('.checkArea').eq(2).show(); // 경고문구 추가
    } else {
    	$('.checkArea').eq(2).empty(); // 경고문구 제거
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" }); // 검정색 변경
     }
    
    if(!$(this).val()){ // 아무 값도 없으면 정상
    	$(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" });
        $('.checkArea').eq(2).empty(); //경고문구 제거
        //색 검정색 변경
    }
});