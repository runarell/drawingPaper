<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<meta charset="UTF-8" />

<title></title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/createproject/cpHeader.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/createproject/default.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/createproject/defaultInfo.css" />


</head>

<body>


   <!-- 확대이미지 div 시작 -->
   <div class="large-img large-img--ready">
      <div class="large-img__box">
         <div class="large-img__x" onclick="exit();">
            <svg viewBox="0 0 48 48">
               <path fill-rule="evenodd" clip-rule="evenodd"
                  d="M45.1766 41.0846L28.1097 24.0186L45.1766 6.95266C46.2744 5.85485 46.2744 4.05843 45.1766 2.86082C44.0778 1.66321 42.2824 1.76401 41.0838 2.86082L24.0189 19.9268L6.95301 2.86082C5.8552 1.76401 4.05879 1.76401 2.86119 2.86082C1.66358 3.95863 1.76338 5.75605 2.86119 6.95266L19.9271 24.0186L2.86119 41.0846C1.76338 42.1834 1.76338 43.9788 2.86119 45.1774C3.95899 46.2742 5.7554 46.2742 6.95301 45.1774L24.0189 28.1104L41.0838 45.1774C42.1826 46.2742 43.979 46.2742 45.1766 45.1774C46.2744 43.9788 46.2744 42.1834 45.1766 41.0846Z"></path></svg>
         </div>
         <!-- back을 연결하면 이미지 주소에 수정이 필요함 -->
         <!-- js도 같이 봐야함 -->
         <img src="" alt="">
      </div>
   </div>
   <!-- 확대이미지 div 끝 -->
   <div class="wrap">
      <!-- header-->
      <header id="admheader">
         <jsp:include page="/app/createproject/cpHeader.jsp"/>
      </header>

      <!-- hidden nav-->
      <nav id="admnav"></nav>

      <main>
      <form action="${pageContext.request.contextPath}/project/ProjectDefaultCreateOk.pj" name="defaultSave" method="post" id="defaultSave" >
      <div class="mainWrap">
         <section class="sec1">
            <!-- 메인 컨텐츠 -->
            <!--=================================================================-->
            <div class="outer_frame">
               <div class="inner_frame">
                  <div class="project_category">
                     <div class="create_row">
                        <div class="create_col">
                           <div class="flex sub-title">
                              <div class="sub">프로젝트 카테고리</div>

                              <div class="star">
                                 <svg viewBox="0 0 48 48">
                            <path
                                       d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                          </svg>
                              </div>
                           </div>
                           <div class="sub-explain">
                              프로젝트 성격과 가장 일치하는 카테고리를 선택해주세요.<br />적합하지 않을 경우 운영자에 의해 조정될 수
                              있습니다.
                           </div>
                        </div>
                        <div class="create_col flex">
                           <div class="select_div">
                              <p>카테고리</p>
                              <div>
                                 <span class="select_box"> <input type="text"
                                    value="연극" name="pro_category" readonly />
                                    <div class="arrow ready">
                                       <svg viewBox="0 0 48 48">
                                <path fill-rule="evenodd"
                                             clip-rule="evenodd"
                                             d="M2 14.4065C2 13.1363 3.09843 12.0615 4.39657 12.0615C4.99571 12.0615 5.59485 12.257 6.09414 12.7455L23.9685 29.4526L41.843 12.6478C42.8415 11.7684 44.3394 11.7684 45.338 12.7455C46.2367 13.7226 46.2367 15.1882 45.2381 16.0676L23.9685 36L2.79886 16.0676C2.29957 15.6767 2 14.9928 2 14.4065Z"></path>
                              </svg>
                                    </div>
                                 </span>
                              </div>
                              <div class="list_place">
                                 <div class="list_box on_off">
                                    <div>
                                       <ul>
                                          <li>
                                             <button type="button" value="연극" name="pro_category">연극</button>
                                          </li>
                                          <li>
                                             <button type="button" value="뮤지컬" name="pro_category">뮤지컬</button>
                                          </li>
                                          <li>
                                             <button type="button" value="노래" name="pro_category">노래</button>
                                          </li>
                                          <li>
                                             <button type="button" value="마술" name="pro_category">마술</button>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- <div class="select_div">
                        <p>세부 카테고리</p>
                        <div>
                          <span class="select_box">
                            <input type="text" value="세부 뭐하지" readonly />
                            <div class="arrow ready">
                              <svg viewBox="0 0 48 48">
                                <path
                                  fill-rule="evenodd"
                                  clip-rule="evenodd"
                                  d="M2 14.4065C2 13.1363 3.09843 12.0615 4.39657 12.0615C4.99571 12.0615 5.59485 12.257 6.09414 12.7455L23.9685 29.4526L41.843 12.6478C42.8415 11.7684 44.3394 11.7684 45.338 12.7455C46.2367 13.7226 46.2367 15.1882 45.2381 16.0676L23.9685 36L2.79886 16.0676C2.29957 15.6767 2 14.9928 2 14.4065Z"
                                ></path>
                              </svg>
                            </div>
                          </span>
                        </div>
                        <div class="list_place">
                          <div class="list_box on_off">
                            <div>
                              <ul>
                                <li>
                                  <button type="button" value="세부 뭐하지">
                                    세부 뭐하지
                                  </button>
                                </li>
                                <li>
                                  <button type="button" value="test1">
                                    test1
                                  </button>
                                </li>
                                <li>
                                  <button type="button" value="test2">
                                    test2
                                  </button>
                                </li>
                                <li>
                                  <button type="button" value="test3">
                                    test3
                                  </button>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div> -->
                        </div>
                     </div>
                  </div>

                  <!-- ----------------------프로젝트 제목 ---------------------- -->
                  <div class="project title">
                     <div class="create_row">
                        <div class="create_col">
                           <div class="flex">
                              <div class="sub">프로젝트 제목</div>

                              <div class="star">
                                 <svg viewBox="0 0 48 48">
                            <path
                                       d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                          </svg>
                              </div>
                           </div>
                           <div>프로젝트의 주제, 창작물의 특징이 드러나는 멋진 제목을 붙여 주세요</div>
                        </div>
                        <div class="create_col flex">
                           <div class="title_div input_div">
                              <p>제목</p>
                              <div>
                                 <span class="title_box input_box"> <input type="text"
                                    placeholder="제목을 입력해주세요" name="pro_title" id="pro_title" />
                                 </span>
                                 <div class="length">0/32</div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- ----------------------프로젝트 제목 끝 ---------------------- -->

                  <div class="project img">
                     <div class="create_row">
                        <div class="create_col">
                           <div class="flex">
                              <div class="sub">프로젝트 대표 이미지</div>

                              <div class="star">
                                 <svg viewBox="0 0 48 48">
                            <path
                                       d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                          </svg>
                              </div>
                           </div>
                           <div>후원자들이 이프로젝트의 내용을 쉽게 파악하고 좋은 인상을 받을 수 있도록 이미지 가이드라인을
                              따라 주세요.</div>
                           <div class="img_notice_box">
                              <div class="notice_title">
                                 <div class="i_icon_box">
                                    <svg viewBox="0 0 48 48">
                              <path
                                          d="M21.5 23.1C21.5 23.0448 21.5448 23 21.6 23H26.4C26.4552 23 26.5 23.0448 26.5 23.1V33.9C26.5 33.9552 26.4552 34 26.4 34H21.6C21.5448 34 21.5 33.9552 21.5 33.9V23.1Z"></path>
                              <path
                                          d="M21 17C21 15.3431 22.3431 14 24 14C25.6569 14 27 15.3431 27 17C27 18.6569 25.6569 20 24 20C22.3431 20 21 18.6569 21 17Z"></path>
                              <path fill-rule="evenodd"
                                          clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                            </svg>
                                 </div>
                                 1개 이상의 이미지를 등록하면 이미지 슬라이더 형태로 제공됩니다.
                              </div>
                              <div>푸시 메시지 등 이미지가 1개만 제공되는 상황에서 대표 이미지가 활용됩니다.</div>
                           </div>
                        </div>
                        <div class="create_col flex">
                           <div class="img_div">
                              <div class="img_upload_button">

                                 <div>
                                    <span>
                                       <div class="upload_icon">
                                          <svg viewBox="0 0 48 48">
                                  <path fill-rule="evenodd"
                                                clip-rule="evenodd"
                                                d="M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z"></path>
                                </svg>
                                       </div> <!-- 이미지 개수 자동 업데이트 구현해야 함 --> <span class="img-length"> 이미지 업로드(0/5)</span>
                                    </span>

                                    <p>최소 1개, 최대 5개까지 업로드 가능</p>
                                    <p>파일 형식: jpg 또는 png / 사이즈: 가로 1,240px, 세로 930px 이상)</p>
                                    <strong>※ 이미지를 등록하면
                                       즉시 반영됩니다. </strong> <input type="file" id="multiple-img-input" accept=".jpg, .jpeg, .png" multiple>
                                 </div>
                              </div>

                              <!-- ****************이미지 리스트 시작******************* -->
                             <ul class="img-list-box">
                              
                              </ul>
                              <!-- +++++++++++++++ 반복 예제입니다 ++++++++++++++++++++ -->



                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
      </section>
      </div>
      <!--=================================================================-->
   </form>
   </main>
   </div>

   <!-- <footer id="footer"></footer> -->
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<%-- <script src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.min.js"></script> --%>
<script src="${pageContext.request.contextPath}/assets/js/createproject/defaultInfo.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/createproject/defaultInfoSubmit.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/createproject/cpHeader.js"></script>

</html>