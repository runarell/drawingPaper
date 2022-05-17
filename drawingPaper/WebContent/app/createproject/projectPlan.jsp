<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="../../assets/css/createproject/default.css" />
<link type="text/css" rel="stylesheet"
   href="../../assets/css/createproject/projectPlan.css" />

<!-- Include stylesheet -->
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
   rel="stylesheet">


<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- <script type="text/javascript" src="/js/default.js"></script> -->
</head>

<body>
   <div class="wrap">
      <!-- header-->
      <header id="admheader">
         <link rel="import" href="cpHeader.jsp" />
      </header>

      <!-- hidden nav-->
      <!-- <nav id="admnav"></nav> -->

      <main>
      <div class="mainWrap">
         <section class="sec1">
            <!-- 메인 컨텐츠 -->
            <!--=================================================================-->
            <div class="main-content">
               <div class="content-row">
                  <div class="content-col">
                     <!-- 1열(주제와 설명) -->
                     <div class="sub">
                        <div class="sub-title">
                           프로젝트 계획
                           <div class="icon__star-box">
                              <svg viewBox="0 0 48 48">
                          <path
                                    d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                        </svg>
                           </div>
                        </div>
                        <div class="sub-explain"></div>
                     </div>
                     <div class="sub-notice">
                        <div class="sub-notice__title">텍스트 에디터 사용법</div>
                        <div class="sub-notice__explain">
                           <p>Enter()를 누르면 문단이 구분됩니다. 문단 내에서 간격 없이 줄바꿈 하려면 shift(⇧) +
                              enter(↵)를 사용해주세요.</p>
                           <p>ctrl+c/v를 이용해 선택한 이미지를 입력창 내에서 복사/붙여넣기 할 수 있습니다.</p>
                           <p>본문 텍스트와 이미지는 되도록 분리해서 작성해주세요. 통 이미지 사용은 불가합니다.</p>
                        </div>
                     </div>
                  </div>
                  <div class="content-col">
                     <!-- 2열(입력 양식) -->
                     <div class="project-plan__form--white">
                        <div class="project-plan__title">프로젝트 소개</div>
                        <div class="project-plan__explain">무엇을 만들기 위한 프로젝트인지 분명히
                           알려주세요</div>
                        <!-- ================================================================================ -->
                        <div id="editor"></div>
                        <button class="save">테스트용 버튼 console확인하기</button>
                        <pre>
                           <code id="output-html"></code>
                        </pre>
                        <!-- ================================================================================ -->
                     </div>
                  </div>
               </div>
            </div>
            <!--=================================================================-->
         </section>
      </div>
      </main>

      <!-- <footer id="footer"></footer> -->
   </div>
</body>

<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

<script src="../../assets/js/createproject/projectPlan.js"></script>
</html>