

// 티켓 변경 팝업창 - 후원 금액 계산
var res = 0;
const fixedPrice = 35100; //전 페이지에서 가져올 고정된 값
function ticketMoney(money) {
    // input 입력값
    splitmoney = document.getElementById('btn').value.split(",").join("");
    console.log(splitmoney);
    // 눌린 버튼값
    btnmoney = money.split(",").join("");
    console.log(btnmoney);
    // 정수로 변경후 합쳐준다
    res = Number(splitmoney) + Number(btnmoney);

    // input으로 전송
    document.getElementById('btn').value = res.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    
    if (document.getElementById('btn').value >= 10000000 || document.getElementById('btn').value < 1000) {
        $(".money3").closest(".money3").css({ border: "2px solid rgb(255, 87, 87)" });
        $('.warning').html("<div class='warning'> 총 후원금이 천만 원이상 천원 이하 범위에 맞게 조정해주세요.</div>");
        $('.warning').show();

        $("#alert1sub").attr("disabled",true);

    } else {
        $(".money3").closest(".money3").css({ border: "1px solid rgb(13, 13, 13)" });
        $('.warning').hide();
        $("#alert1sub").removeAttr("disabled");
    }
    
    // 버튼 표시
    $('.submit').text(document.getElementById('btn').value + "원 후원하기");
};


// 티켓 변경 팝업창 띄우기
function ticketChange() {


    // 티켓 금액 가져오기
    var ti = $("#ticketinfo").text();
    var tp1 = $("#ticketprice").text();
    var tp2 = $("#ticketprice").text().split(",").join("");


    // 추가 후원금 입력 - 숫자외 입력 불가능, 콤마 붙이기, 버튼 가격 표시
    $(document).ready(function () {
        $("input:text[comma]").on("input", function () {
            $(this).val(
                addComma( //addComma 함수 호출
                    $(this)
                        .val()
                        .replace(/[^0-9]/g, "") // 숫자외 입력 불가능
                )
            );
            $('.submit').text($(this).val() + "원 후원하기"); // 버튼 가격 표시

            if (!$("input:text[comma]").val()) {
                $('.submit').text(tp1 + "원 후원하기");
            }
        });

    });


    // 콤마 붙이기
    function addComma(data) {
        return data.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }


    // input 후원금 가격이 10,000,000원이상으로 넘어가는 순간 유효성
    $(document).on("input", "#btn", function () {
        console.log($('#btn').val());
        if ($('#btn').val().split(",").join("") >= 10000000 || $('#btn').val().split(",").join("") < 1000) {
            $(this).closest(".money3").css({ border: "2px solid rgb(255, 87, 87)" });
            $('.warning').html("<div class='warning'> 총 후원금이 천만 원이상 천원 이하 범위에 맞게 조정해주세요.</div>");
            $('.warning').show();

            $("#alert1sub").attr("disabled",true);

        } else {
            $(this).closest(".money3").css({ border: "1px solid rgb(13, 13, 13)" });
            $('.warning').hide();
            $("#alert1sub").removeAttr("disabled");
        }

        // 비었을때
        if (!$('#btn').val()) {
            $(this).closest(".money3").css({ border: "1px solid rgb(230, 230, 230)" }); // 검정색 변경
        }
    });


    // 티켓 변경 정보를 기본 후원으로 띄워줘야 하는 경우
    if (tp2 != '1000') {
        ti = '티켓 없이 후원하기';
        tp1 = '1,000';
    } else if(tp2 < fixedPrice && tp2 >= 1000){
        console.log("메롱1");
        ti = '티켓 없이 후원하기';
    } else{
        console.log("메롱2");
        ti = 'STAGE 2 : 종이책 1권 + 펀딩 참여자 크레딧';
        tp1 = '35,100';
    }


    // 후원금 입력 버튼 클릭시 리셋 버튼 나타남
    $(document).on("focus", ".money3", function () {
        $(".resetbtn").css({ visibility: "visible" });
    })


    // 리셋 버튼 클릭시 가격 초기화 및 리셋 버튼 사라짐
    $(document).on("click", ".resetbtn", function () {
        document.getElementById('btn').value = tp1;
        $(".resetbtn").css({ visibility: "hidden" });

        // 다시 가격, 색상 돌려주기
        $('.warning').hide();
        $(this).closest(".money3").css({ border: "1px solid rgb(230, 230, 230)" });

        $('.submit').text(tp1 + "원 후원하기");

    })
    // 티켓 변경시 뜨는 후원하기 버튼
    $(document).on("click", ".submit", function () {
        if(!$("#btn").val()){
            // var donatepay = document.getElementById('btn').value;
            $('#ticketprice').text(tp1);
            $('#ticketprice2').text(tp1);
            $('#ticketinfo').text(ti);
        } else{
            let e = $("#btn").val().split(",").join("");
            
           
            if(e < fixedPrice){
                ti = '티켓 없이 후원하기'
                console.log("확인1");
                $('#ticketinfo').text(ti);
                $('#ticketprice').text($("#btn").val())
                $('#ticketprice2').text($("#btn").val())
                
            }else{
            //     var donatepay = document.getElementById('btn').value;
                ti = 'STAGE 2 : 종이책 1권 + 펀딩 참여자 크레딧';
                console.log("확인2");
                $('#ticketprice').text($("#btn").val());
                $('#ticketprice2').text($("#btn").val());
                $('#ticketinfo').text(ti);
            }
        }
        $(".swal2-close").trigger("click");
    })


    //payticketchange.css 불러오기
    const alert2 = document.getElementsByTagName('link')[0]

    if (alert2.getAttribute('href') == '../../assets/css/payment/addressAdd.css') {
        alert2.setAttribute('href', '../../assets/css/payment/payticketchange.css');
    } else {
        alert2.setAttribute('href', '../../assets/css/payment/payticketchange.css');
    }


    // sweetalert API (팝업창)
    Swal.fire({

        html:
            '<div class="all"><div class="content"><div class="contentinner"><div class="ticketlist"><div class="ticket" style="cursor: pointer;"><div class="ticketinner1"><div class="ticketinner2"><div class="ticketcard"><div class="ticketcardinner"><div class="ticketmoney">' + tp1 + ' 원+</div><div class="ticketmoneycontent">' + ti + '</div></div></div></div></div></div><div class="selectcnt"><div class="selectcnt1"><div class="selectcnt2"><div class="selectlabel">추가 후원금(선택)</div><div class="money"><div class="money2"><span class="money3"><input type="text" comma placeholder="' + tp1 + '" onfocus="this.placeholder=\'\'" onblur="this.placeholder=\'' + tp1 + '\'" style="border: none; width: 100%;" id="btn" value=""><button class="resetbtn" color="white"><div class="resetbtninner"><div name="resetbtninner2" class="Icon__SVGICON-sc-1xkf9cp-0 ccxeYs"><svg viewBox="0 0 48 48" class="resetimg"><path fill-rule="evenodd" clip-rule="evenodd" d="M8.37138 39.6284C-0.123794 31.0162 -0.123794 16.9963 8.37138 8.38406C16.9665 -0.12802 30.9585 -0.12802 39.5537 8.38406C48.1488 16.9963 48.1488 30.917 39.5537 39.5283C30.9585 48.1405 17.0664 48.1405 8.37138 39.6284ZM23.9625 21.1021L17.1664 14.2924C16.3668 13.4913 15.0676 13.4913 14.268 14.2924C13.4685 15.0936 13.4685 16.3954 14.268 17.1976L21.0642 24.0062L14.268 30.8159C13.4685 31.617 13.4685 32.9199 14.268 33.721C15.0676 34.5212 16.3668 34.5212 17.1664 33.721L23.9625 26.9114L30.7587 33.721C31.5582 34.5212 32.8575 34.5212 33.657 33.721C34.4566 32.9199 34.4566 31.617 33.657 30.8159L26.9608 24.0062L33.757 17.1976C34.5565 16.3954 34.5565 15.0936 33.757 14.2924C32.9574 13.4913 31.6581 13.4913 30.8586 14.2924L23.9625 21.1021Z"></path></svg></div></div></button></span></div><div class="warning"></div><div class="money4"></div></div></div><div class="moneytext">* 더 후원해주시면 프로젝트 성사가 앞당겨집니다. </div><div class="btnwrapper"><button class="btn" color="gray10" onclick="ticketMoney(\'5,000\')">+ 5천 원</button><button class="btn" color="gray10" onclick="ticketMoney(\'10,000\')">+ 1만 원</button><button class="btn" color="gray10" onclick="ticketMoney(\'50,000\')">+ 5만 원</button><button class="btn" color="gray10" onclick="ticketMoney(\'100,000\')">+ 10만 원</button></div></div></div></div></div><button class="submit" id="alert1sub">' + tp1 + '원 후원하기</button></div></div></div>',
        width: 600,
        title: '티켓 변경',
        showConfirmButton: false,
        showCloseButton: true,
        focusConfirm: false

    });
}


// 내용 보기 팝업창
function privacyshow() {


    //privacyshow.css 불러오기
    document.getElementsByTagName("head")[0].insertAdjacentHTML(
        "beforeend",
        "<link rel=\"stylesheet\" href=\"../../assets/css/payment/privacyshow.css\" />");


    // sweetalert API (팝업창)
    Swal.fire({
        html:
            ' <meta http-equiv="Content-Type" content="text/html; charset=utf-8"><div class="privacyall"><div class="privacyallinner"><p class="privacycontent1">회원의 개인정보는 당사의 개인정보 취급방침에 따라 안전하게 보호됩니다. 회사는 이용자들의 개인정보를 개인정보 취급방침의 제 2조 수집하는 개인정보의 항목, 수집방법 및 이용목적에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다.</p><table class="privacytable" llpadding="0" cellspacing="0"><tbody class="privacytbody"><tr class="privacytr"><th class="privacyth">제공받는 자</th><td class="privacytd">후원 프로젝트의 창작자</td></tr><tr class="privacytr"><th class="privacyth">제공 목적</th><td class="privacytd">선물 전달 및 배송과 관련된 상담 및 민원처리</td></tr><tr class="privacytr"><th class="privacyth">제공 정보</th><td class="privacytd">수취인 성명, 휴대전화번호, 배송 주소</td></tr><tr class="privacytr"><th class="privacyth">보유 및 이용기간</th><td class="privacytd">재화 또는 서비스의 제공이 완료된 즉시 파기</td></tr></tbody></table><p class="privacylast">* 동의 거부권 등에 대한 고지<br>개인정보 제공은 서비스 이용을 위해 꼭 필요합니다. 개인정보 제공을 거부하실 수 있으나, 이 경우 서비스 이용이 제한될 수 있습니다.</p></div></div>',
        title: '개인정보 제 3자 제공 동의',
        width: 600,
        showConfirmButton: false,
        showCloseButton: true,
        focusConfirm: false
    });
}


// 첫번째 체크박스 (개인정보 제 3자~)
$("#clicked").click(function () {

    if ($('#clicked').is(":checked")) {
        $('#box1').html("<span class=\"checkedspan\">" +
            "<div class=\"checkedinner\">" +
            "<svg viewBox=\"0 0 48 48\" class=\"checkedimg\">" +
            "<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z\">" +
            "</path></svg></div></span>"
        );

        $("#box1").show();
    }
    else {
        $("#box1").hide();
    }
})


// 두번째 체크박스 (후원 유의사항~)
$("#clicked2").click(function () {

    if ($('#clicked2').is(":checked")) {
        $('#box2').html("<span class=\"checkedspan\">" +
            "<div class=\"checkedinner\">" +
            "<svg viewBox=\"0 0 48 48\" class=\"checkedimg\">" +
            "<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z\">" +
            "</path></svg></div></span>"
        );

        $('#box2').show();
    }
    else {
        $("#box2").hide();
    }
})


// 후원 유의사항 확인 -> slide, 화살표 이미지 변화, 열기 닫기 변화
$(document).ready(function () {
    $(".watchingcontent").hide();

    $(".watchingopen").click(function () {
        if ($("#text1").text() == "열기") {
            $("#text1").text("닫기");
            $("#changeimg").css("transform", "rotate(0.5turn)");
        } else if ($("#text1").text() == "닫기") {
            $("#text1").text("열기");
            $("#changeimg").css("transform", "rotate(0turn)");
        }

        $(".watchingcontent").slideToggle(300);
        $(".watchingopen").not(this).next().slideUp(300);
        return false;

    });
});


// 후원하기 버튼 유효성 검사
$(".paysubmit").click(function () {


    // 모두 체크되었을때
    if ($('#clicked2').is(":checked") && $('#clicked').is(":checked")) {
        kakaoPay();
        return;
    }

    
    // 개인정보 제3자~ 가 체크 x일때
    if ($('#clicked').not(":checked") && $('#clicked2').is(":checked")) {
        console.log(1);
        Swal.fire({
            html:
                '<link rel="stylesheet" href="../../assets/css/payment/payeffectcheck1.css"><p id="pp">개인정보 제3자 제공에 동의하셔야 합니다.</p>',
            width: 328,
            showConfirmButton: true,
            showCloseButton: false,
            focusConfirm: false
        });
        return;
    }


    // 후원 유의사항~ 가 체크 x일때
    if ($('#clicked2').not(":checked") && $('#clicked').is(":checked")) {
        console.log(2);
        Swal.fire({
            html:
                '<link rel="stylesheet" href="../../assets/css/payment/payeffectcheck1.css"><p id="pp">후원 유의사항을 확인하셔야 합니다.</p>',
            width: 328,
            showConfirmButton: true,
            showCloseButton: false,
            focusConfirm: false
        });
        return;
    }


    // 둘 다 체크 x일때
    if ($('#clicked2').not(":checked") && $('#clicked').not(":checked")) {
        console.log(777);
        Swal.fire({
            html:
                '<link rel="stylesheet" href="../../assets/css/payment/payeffectcheck1.css"><p id="pp">개인정보 제3자 제공에 동의하셔야 합니다.</p>',
            width: 328,
            showConfirmButton: true,
            showCloseButton: false,
            focusConfirm: false
        });
        return;
    }
});


// 카카오페이 API
function kakaoPay(data) {
    IMP.init('imp28070210'); // 본인 가맹점 번호 
    // IMP.request_pay(param, callback) 결제창 호출
    IMP.request_pay({ // param
        pg: "kakaopay.TC0ONETIME",  // pg사명.CID
        pay_method: "card",
        merchant_uid: "iamport_test_id", // 필수값
        name: "티켓",
        amount: 100,
        buyer_email: "lje1343@gmail.com",
        buyer_name: "이지은",
        buyer_tel: "01093171345",
    }, function (rsp) { // 콜백
        if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
            alert("완료 -> imp_uid : " + rsp.imp_uid + "/ merchant_uid(orderKey" + rsp.merchant_uid);
        } else {
            alert("실패 : 코드(" + rsp.error_code + ") / 메세지(" + rsp.error_msg + ")");
        }
    });
}