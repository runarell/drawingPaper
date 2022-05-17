/**
 * 
 */

// $("input:text[numberonly]").on("input", function () {
//   $(this).val(
//     $(this)
//       .val()
//       .replace(/[^0-9]/g, "")
//   );
// });

//금액/티켓 입력칸의 숫자만 입력, 콤마 붙이기
$(document).ready(function () {
  $("input:text[comma]").on("input", function () {
    $(this).val(
      addComma(
        $(this)
          .val()
          .replace(/[^0-9]/g, "")
      )
    );
  });
});

//콤마 붙이기
function addComma(data) {
  return data.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

//금액을 정수로 변환하여 검사
$(".input-goal").on("input", function () {
  let money = $(this).val().replace(/,/g, "");

  if (money.length >= 20) {
    $(this).val("");
  }
  moneyMsg(money, $(".money-range"));

  if (!$(this).val()) {
    console.log("a");
    $(".user-input__result-box em").text("0원");
    return;
  }
  $(".result-box__total")
    .find("em")
    .text(addComma(Math.round(total(money))) + "원");
  $(".result-box__total-fee")
    .find("em")
    .text(addComma(Math.round(totalFee(money))) + "원");
  $(".result-box__agency-fee")
    .find("em")
    .text(addComma(Math.round(agencyFee(money))) + "원");
  $(".result-box__platform-fee")
    .find("em")
    .text(addComma(Math.round(platformFee(money))) + "원");
});

//금액 메세지/테두리 금액을 검사하여 50~100억 사이인지 체크
function moneyMsg(money, obj) {
  let $box = $(".input-goal").closest(".user-input__input-box");

  if (money < 500000) {
    obj.text("50만원 이상의 금액을 입력해주세요");
    $box.css({ border: "1px solid var(--red)" });
  } else if (money > 9999999999) {
    obj.text("9,999,999,999원 이하인 금액을 입력해주세요");
    $box.css({ border: "1px solid var(--red)" });
  } else {
    obj.empty();
    $box.css({ border: "1px solid var(--black)" });
  }
}

//그 외 테두리 변경
$(".user-input__input-box input").on("focus", function () {
  $(this).attr("placeholder", "");
  $(this)
    .closest(".user-input__input-box")
    .css({ border: "1px solid var(--black)" });
});

$(".user-input__input-box input").on("blur", function () {
  $(this).attr("placeholder", "50만원 이상의 금액을 입력해주세요");

  let money = $(".input-goal").val().replace(/,/g, "");
  if (money >= 500000 && money < 9999999999) {
    $(this)
      .closest(".user-input__input-box")
      .css({ border: "1px solid var(--border)" });
  }
});

// ==============================================================================================================================
// result-box에 관련된 js

function total(money) {
  return money - totalFee(money);
}

function totalFee(money) {
  return agencyFee(money) + platformFee(money);
}

function agencyFee(money) {
  return money * 0.033;
}

function platformFee(money) {
  return money * 0.055;
}

// ==============================================================================================================================
//ticket금액 박스
$(".input-goal--ticket").on("input", function () {
  let money = $(this).val().replace(/,/g, "");

  if (money.length >= 20) {
    $(this).val("");
  }
  moneyMsgTicket(money, $(".money-range--ticket"));
});

function moneyMsgTicket(money, obj) {
  let $box = $(".input-goal--ticket").closest(".user-input__input-box--ticket");
  if (money < 1000) {
    obj.text("1천원 이상의 금액을 입력해주세요");
    $box.css({ border: "1px solid var(--red)" });
  } else if (money > 500000) {
    obj.text("50만원 이하인 금액을 입력해주세요");
    $box.css({ border: "1px solid var(--red)" });
  } else {
    obj.empty();
    $box.css({ border: "1px solid var(--black)" });
  }
}

//---------------------------------------
//datepicker 달력 설정
$(function () {
  let start;
  let end;

  $(".date-picker").datepicker({
    dateFormat: "yy/mm/dd",
    minDate: 1,
    onSelect: function (dateText) {
      //선택된 객체 확인해서 start, end 변수 초기화
      if ($(this).hasClass("start")) {
        start = dateText;
      } else {
        end = dateText;
      }
      //선택된 객체 형제 date클래스에 날짜 입력
      $(this).prev(".date").css({ opacity: 1 });
      $(this).prev(".date").text(dateText);

      //일수 차이를 구함(펀딩 기간)
      if (start && end) {
        let startArr = start.split("/");
        let endArr = end.split("/");

        let startDate = new Date(startArr[0], startArr[1], startArr[2]);
        let endDate = new Date(endArr[0], endArr[1], endArr[2]);
        let second = endDate.getTime() - startDate.getTime();
        let day = second / (1000 * 60 * 60 * 24);

        let dObj = new Date();
        let curArr = [dObj.getFullYear(), dObj.getMonth() + 1, dObj.getDate()];
        let today = new Date(curArr[0], curArr[1], curArr[2]);
        console.log(today);
        let minVal = startDate.getTime() - today.getTime();

        $(".period").text(day + "일");
      } else {
        $(".period").text("최대 60일");
      }
    },
  });
});

// ------------------------------------------------------
//리스트 박스(시간입력하기)
$(function () {
  let $ul = $(".list-box ul");
  let h = 9;
  let m = 0;

  while (h != 18) {
    let strH = h;
    let strM = m;

    if (h < 10) {
      strH = "0" + h;
    }
    if (m == 0) {
      strM = "00";
    }

    $ul.append(
      "<li> <button type='button' value='" +
        strH +
        "시 " +
        strM +
        "분'>" +
        strH +
        "시 " +
        strM +
        "분</button></li>"
    );

    m += 30;

    if (m == 60) {
      h += 1;
      m = 00;
    }
  }
  $ul.append(
    "<li> <button type='button' value='18시 00분'>18시 00분</button></li>"
  );
});

//리스트 박스 버튼 이벤트

$(".select__box").on("click", function () {
  $(".list-box").toggleClass("on-off");

  if ($(".list-box").hasClass("on-off")) {
    $(".icon__arrow-box").addClass("ready-ani");
    $(".icon__arrow-box").removeClass("start-ani");
  } else {
    $(".icon__arrow-box").removeClass("ready-ani");
    $(".icon__arrow-box").addClass("start-ani");
  }
});

$(document).on("click", ".list-box button", function () {
  console.log($(this).attr("value"));
  console.log($(this).val());
  console.log($(this));
  $(".time-box").attr("value", $(this).val());
});

// $(".list-box button").on("click", function () {
//   console.log("aa");
//   console.log($(this).attr("value"));
//   console.log($(this).val());
//   console.log($(this));
//   $(".time-box").text($(this).val());
// });

$("#admheader").load("cpHeader.jsp");