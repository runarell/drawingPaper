/**
 * 
 */

$(window).scroll(() => {
  let scrollTop = $(window).scrollTop();
  if (Math.round(scrollTop) > 105) {
    $(".tab_menu").css({ position: "fixed" });
    $(".tab_menu").css({ top: 64 });
    $(".tab_menu").css({ transition: "0.1s" });
  } else {
    $(".tab_menu").css({ position: "static" });
  }
});

$(function () {
  let $info = $(location).attr("href");
  let arr = $info.split("/");
  let page = arr[arr.length - 1];
//  console.log('aa')
//  console.log(page);
  switch (page) {
    case "defaultInfo.jsp":
      $(".default-info").addClass("cur-page");
      break;
    case "fundingPlan.jsp":
      $(".funding-plan").addClass("cur-page");
      break;
    case "projectPlan.jsp":
      $(".project-plan").addClass("cur-page");
      break;
    case "createrInfo.jsp":
      $(".creater-info").addClass("cur-page");
      break;
  }
});

$(".tab_menu a").on("click", () => {
  $(this).closest("li").addClass("cur-page");
});

$(".creater-area__select").on("click", function () {
  if ($(this).find(".sido, .gugun").hasClass("hide")) {
    $(this).find(".sido, .gugun").removeClass("hide");
  } else {
    $(this).find(".sido, .gugun").addClass("hide");
  }
});

$(document).on("click", ".sido button, .gugun button", function () {
  $input = $(this).closest(".creater-area__select").find("input");
  console.log($input.attr("value", $(this).val()));
  $input.attr($(this).val());
});