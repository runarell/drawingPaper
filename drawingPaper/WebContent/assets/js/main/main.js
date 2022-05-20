/**
 * 
 */

$().ready(function () {
    let sortNum = 1; //슬라이드 보여주는 사진 수
    let pageIdx = 0; // 페이지번호 시작 페이지 0
    let gall = null; // 반복 함수를 담을 변수 

    //겔러리 사진 수량
    let gallIndex = $(".imgListWrap figure").length;
    // 페이지 마지막 인덱스
    let endIndex = gallIndex - 1;
    // 태그 이미지 리스트 전체 
    let gallwidth = (gallIndex / sortNum) * 100 + "%";

    // 전체 길이 인덱스
    $('.totalNo').text(gallIndex);

    //이미지 리스트 길이 조젇
    $(".imgListWrap").width(gallwidth);

    // 함수 실행시간
    // 겔러리 이미지가 2개 이상일때 자동 스크롤 실행
    if (gallIndex > sortNum + 1) {

        gall = setInterval(galleryFun, 4500);
    }

    // 이미지 자동 슬라이드 이벤트
    function galleryFun() {
        // 이동가능 수 = 이미지 개수 - 출력 개수
        let movingLeng = gallIndex - sortNum;
        //이미지 가로 길이
        let photoWidth = $(".imgListWrap>figure").width();

        //페이지번호 다음 페이지 번호로
        pageIdx++;
        // 마지막 페이지 이면 첫 페이지로
        if (pageIdx > movingLeng) {
            pageIdx = 0;
        }
        $('.PageNo').text(pageIdx + 1);

        //처음 0 -> 1+ 페이지 이동
        $(".imgListWrap").animate({
            left: -photoWidth * pageIdx + "px",
        }, 1000
        );
    }
    //마우스 오버시 슬라이드 stop
    $(".imgListWrap").hover(
        function () {
            // 반복 변수 제거
            clearInterval(gall);
        },
        function () {
            // 반복 모듈 재작동
            gall = setInterval(galleryFun, 4500);
        }
    );

    // left 이미지 버튼
    $(".leftBtn").on('click', function () {
        clearInterval(gall); // 슬라이드 모듈 정지

        // 현제 이동할 걸이 ( 이미지 길이 )
        let photoWidth = $(".imgListWrap figure").width();
        // 페이지번호 변경
        pageIdx -= 1;
        // 0히하면 마지막 페이지번호로 변경  
        if (pageIdx < 0) {
            pageIdx = endIndex;
        }
        // 출력번호 변경
        $('.PageNo').text(pageIdx + 1);

        //슬라이드 작동
        $(".imgListWrap").animate({
            left: -photoWidth * pageIdx + "px",
        }, 500);

        // 슬라이드 제시작
        gall = setInterval(galleryFun, 4500);
    });
    $(".rightBtn").on('click', function () {
        clearInterval(gall); // 스라이드 스톱

        // 현제 이동할 걸이 ( 이미지 길이 )
        let photoWidth = $(".imgListWrap figure").width();
        // 페이지번호 변경
        pageIdx += 1;
        //마지막 페이지이면 페이지번호 0으로  
        if (pageIdx > endIndex) {
            pageIdx = 0;
        }

        // 출력번호 변경
        $('.PageNo').text(pageIdx + 1);

        //슬라이드 작동
        $(".imgListWrap").animate({
            left: -photoWidth * pageIdx + "px",
        }, 500
        );

        // 슬라이드 제시작
        gall = setInterval(galleryFun, 4500);
    });
});