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


//======================여러 이미지 미리보기로 가져오기=====================
let imgInput = document.getElementById("multiple-img-input");

imgInput.onchange = function (obj) {
  let files = obj.target.files;
  let fileArr = Array.prototype.slice.call(files);
  let ImgListBox = document.querySelector(".img-list-box");

  //인덱스 초기값은 현재(onchange이벤트 발생 시점) img_list의 수
  let index = document.getElementsByClassName("img_list").length;

  //대표이미지 span추가 함수
  // let addSpan = function () {
  //   let listBox = document.querySelector(".img-list-box");
  //   listBox.innerHTML += "<span>대표이미지</span>";
  // document.querySelector(".img-list-box").classList.add("first");
  // document.querySelector(".first").insertBefore("<span>대표이미지</span>");

  let makeTag = function (imgSrc) {
    index++;

    let imgTag =
      "<li class='img_list'><div class='img_stepper'> <button onclick='up(this)'> <div class='up_down_icon'> <svg viewBox='0 0 48 48'> <path fill-rule='evenodd' clip-rule='evenodd'                 d='M24 11L2 38H46.001L24 11Z'></path></svg>  </div>   </button>  <span id='index-span'>" +
      index +
      "</span> <button onclick='down(this)'> <div class='up_down_icon'> <svg viewBox='0 0 48 48'> <path fill-rule='evenodd' clip-rule='evenodd'  d='M2 10L24 37L46 10H2Z'></path></svg>        </div>     </button>  </div>   <div class='img_controller'> <div class='img_box'>  <img src='" +
      imgSrc +
      "'> <button type='button' onclick='enlarge(this);'> <div> <svg viewBox='0 0 17 16' xmlns='http://www.w3.org/2000/svg'>  <path  d='M16.276 1.00326C16.276 0.727112 16.0522 0.503255 15.776 0.503255L11.276 0.503255C10.9999 0.503255 10.776 0.727113 10.776 1.00325C10.776 1.2794 10.9999 1.50325 11.276 1.50325L15.276 1.50325L15.276 5.50325C15.276 5.7794 15.4999 6.00325 15.776 6.00325C16.0522 6.00325 16.276 5.7794 16.276 5.50325L16.276 1.00326ZM11.4629 6.02348L16.1296 1.35681L15.4225 0.649702L10.7558 5.31637L11.4629 6.02348Z'                    fill='white'></path>                 <path                    d='M0.998372 0.503255C0.72223 0.503255 0.498372 0.727112 0.498372 1.00326L0.498372 5.50325C0.498372 5.7794 0.72223 6.00325 0.998372 6.00325C1.27451 6.00325 1.49837 5.7794 1.49837 5.50325L1.49837 1.50325L5.49837 1.50325C5.77451 1.50325 5.99837 1.2794 5.99837 1.00325C5.99837 0.727113 5.77451 0.503255 5.49837 0.503255L0.998372 0.503255ZM6.01859 5.31637L1.35193 0.649702L0.644819 1.35681L5.31149 6.02348L6.01859 5.31637Z'                    fill='white'></path>                 <path                    d='M0.498373 15.0026C0.498372 15.2787 0.72223 15.5026 0.998373 15.5026L5.49837 15.5026C5.77451 15.5026 5.99837 15.2787 5.99837 15.0026C5.99837 14.7265 5.77451 14.5026 5.49837 14.5026L1.49837 14.5026L1.49837 10.5026C1.49837 10.2265 1.27451 10.0026 0.998372 10.0026C0.72223 10.0026 0.498372 10.2265 0.498372 10.5026L0.498373 15.0026ZM5.31149 9.98238L0.644819 14.6491L1.35193 15.3562L6.01859 10.6895L5.31149 9.98238Z'                    fill='white'></path>                 <path                    d='M15.776 15.5026C16.0522 15.5026 16.276 15.2787 16.276 15.0026L16.276 10.5026C16.276 10.2265 16.0522 10.0026 15.776 10.0026C15.4999 10.0026 15.276 10.2265 15.276 10.5026L15.276 14.5026L11.276 14.5026C10.9999 14.5026 10.776 14.7265 10.776 15.0026C10.776 15.2787 10.9999 15.5026 11.276 15.5026L15.776 15.5026ZM10.7558 10.6895L15.4225 15.3562L16.1296 14.6491L11.4629 9.98238L10.7558 10.6895Z'                    fill='white'></path></svg>           </div>        </button>       </div>     <div class='button_list flex'>        <div>           <button>              <div class='upload_icon'>                 <svg viewBox='0 0 48 48'>       <path fill-rule='evenodd'                       clip-rule='evenodd'                       d='M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z'></path>     </svg>              </div>              변경 <input type='file' accept='image/* ' id='change-img'>           </button>        </div>        <div>           <button>              <div class='download_icon'>                 <svg viewBox='0 0 14 14'                    xmlns='http://www.w3.org/2000/svg'>                    <path fill-rule='evenodd' clip-rule='evenodd'                       d='M6.44325 7.02619L3.36676 4.05286C3.13236 3.93626 2.83937 3.96541 2.63427 4.05286C2.42917 4.28606 2.42917 4.60672 2.63427 4.81077L6.61905 8.6586C6.82415 8.86265 7.14644 8.86265 7.35154 8.6586L11.3656 4.78162C11.5707 4.57757 11.5707 4.25691 11.3656 4.05286C11.1605 3.84881 10.8089 3.84881 10.6038 4.05286L7.49804 7.02619L7.49804 1.1084C7.49804 0.816895 7.26364 0.583984 6.97064 0.583984C6.67765 0.583984 6.44325 0.816895 6.44325 1.1084L6.44325 7.02619ZM1.63829 9.91137C1.63829 9.61987 1.40389 9.38638 1.11089 9.38638C0.817895 9.38638 0.583496 9.64873 0.583496 9.94023V12.8923C0.583496 13.1838 0.817895 13.4167 1.11089 13.4167H12.8894C13.1824 13.4167 13.4168 13.1838 13.4168 12.8923V9.94023C13.4168 9.64873 13.1824 9.41582 12.8894 9.41582C12.5964 9.41582 12.362 9.64873 12.362 9.94023V12.3381H1.63829V9.91137Z'></path></svg>              </div>           </button>          </div>          <div>           <button>              <div class='delete_icon'>                 <svg viewBox='0 0 48 48'>                    <path fill-rule='evenodd' clip-rule='evenodd'                       d='M38.814 42.172C38.814 42.946 38.064 43.574 37.144 43.574H10.856C9.936 43.574 9.186 42.946 9.186 42.172V12.218H38.814V42.172ZM17.564 4.426L30.542 4.524V9.794H17.462L17.564 4.426ZM44.786 9.794H32.968V4.524C32.968 3.13 31.832 2 30.436 2H17.564C16.168 2 15.03 3.13 15.03 4.524V9.794H3.212C2.542 9.794 2 10.336 2 11.006C2 11.676 2.542 12.218 3.212 12.218H6.76V42.172C6.76 44.284 8.598 46 10.856 46H37.144C39.402 46 41.24 44.284 41.24 42.172V12.218H44.786C45.456 12.218 46 11.676 46 11.006C46 10.336 45.456 9.794 44.786 9.794ZM18.857 36.9338C19.527 36.9338 20.069 36.3918 20.069 35.7218V20.0738C20.069 19.4038 19.527 18.8618 18.857 18.8618C18.187 18.8618 17.645 19.4038 17.645 20.0738V35.7218C17.645 36.3918 18.187 36.9338 18.857 36.9338ZM30.3542 35.7218C30.3542 36.3918 29.8122 36.9338 29.1422 36.9338C28.4722 36.9338 27.9302 36.3918 27.9302 35.7218V20.0738C27.9302 19.4038 28.4722 18.8618 29.1422 18.8618C29.8122 18.8618 30.3542 19.4038 30.3542 20.0738V35.7218Z'></path></svg>              </div>           </button>          </div>       </div>  </div></li>";

    return imgTag;
  };

  fileArr.forEach((file) => {
    let fileReader = new FileReader();

    fileReader.onload = function (e) {
      //ul가져오기
      // let ul = document.querySelector(".img-list-box");
      //li생성
      // let li = document.createElement("li");
      //li에 클래스 추가
      // li.classList.add("img_list");
      //ul에 li를 미리 추가시키기
      // ul.appendChild(li);

      //사진의 src를 받아오기
      imgSrc = e.target.result;

      ImgListBox.innerHTML += makeTag(imgSrc);
      // li.innerHTML += makeTag(imgSrc); -> 변경함

      //이미지 리스트의 길이(사진의 수)
      document.getElementsByClassName("img-length")[0].innerHTML =
        "이미지 업로드(" + index + "/5)";

      // if (index == 1) {
      //   addSpan();
      // }
    };

    //사진내용 가져오기
    fileReader.readAsDataURL(file);
  });
};
// console.log("aaaaaaaaaaaaa");
// addSpan();

// if (document.getElementsByClassName("img_list").length > 0) {
//   let changeImg = document.getElementById("change-img");
//   changeImg.onchange = function () {
//     console.log("aa");
//   };
// }

// <!-- ****************이미지 리스트 태그(백업용) 참고******************* -->
// <li class="img_list">
//    <div class="img_stepper">
//       <!-- 위 버튼 기능 구현해야 함 -->
//       <button onclick="up(this);">
//          <div class="up_down_icon">
//             <svg viewBox="0 0 48 48">
//                <path fill-rule="evenodd" clip-rule="evenodd"
//                   d="M24 11L2 38H46.001L24 11Z"></path></svg>
//          </div>
//       </button>
//       <span>1</span>
//       <!-- 아래 버튼 기능 구현해야 함 -->
//       <button onclick="down(this);">
//          <div class="up_down_icon">
//             <svg viewBox="0 0 48 48">
//                <path fill-rule="evenodd" clip-rule="evenodd"
//                   d="M2 10L24 37L46 10H2Z"></path></svg>
//          </div>
//       </button>
//    </div> <!-- 이미지 컨트롤러, 미리보기 -->
//    <div class="img_controller">
//       <!-- 이미지 박스 -->
//       <div class="img_box first">
//          <span>대표이미지</span> <img src="../../images/createproject/icon.jpg">

//          <!-- 사진 확대 버튼 -->
//          <button type="button" onclick="enlarge(this);">
//             <div>
//                <svg viewBox="0 0 17 16"
//                   xmlns="http://www.w3.org/2000/svg">
//                   <path
//                      d="M16.276 1.00326C16.276 0.727112 16.0522 0.503255 15.776 0.503255L11.276 0.503255C10.9999 0.503255 10.776 0.727113 10.776 1.00325C10.776 1.2794 10.9999 1.50325 11.276 1.50325L15.276 1.50325L15.276 5.50325C15.276 5.7794 15.4999 6.00325 15.776 6.00325C16.0522 6.00325 16.276 5.7794 16.276 5.50325L16.276 1.00326ZM11.4629 6.02348L16.1296 1.35681L15.4225 0.649702L10.7558 5.31637L11.4629 6.02348Z"
//                      fill="white"></path>
//                   <path
//                      d="M0.998372 0.503255C0.72223 0.503255 0.498372 0.727112 0.498372 1.00326L0.498372 5.50325C0.498372 5.7794 0.72223 6.00325 0.998372 6.00325C1.27451 6.00325 1.49837 5.7794 1.49837 5.50325L1.49837 1.50325L5.49837 1.50325C5.77451 1.50325 5.99837 1.2794 5.99837 1.00325C5.99837 0.727113 5.77451 0.503255 5.49837 0.503255L0.998372 0.503255ZM6.01859 5.31637L1.35193 0.649702L0.644819 1.35681L5.31149 6.02348L6.01859 5.31637Z"
//                      fill="white"></path>
//                   <path
//                      d="M0.498373 15.0026C0.498372 15.2787 0.72223 15.5026 0.998373 15.5026L5.49837 15.5026C5.77451 15.5026 5.99837 15.2787 5.99837 15.0026C5.99837 14.7265 5.77451 14.5026 5.49837 14.5026L1.49837 14.5026L1.49837 10.5026C1.49837 10.2265 1.27451 10.0026 0.998372 10.0026C0.72223 10.0026 0.498372 10.2265 0.498372 10.5026L0.498373 15.0026ZM5.31149 9.98238L0.644819 14.6491L1.35193 15.3562L6.01859 10.6895L5.31149 9.98238Z"
//                      fill="white"></path>
//                   <path
//                      d="M15.776 15.5026C16.0522 15.5026 16.276 15.2787 16.276 15.0026L16.276 10.5026C16.276 10.2265 16.0522 10.0026 15.776 10.0026C15.4999 10.0026 15.276 10.2265 15.276 10.5026L15.276 14.5026L11.276 14.5026C10.9999 14.5026 10.776 14.7265 10.776 15.0026C10.776 15.2787 10.9999 15.5026 11.276 15.5026L15.776 15.5026ZM10.7558 10.6895L15.4225 15.3562L16.1296 14.6491L11.4629 9.98238L10.7558 10.6895Z"
//                      fill="white"></path></svg>
//             </div>
//          </button>
//          <!-- 사진 확대 버튼 끝 -->

//       </div>
//       <!-- 이미지 박스 끝 -->
//       <div class="button_list flex">
//          <div>
//             <!-- 버튼 1 -->
//             <button>
//                <div class="upload_icon">
//                   <svg viewBox="0 0 48 48">
//         <path fill-rule="evenodd"
//                         clip-rule="evenodd"
//                         d="M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z"></path>
//       </svg>
//                </div>
//                변경 <input type="file" accept="image/*" id="change-img">
//             </button>
//          </div>
//          <!-- 버튼 2 -->
//          <div>
//             <button>
//                <div class="download_icon">
//                   <svg viewBox="0 0 14 14"
//                      xmlns="http://www.w3.org/2000/svg">
//                      <path fill-rule="evenodd" clip-rule="evenodd"
//                         d="M6.44325 7.02619L3.36676 4.05286C3.13236 3.93626 2.83937 3.96541 2.63427 4.05286C2.42917 4.28606 2.42917 4.60672 2.63427 4.81077L6.61905 8.6586C6.82415 8.86265 7.14644 8.86265 7.35154 8.6586L11.3656 4.78162C11.5707 4.57757 11.5707 4.25691 11.3656 4.05286C11.1605 3.84881 10.8089 3.84881 10.6038 4.05286L7.49804 7.02619L7.49804 1.1084C7.49804 0.816895 7.26364 0.583984 6.97064 0.583984C6.67765 0.583984 6.44325 0.816895 6.44325 1.1084L6.44325 7.02619ZM1.63829 9.91137C1.63829 9.61987 1.40389 9.38638 1.11089 9.38638C0.817895 9.38638 0.583496 9.64873 0.583496 9.94023V12.8923C0.583496 13.1838 0.817895 13.4167 1.11089 13.4167H12.8894C13.1824 13.4167 13.4168 13.1838 13.4168 12.8923V9.94023C13.4168 9.64873 13.1824 9.41582 12.8894 9.41582C12.5964 9.41582 12.362 9.64873 12.362 9.94023V12.3381H1.63829V9.91137Z"></path></svg>
//                </div>
//             </button>

//          </div>

//          <!-- 버튼 3은 첫번째 이미지는 존재하지 않음-->
//          <!-- <div>
//   <button>
//     <div class="delete_icon">
//       <svg viewBox="0 0 48 48"><path fill-rule="evenodd" clip-rule="evenodd" d="M38.814 42.172C38.814 42.946 38.064 43.574 37.144 43.574H10.856C9.936 43.574 9.186 42.946 9.186 42.172V12.218H38.814V42.172ZM17.564 4.426L30.542 4.524V9.794H17.462L17.564 4.426ZM44.786 9.794H32.968V4.524C32.968 3.13 31.832 2 30.436 2H17.564C16.168 2 15.03 3.13 15.03 4.524V9.794H3.212C2.542 9.794 2 10.336 2 11.006C2 11.676 2.542 12.218 3.212 12.218H6.76V42.172C6.76 44.284 8.598 46 10.856 46H37.144C39.402 46 41.24 44.284 41.24 42.172V12.218H44.786C45.456 12.218 46 11.676 46 11.006C46 10.336 45.456 9.794 44.786 9.794ZM18.857 36.9338C19.527 36.9338 20.069 36.3918 20.069 35.7218V20.0738C20.069 19.4038 19.527 18.8618 18.857 18.8618C18.187 18.8618 17.645 19.4038 17.645 20.0738V35.7218C17.645 36.3918 18.187 36.9338 18.857 36.9338ZM30.3542 35.7218C30.3542 36.3918 29.8122 36.9338 29.1422 36.9338C28.4722 36.9338 27.9302 36.3918 27.9302 35.7218V20.0738C27.9302 19.4038 28.4722 18.8618 29.1422 18.8618C29.8122 18.8618 30.3542 19.4038 30.3542 20.0738V35.7218Z"></path></svg>
//     </div>
// </button>

// </div> -->

//       </div>
//    </div> <!-- 이미지 컨트롤러, 미리보기 끝-->
// </li>
// <!-- ****************이미지 리스트 끝******************* -->
