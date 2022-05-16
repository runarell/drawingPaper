// 체크박스 이미지 flex non 전환 박스
$(document).ready(function (){ 

    function block(){
        //id 별 style (display:none) 변경
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

     



//이름 비었으면 검정색으로 변경
$('#inputname').on('keyup',function(){
    if(!$('#inputname').val()){
        $('.checkArea').empty(); //경고문구 제거
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" });
        //색 검정색 변경
    }

    if($('#inputname').val()){ //인풋값 비었다면
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" }); //검정색 변경
        $('.checkArea3').hide(); //경고문구 제거

    }

})

// 이메일 형식 유효성 검사 
$('#email').on('keyup' ,function() {
   
        if (!/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g.test($('#email').val())) { // 이메일 형식 검사
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //빨간색 변경
            $('.checkArea').html("<div class='warning'> 유효하지 않은 이메일 형식입니다.</div>"); 
            $('.checkArea').show(); // 경고문구 추가

            return;
        } else {
            if ($('#emailCheck').val() != $('#email').val()) { //check와 같은지 확인
                $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //빨간색 변경
                $('.checkArea').html("<div class='warning'> 이메일 주소가 일치하지 않습니다</div>"); 
                $('.checkArea').show(); // 경고문구 추가

                return;
            }
            $('.checkArea').empty(); // 경고문구 제거
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" }); // 검정색 변경


          }

          

        if(!$('#email').val()){ // 비었을때
            $('.checkArea').empty(); //경고문구 제거
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" }); // 검정색 변경
 
        }
     
});


// 이메일 일치 검사 
$('#emailCheck').on('keyup' ,function() {
        if ($('#emailCheck').val() != $('#email').val()) { //같은지 체크
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //빨간색 변경
            $('.checkArea').html("<div class='warning'> 이메일 주소가 일치하지 않습니다</div>");
            $('.checkArea').show(); // 경고문구 추가
            return;
        } else {
            if (!/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g.test($('#email').val())) { // 이메일 형식 검사
                $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //빨간색 변경
                $('.checkArea').html("<div class='warning'> 유효하지 않은 이메일 형식입니다.</div>");
                $('.checkArea').show(); // 경고문구 추가
          
                return;
            }else{
                $('.checkArea').empty(); //경고문구 제거
                $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" }); // 검정색 변경
                $('#email').closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" }); // 위 문장도 정상처리
          
            }
        }  

        if(!$('#emailCheck').val()){ // 비었을때
            $('.checkArea').empty(); // 경고문구 제거
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" });
       
        }
});

// 비밀번호 수 제한
$('#password').on('keyup' ,function() {
   
    if (!/^.{6,20}$/g.test($('#password').val())) { //PW 형식 검사
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 빨간색 변경
        $('.checkArea2').html("<div class='warning'> 비밀번호는 6자 이상, 20자 이하로 입력하세요.</div>");
        $('.checkArea2').show(); // 경고문구 추가
    
        return;
    } else {

        if ($('#passwordCheck').val() != $('#password').val()) { // PW 같은지 체크
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 빨간색 변경
            $('.checkArea2').html("<div class='warning'> 비밀번호가 일치하지 않습니다.</div>");
            $('.checkArea2').show(); // 경고문구 추가
        
            return;
        }

        $('.checkArea2').empty(); // 경고문구 제거
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" }); // 검정색 변경
      
     }

    if(!$('#password').val()){ // 비었을떄
        $('.checkArea2').empty(); // 경고문구 제거
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" });
        
    }
 
});

// 비밀번호 일치 검사
$('#passwordCheck').on('keyup' ,function(event) {
    if ($('#passwordCheck').val() != $('#password').val()) { // 패스워드 체크
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 빨간색 변경
        $('.checkArea2').html("<div class='warning'> 비밀번호가 일치하지 않습니다.</div>");
        $('.checkArea2').show(); // 경고문구 추가
     
        return;
    } else {
        if (!/^.{6,20}$/g.test($('#password').val())) { // 패스워드 형식 체크
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); // 빨간색 변경
            $('.checkArea2').html("<div class='warning'> 비밀번호는 6자 이상, 20자 이하로 입력하세요.</div>");
            $('.checkArea2').show(); // 경고문구 추가
            return;
        }else{
            $('.checkArea2').empty(); // 경고문구 제거
            $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" }); // 검정색 변경
            $('#password').closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)" }); // 위 문장도 정상처리
    
        }
    }  
    if(!$('#passwordCheck').val()){ // 비었을때
        $('.checkArea2').empty(); // 경고문구 제거
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)" });
 
    }
});


  
// 포커스 색 변경
  $(".inputDetail").on("focus",function(){ 
    let border = $(this).closest(".inputwrapper").css("border"); // 보더 색을 받아와서
     if(border =="0.989583px solid rgb(255, 87, 87)"){  // 에러일떄(빨간색일때)는 실행 하지 않음
       return;
     }else{
       $(this).closest(".inputwrapper").css({ border: "1px solid rgb(13, 13, 13)"}); //에러가 아닐때는 검정색
     }
}) 
  

// 블러 색 변경
 $(".inputDetail").on("blur",function(){
     let border = $(this).closest(".inputwrapper").css("border");
     // 오류일때 블러 작동X
      if(border =="0.989583px solid rgb(255, 87, 87)"){ // 에러일떄(빨간색일때)는 실행 하지 않음
        return;
      }else{
        $(this).closest(".inputwrapper").css({ border: "1px solid rgb(230, 230, 230)"}); //에러가 아닐때는 회색
      }
 }) 
 



  //체크박스 전체선택
  $("#allSelect").click(function(){
    if($("#allSelect").prop("checked")){ //전체선택 체크가 확인될 시 
      $(".chkb").prop("checked",true);  // 모든 박스에 체크
      block(); // 체크 이미지 여기서 체크
    }else{
      $(".chkb").prop("checked",false); // 전체선택 체크 해제 시 모든 박스 체크 해제
      block(); // 체크 이미지 여기서 체크
    }
  })

  //체크박스 하나 풀었을때 전체 체크 해제
  $(".chkb").click(function(){ 
    if($('input[name="check"]:checked').length == 4){ // 체크된 박스 수 4개라면
      $("#allSelect").prop("checked",true);     // 전체선택 체크
       block();     // 체크 이미지 여기서 체크
    }else{
      $("#allSelect").prop("checked",false); // 하나라도 풀리면 전체선택 해제
       block(); // 체크 이미지 여기서 체크
    }

  })
  
//체크박스 유효성 검사
  $(".chkb").click(function(){
       //필수 체크박스 체크 여부 확인  
      if(($("input:checkbox[id='req1']").is(":checked") && $("input:checkbox[id='req2']").is(":checked") && $("input:checkbox[id='req3']").is(":checked"))||$("input:checkbox[id='allSelect']").is(":checked")){
          
          document.getElementById("warning").innerHTML ="";
      }else{

          document.getElementById("warning").innerHTML ="팔수 동의 내용을 체크해주세요";
      }

  })


})



//버튼 클릭시 유효성 체크
function submitCheck() {

    let submitResult = true; // submit 결정 변수

    if(!$('#inputname').val()){ //공백일떄
        $('#inputname').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //에러는 빨간색
        $('.checkArea3').html("<div class='warning'> 이름을 입력해주세요.</div>");
        $('.checkArea3').show(); //경고문구 출력
        submitResult=false //submit false
    }

    if(!$('#email').val()){ //공백일떄
        $('#email').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //에러는 빨간색
        $('.checkArea').html("<div class='warning'> 이메일을 확인해주세요.</div>");
        $('.checkArea').show(); //경고문구 출력
        submitResult=false //submit false
    }

    if(!$('#emailCheck').val()){ //공백일떄
        $('#emailCheck').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //에러는 빨간색
        $('.checkArea').html("<div class='warning'> 이메일을 확인해주세요.</div>");
        $('.checkArea').show(); //경고문구 출력
        submitResult=false //submit false
    }

    if (!/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g.test($('#email').val())) { //이메일 형식 체크
        submitResult = false; //submit false
        }

     if ($('#emailCheck').val() != $('#email').val()) { //이메일 같은지 체크
        submitResult = false; //submit false
        }    
    

    if(!$('#password').val()){ //공백일떄
        $('#password').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //에러는 빨간색
        $('.checkArea2').html("<div class='warning'> 비밀번호를 확인해주세요.</div>");
        $('.checkArea2').show(); //경고문구 출력
        submitResult=false //submit false
    }

    if(!$('#passwordCheck').val()){ //공백일떄
        $('#passwordCheck').closest(".inputwrapper").css({ border: "1px solid rgb(255, 87, 87)" }); //에러는 빨간색
        $('.checkArea2').html("<div class='warning'> 비밀번호를 확인해주세요.</div>");
        $('.checkArea2').show(); //경고문구 출력
        submitResult=false //submit false
        
    }

    if (!/^.{6,20}$/g.test($('#password').val())) { //PW 형식 체크
        submitResult =false; //submit false
    }

    if ($('#passwordCheck').val() != $('#password').val()) { // PW 같은지 체크
        submitResult = false; //submit false
    }

    if(!($("input:checkbox[id='req1']").is(":checked") && $("input:checkbox[id='req2']").is(":checked") && $("input:checkbox[id='req3']").is(":checked") )){
        document.getElementById("warning").innerHTML ="팔수 동의 내용을 체크해주세요"; //경고문구 출력
        submitResult=false //submit false
    }
    
        //메인페이지 또는 어딘가로 주소 바꿀것
        if(!submitResult){return;}
        $("#joinForm").attr("action","Kjoin.html").submit();

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