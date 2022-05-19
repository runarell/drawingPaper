// 체크박스 이미지 flex non 전환 박스
$(document).ready(function (){ 

    function block(){
        // id 별 style (display:none) 변경
        let style = ($('input[id="allSelect"]:checked').val())=='1'? 'flex':'none';
        document.getElementById('allSelectchecked').style.display = style;
        let style1 = ($('input[id="req1"]:checked').val())=='1'? 'flex':'none';
        document.getElementById('req1checked').style.display = style1;
        let style2 = ($('input[id="req2"]:checked').val())=='1'? 'flex':'none';
        document.getElementById('req2checked').style.display = style2;
        let style3 = ($('input[id="req3"]:checked').val())=='1'? 'flex':'none';
        document.getElementById('req3checked').style.display = style3;
        let style4 = ($('input[id="btn1"]:checked').val())=='1'? 'flex':'none';
        document.getElementById('btn1checked').style.display = style4;
    
      }
    
// 이름 선택시 경고문구 제거하기
 $('#inputname').on('focus' ,function(event) {
        		$('.checkArea3').empty(); // 경고문구 제거
        		$(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" }); // 검정색
																									// 변경
    });

// 이메일 형식 유효성 검사
$('#email').on('blur' ,function() {
        if (!/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g.test($('#email').val())) { // 이메일
																			// 형식
																			// 검사
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 빨간색
																							// 변경
            $('.checkArea').eq(0).html("<div class='warning'> 유효하지 않은 이메일 형식입니다.</div>"); 
            $('.checkArea').eq(0).show(); // 경고문구 추가
        } else {
        	$('.checkArea').eq(0).empty(); // 경고문구 제거
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" }); // 회색
																								// 변경
          }
        
        if(!$(this).val()){ // 아무 값도 없으면 정상
        	$(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" });
            $('.checkArea').eq(0).empty(); // 경고문구 제거
            // 색 검정색 변경
        }
 
});


// 이메일 일치 검사
$('#emailCheck').on('blur' ,function() {
        if ($('#emailCheck').val() != $('#email').val()) { // 같은지 체크
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 빨간색
																							// 변경
            $('.checkArea').eq(1).html("<div class='warning'> 이메일 주소가 일치하지 않습니다</div>");
            $('.checkArea').eq(1).show(); // 경고문구 추가
        } else{
        	$('.checkArea').eq(1).empty(); // 경고문구 제거
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" }); // 검정색
																								// 변경
            }

});

// 비밀번호 수 제한
$('#password').on('blur' ,function() {
    if (!/^.{6,20}$/g.test($('#password').val())) { // PW 형식 검사
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 빨간색
																						// 변경
        $('.checkArea').eq(2).html("<div class='warning'> 비밀번호는 6자 이상, 20자 이하로 입력하세요.</div>");
        $('.checkArea').eq(2).show(); // 경고문구 추가
    } else {
    	$('.checkArea').eq(2).empty(); // 경고문구 제거
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" }); // 검정색
																							// 변경
     }
    
    if(!$(this).val()){ // 아무 값도 없으면 정상
    	$(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" });
        $('.checkArea').eq(2).empty(); // 경고문구 제거
        // 색 검정색 변경
    }
});


// 비밀번호 일치 검사
$('#passwordCheck').on('blur' ,function(event) {
    if ($('#passwordCheck').val() != $('#password').val()) { // 패스워드 체크
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 빨간색
																						// 변경
        $('.checkArea').eq(3).html("<div class='warning'> 비밀번호가 일치하지 않습니다.</div>");
        $('.checkArea').eq(3).show(); // 경고문구 추가
     
        return;
    } else {
    		$('.checkArea').eq(3).empty(); // 경고문구 제거
    		$(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" }); // 검정색
																								// 변경
    }
    

});


  
// 포커스 색 변경
  $(".inputDetail").on("focus",function(){ 
    let border = $(this).closest(".inputwrapper").css("border"); // 보더 색을
																	// 받아와서
     if(border =="0.989583px solid rgb(255, 87, 87)"){  // 에러일떄(빨간색일때)는 실행 하지 않음
       return;
     }else{
       $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)"}); // 에러가
																						// 아닐때는
																						// 검정색
     }
}) 
  

// 블러 색 변경
 $(".inputDetail").on("blur",function(){
     let border = $(this).closest(".inputwrapper").css("border");
     // 오류일때 블러 작동X
      if(border =="0.989583px solid rgb(255, 87, 87)"){ // 에러일떄(빨간색일때)는 실행 하지 않음
        return;
      }else{
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)"}); // 에러가
																							// 아닐때는
																							// 회색
    }
 }) 

 
 
// 다 지우면 검정색
$('.inputDetail').on('keyup',function(){
    if(!$(this).val()){
    	$(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" });
        $(this).closest('.checkArea').empty(); // 경고문구 제거
        // 색 검정색 변경
    }

})


  // 체크박스 전체선택
  $("#allSelect").click(function(){
    if($("#allSelect").prop("checked")){ // 전체선택 체크가 확인될 시
      $(".chkb").prop("checked",true);  // 모든 박스에 체크
      block(); // 체크 이미지 여기서 체크
    }else{
      $(".chkb").prop("checked",false); // 전체선택 체크 해제 시 모든 박스 체크 해제
      block(); // 체크 이미지 여기서 체크
    }
  })

  // 체크박스 하나 풀었을때 전체 체크 해제
  $(".chkb").click(function(){ 
    if($('input[name="check"]:checked').length == 4){ // 체크된 박스 수 4개라면
      $("#allSelect").prop("checked",true);     // 전체선택 체크
       block();     // 체크 이미지 여기서 체크
    }else{
      $("#allSelect").prop("checked",false); // 하나라도 풀리면 전체선택 해제
       block(); // 체크 이미지 여기서 체크
    }

  })
  
// 체크박스 유효성 검사
  $(".chkb").click(function(){
       // 필수 체크박스 체크 여부 확인
      if(($("input:checkbox[id='req1']").is(":checked") && $("input:checkbox[id='req2']").is(":checked") && $("input:checkbox[id='req3']").is(":checked"))||$("input:checkbox[id='allSelect']").is(":checked")){
          
          document.getElementById("warning").innerHTML ="";
      }else{

          document.getElementById("warning").innerHTML ="팔수 동의 내용을 체크해주세요";
      }

  })


// ajax 이메일 중복검사 =======================
$("#email").on("blur",function(){
	  checkEmail($(this).val());
}); 

// ajax 이메일 중복검사 =======================
function checkEmail(email){
	  if(email == ""){
		  $('.checkArea').eq(0).text("");
		  return;
	  }
	  $.ajax({
		  url: contextPath + "/user/UserCheckEmailOk.us?userEmail=" + email,
		  type: "get",
		  dataType:"json",
		  success:function(result){
			  if(result.status == 'ok'){
				  $('.checkArea').eq(0).html("<div class='checkOk'> 사용가능한 이메일 입니다.</div>");
			  } else{
				  $('.checkArea').eq(0).html("<div class='warning'> 이미 존재하는 이메일 입니다.</div>");
			  }
		  },
		  error:function(){
			  console.log("오류");
		  }
	  });
}


})

// 버튼 클릭시 유효성 체크
function submitCheck() {

    let submitResult = true; // submit 결정 변수

    if(!$('#inputname').val()){ // 공백일떄
        $('#inputname').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 에러는
																								// 빨간색
        $('.checkArea3').html("<div class='warning'> 이름을 입력해주세요.</div>");
        $('.checkArea3').show(); // 경고문구 출력
        submitResult=false // submit false
    }

    if(!$('#email').val()){ // 공백일떄
        $('#email').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 에러는
																							// 빨간색
        $('.checkArea').eq(1).html("<div class='warning'> 이메일을 확인해주세요.</div>");
        $('.checkArea').eq(1).show(); // 경고문구 출력
        submitResult=false // submit false
    }

    if(!$('#emailCheck').val()){ // 공백일떄
        $('#emailCheck').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 에러는
																									// 빨간색
        $('.checkArea').eq(1).html("<div class='warning'> 이메일을 확인해주세요.</div>");
        $('.checkArea').eq(1).show(); // 경고문구 출력
        submitResult=false // submit false
    }

    if (!/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g.test($('#email').val())) { // 이메일
																		// 형식 체크
        submitResult = false; // submit false
        }

     if ($('#emailCheck').val() != $('#email').val()) { // 이메일 같은지 체크
        submitResult = false; // submit false
        }    
    

    if(!$('#password').val()){ // 공백일떄
        $('#password').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 에러는
																								// 빨간색
        $('.checkArea').eq(3).html("<div class='warning'> 비밀번호를 확인해주세요.</div>");
        $('.checkArea').eq(3).show(); // 경고문구 출력
        submitResult=false // submit false
    }

    if(!$('#passwordCheck').val()){ // 공백일떄
        $('#passwordCheck').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 에러는
																									// 빨간색
        $('.checkArea').eq(3).html("<div class='warning'> 비밀번호를 확인해주세요.</div>");
        $('.checkArea').eq(3).show(); // 경고문구 출력
        submitResult=false // submit false
        
    }

    if (!/^.{6,20}$/g.test($('#password').val())) { // PW 형식 체크
        submitResult =false; // submit false
    }

    if ($('#passwordCheck').val() != $('#password').val()) { // PW 같은지 체크
        submitResult = false; // submit false
    }

    if(!($("input:checkbox[id='req1']").is(":checked") && $("input:checkbox[id='req2']").is(":checked") && $("input:checkbox[id='req3']").is(":checked") )){
        document.getElementById("warning").innerHTML ="필수 동의 내용을 체크해주세요"; // 경고문구
																			// 출력
        submitResult=false // submit false
    }
    
    
    //이메일이 중복일 때
    if($('.checkArea').eq(0).children('div').hasClass('warning')){ 
    	submitResult = false;
    	$('#email').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" });
    }
    
        // 메인페이지 또는 어딘가로 주소 바꿀것
        if(!submitResult){return;}
        $("#joinForm").submit();

}



// 카카오로그인
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
          }

          });
          
    }
  });
}


























