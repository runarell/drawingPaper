/**
 * 
 */

$(".input-box input").on("focus", function () {
  $(this).attr("placeholder", "");
  $val = $(this).val();
  $box = $(this).closest(".input-box");

  if ($val.length == 0) {
    $(".input-box__msg").removeClass("hide");
    $($box).css({ border: "1px solid var(--red)" });
    $(".input-box__length").css({ color: "var(--red)" });
  }
});

$(".input-box input").on("blur", function () {
  $(this).attr("placeholder", "창작자님의 이름을 입력해주세요");
});

$(".input-box input").on("input", function () {
  $val = $(this).val();
  $box = $(this).closest(".input-box");

  $(".input-box__length").text($val.length + "/20");

  if ($val.length == 0) {
    $(".input-box__msg").removeClass("hide");
  } else {
    $(".input-box__msg").addClass("hide");
  }
  if ($val.length == 0 || $val.length > 20) {
    $($box).css({ border: "1px solid var(--red)" });
    $(".input-box__length").css({ color: "var(--red)" });
  } else {
    $($box).css({ border: "1px solid var(--black)" });
    $(".input-box__length").css({ color: "var(--light-gray)" });
  }
});

$(".creater-introduction__text-box textarea").on("input", function () {
  var $textBox = $(".creater-introduction__text-box");
  var $textArea = $textBox.find("textarea");

  if ($textArea.val().length < 10) {
    $(".text-box__msg").removeClass("hide");
  } else {
    $(".text-box__msg").addClass("hide");
  }

  if ($textArea.val().length < 10 || $textArea.val().length > 300) {
    $textBox.css({ border: "1px solid var(--red)" });
  } else {
    $textBox.css({ border: "1px solid var(--black)" });
  }

  $(".text-box__length").text($textArea.val().length + "/300");
});

$("#admheader").load("cpHeader.jsp");