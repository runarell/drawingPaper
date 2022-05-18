$(document).ready(function () {
	  $(".filterBtn").click(function () {
		    $(this).next().fadeToggle(100);

		    if ($(this).children("span").hasClass("on")) {
		      $(this).children("span").removeClass("on");
		    } else {
		      $(this).children("span").addClass("on");
		    }
		  });
    
     $('.heartcon').click(function () {
    	if ($(this).hasClass('on')) {
    		$(this).removeClass('on');
    	} else {
    		$(this).addClass('on');
    	}
    })
});


// 슬라이드 이벤트
$().ready(function () {
	  let sortNum = 1; //슬라이드 보여주는 사진 수

	  //슬라이드 이미지 길이
	  let gallIndex = $(".imgList figure").length;
	  let imgNum = gallIndex;
	  // 이미지를 담을 블럭의 길이
	  let gallwidth = (gallIndex / sortNum) * 100 + "%";
	  // 길이 부여
	  $(".imgListWrap").width(gallwidth);
	  let pageIdx = 0; // 페이지 번호

	  $(".leftBtn").on("click", function () {
	    let photoWidth = $(".imgListWrap figure").width();
	    pageIdx -= 1;
	    if (pageIdx < 0) {
	      pageIdx = imgNum - 1;
	    }
	    $(".imgListWrap").animate(
	      {
	        left: -photoWidth * pageIdx + "px",
	      },
	      500
	    );
	  });

	  $(".rightBtn").on("click", function () {
	    let photoWidth = $(".imgListWrap figure").width();
	    pageIdx += 1;
	    if (pageIdx > imgNum - 1) {
	      pageIdx = 0;
	    }
	    $(".imgListWrap").animate(
	      {
	        left: -photoWidth * pageIdx + "px",
	      },
	      500
	    );
	  });
	});
