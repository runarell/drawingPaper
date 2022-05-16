/**
 * 
 */

//select_box 에니메이션 class 컨트롤
$(".select_box").click(function () {
  let $sbox = $(this).children("div");
  let $lbox = $(this)
    .parent("div")
    .next("div.list_place")
    .children("div.list_box");

  $sbox.toggleClass("action");
  $lbox.toggleClass("on_off");
  $(this).toggleClass("add_border");
});

$(".select_box").focusout(function () {
  $(this).remove("add_border");
});

// 리스트 박스(셀렉트 선택지)

$(".list_box button").click(function () {
  let btnVal = $(this).val();
  let $listBox = $(this).parents(".list_box");
  let $prev = $listBox.parent(".list_place").prev("div");
  let $input = $prev.find("input");
  let $sbox = $prev.find(".select_box");

  $listBox.addClass("on_off");
  $input.val(btnVal);
  $input.attr("value", btnVal);
  $sbox.removeClass("add_border");
  $prev.find(".arrow").removeClass("action");
});

//제목 입력관련
$(".input_box input").focus(function () {
  $(this).attr("placeholder", "");
});

$(".input_box input").blur(function () {
  if ($(this).val() == "" || $(this).val().length > 32) {
    $(this).attr("placeholder", "제목을 입력해 주세요");
    $(this).closest("span").css({ border: "1px solid var(--red)" });
  } else {
    $(this).closest("span").css({ border: "1px solid var(--border)" });
  }
});

$(".input_box input").on("input", function () {
  if (!$(this).val() || $(this).val().length > 32) {
    $(this).closest("span").css({ border: "1px solid var(--red)" });
    $(".length").css({ color: "var(--red)" });
  } else {
    $(this).closest("span").css({ border: "1px solid var(--black)" });
    $(".length").css({ color: "var(--black)" });
  }
  //제목 글자수 표시/제한
  $(".length").text($(this).val().length + "/32");
});

// 이미지 확대
function enlarge(obj) {
  let $src = $(obj).prev("img").attr("src");
  $(".large-img__box").children("img").attr("src", $src);
  $(".large-img").removeClass("large-img--ready");
  $(".large-img").addClass("large-img--start");
}
// 이미지 확대 종료
function exit() {
  $(".large-img").removeClass("large-img--start");
  $(".large-img").addClass("large-img--ready");
}

//이미지 위로 올리기
function up(obj) {
  let $cur = $(obj).closest(".img_list");
  let $prev = $cur.prev(".img_list");
  if (!$prev.length) {
    return;
  }

  let curImg = $cur.find("img").attr("src");
  let prevImg = $prev.find("img").attr("src");

  $cur.find("img").attr("src", prevImg);
  $prev.find("img").attr("src", curImg);
}

//이미지 아래로 내리기
function down(obj) {
  let $cur = $(obj).closest(".img_list");
  let $next = $cur.next(".img_list");
  if (!$next.length) {
    return;
  }

  let curImg = $cur.find("img").attr("src");
  let nextImg = $next.find("img").attr("src");

  $cur.find("img").attr("src", nextImg);
  $next.find("img").attr("src", curImg);
}

$("#admheader").load("cpHeader.jsp");