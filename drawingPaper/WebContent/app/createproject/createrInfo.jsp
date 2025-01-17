<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title></title>
    <link type="text/css" rel="stylesheet"
   href="../../assets/css/createproject/cpHeader.css" />
    
    <link type="text/css" rel="stylesheet" href="../../assets/css/createproject/default.css" />
    <link
      type="text/css"
      rel="stylesheet"
      href="../../assets/css/createproject/createrInfo.css"/>
    <script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"
    ></script>
    
  </head>

  <body>
    <div class="wrap">
      <!-- header-->
      <header id="admheader">
        <link rel="import" href="cpHeader.jsp" />
      </header>

      <!-- hidden nav-->
      <nav id="admnav"></nav>

      <main>
        <div class="mainWrap">
          <section class="sec1">
            <!-- 메인 컨텐츠 -->
            <!--=================================================================-->
            <div class="main-content">
              <!-- ================================================================== -->
              <div class="content-row">
                <div class="content-col">
                  <!-- 1열(주제와 설명) -->
                  <div class="sub">
                    <div class="sub-title">
                      창작자 이름
                      <div class="icon__star-box">
                        <svg viewBox="0 0 48 48">
                          <path
                            d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"
                          ></path>
                        </svg>
                      </div>
                    </div>
                    <div class="sub-explain">
                      <p>
                        창작자 개인이나 팀을 대표할 수 있는 이름을 써주세요.
                      </p>
                    </div>
                  </div>
                  <!-- <div class="sub-alert"></div> -->
                </div>
                <div class="content-col">
                  <!-- 2열(입력 양식) -->
                  <div class="input-wrap">
                    <div class="input-box">
                      <span>
                        <!-- 이벤트로 placeholder 지워야함!!!! -->
                        <input
                          type="text"
                          placeholder="창작자님의 이름을 입력해주세요"
                          autocomplete="off"
                          autocapitalize="off"
                        />
                      </span>
                    </div>
                    <!-- 빈 값 유효성 검사 -->
                    <div class="input-box__alert">
                      <div class="input-box__msg hide">필수 항목입니다.</div>
                      <div class="input-box__length">0/20</div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- ==================================================================== -->
              
              <div class="content-row">
                <div class="content-col">
                  <!-- 1열(주제와 설명) -->
                  <div class="sub">
                    <div class="sub-title">
                      프로필 이미지
                      <div class="icon__star-box">
                        <svg viewBox="0 0 48 48">
                          <path
                            d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"
                          ></path>
                        </svg>
                      </div>
                    </div>
                    <div class="sub-explain">
                      <p>창작자 개인이나 팀의 사진을 올려주세요.</p>
                    </div>
                  </div>
                  <!-- <div class="sub-alert"></div> -->
                </div>
                <div class="content-col">
                  <!-- 2열(입력 양식) -->
                  <div class="creater-img-wrap">
                    <div class="creater-img__box">
                      <!-- 이미지 -->
                      <div class="creater-img__circle-frame">
                        <div src="../../images/createproject/icon.jpg"></div>
                      </div>
                    </div>
                    <div>
                      <div class="creater-img__upload-btn">
                        <!-- 버튼 -->
                        <button>
                          <div class="icon__upload">
                            <svg viewBox="0 0 48 48">
                              <path
                                fill-rule="evenodd"
                                clip-rule="evenodd"
                                d="M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z"
                              ></path>
                            </svg>
                          </div>
                          <input type="file" accept=".jpg, .png, .gif, .jpeg" />
                          이미지 파일 업로드
                        </button>
                      </div>
                      <div class="creater-img__explane">
                        <!-- text -->
                        <p class="p">
                          파일 형식은 jpg 또는 png 또는 gif로, <br />
                          사이즈는 가로 200px, 세로 200px 이상으로 올려주세요.
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- ==================================================================== -->
              <div class="content-row">
                <div class="content-col">
                  <!-- 1열(주제와 설명) -->
                  <div class="sub">
                    <div class="sub-title">
                      창작자 소개
                      <div class="icon__star-box">
                        <svg viewBox="0 0 48 48">
                          <path
                            d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"
                          ></path>
                        </svg>
                      </div>
                    </div>
                    <div class="sub-explain">
                      2~3문장으로 창작자님의 이력과 간단한 소개를 써주세요.
                    </div>
                  </div>
                  <!-- <div class="sub-alert"></div> -->
                </div>
                <div class="content-col">
                  <!-- 2열(입력 양식) -->
                  <div class="creater-introduction-wrap">
                    <div class="creater-introduction__text-box">
                      <div class="creater-introduction__inner-box">
                        <textarea
                          placeholder="간단한 이력과 소개를 써주세요"
                        ></textarea>
                      </div>
                    </div>
                    <!-- 유효성 검사 -->
                    <div class="text-box__alert">
                      <div class="text-box__msg hide">
                        최소 10글자 이상 적어주세요.
                      </div>
                      <div class="text-box__length">0/300</div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- ==================================================================== -->
              <div class="content-row">
                <div class="content-col">
                  <!-- 1열(주제와 설명) -->
                  <div class="sub">
                    <div class="sub-title">창작자 주 활동 지역</div>
                    <div class="sub-explain">
                      창작자님의 주 활동 지역을 선택해주세요.
                    </div>
                  </div>
                  <!-- <div class="sub-alert"></div> -->
                </div>
                <div class="content-col">
                  <!-- 2열(입력 양식) -->
                  <div class="creater-area-wrap flex">
                    <div class="creater-area__sido">
                      <div>
                        <p class="creater-area__title p">시/도</p>
                      </div>
                      <div class="creater-area__select-box">
                        <!-- input -->
                        <div class="creater-area__select">
                          <span>
                            <input type="text" value="서울" readonly />
                            <div class="icon__arrow">
                              <svg viewBox="0 0 48 48">
                                <path
                                  fill-rule="evenodd"
                                  clip-rule="evenodd"
                                  d="M2 14.4065C2 13.1363 3.09843 12.0615 4.39657 12.0615C4.99571 12.0615 5.59485 12.257 6.09414 12.7455L23.9685 29.4526L41.843 12.6478C42.8415 11.7684 44.3394 11.7684 45.338 12.7455C46.2367 13.7226 46.2367 15.1882 45.2381 16.0676L23.9685 36L2.79886 16.0676C2.29957 15.6767 2 14.9928 2 14.4065Z"
                                ></path>
                              </svg>
                            </div>
                          </span>
                          <div class="sido hide" name="sido">
                            <ul></ul>
                          </div>
                        </div>
                        <!-- 셀렉트 박스사용 -->
                      </div>
                    </div>
                    <div class="creater-area__gungu">
                      <div>
                        <p class="creater-area__title p">시/군/구</p>
                      </div>
                      <div class="creater-area__select-box">
                        <!-- input -->
                        <div class="creater-area__select">
                          <span>
                            <input
                              type="text"
                              value="시/군/구를 선택해주세요"
                              readonly
                            />
                            <div class="icon__arrow">
                              <svg viewBox="0 0 48 48">
                                <path
                                  fill-rule="evenodd"
                                  clip-rule="evenodd"
                                  d="M2 14.4065C2 13.1363 3.09843 12.0615 4.39657 12.0615C4.99571 12.0615 5.59485 12.257 6.09414 12.7455L23.9685 29.4526L41.843 12.6478C42.8415 11.7684 44.3394 11.7684 45.338 12.7455C46.2367 13.7226 46.2367 15.1882 45.2381 16.0676L23.9685 36L2.79886 16.0676C2.29957 15.6767 2 14.9928 2 14.4065Z"
                                ></path>
                              </svg>
                            </div>
                          </span>
                          <!-- 셀렉트 박스사용 -->
                          <div class="gugun hide" name="gugun">
                            <ul></ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- ==================================================================== -->
              <div class="content-row">
                <div class="content-col">
                  <!-- 1열(주제와 설명) -->
                  <div class="sub">
                    <div class="sub-title">
                      본인 인증
                      <div class="icon__star-box">
                        <svg viewBox="0 0 48 48">
                          <path
                            d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"
                          ></path>
                        </svg>
                      </div>
                    </div>
                    <div class="sub-explain">
                      <p>창작자 본인 명의의 휴대폰 번호로 인증해주세요.</p>
                    </div>
                  </div>
                  <!-- <div class="sub-alert"></div> -->
                </div>
                <div class="content-col">
                  <!-- 2열(입력 양식) -->
                  <div class="creater-auth-wrap"  id="auth-wrap">
                    <div class="creater-auth__box flex">
                      <div class="creater-auth__col">
                        <div class="icon__exclamation">
                          <svg viewBox="0 0 48 48">
                            <path
                              fill-rule="evenodd"
                              clip-rule="evenodd"
                              d="M44 24C44 35.0457 35.0457 44 24 44C12.9543 44 4 35.0457 4 24C4 12.9543 12.9543 4 24 4C35.0457 4 44 12.9543 44 24ZM21.0099 15.1091C21.0046 15.0505 21.0507 15 21.1095 15H26.8905C26.9493 15 26.9954 15.0505 26.9901 15.1091L26.0083 25.9091C26.0036 25.9606 25.9604 26 25.9087 26H22.0913C22.0396 26 21.9964 25.9606 21.9917 25.9091L21.0099 15.1091ZM24 29C22.3431 29 21 30.3431 21 32C21 33.6569 22.3431 35 24 35C25.6569 35 27 33.6569 27 32C27 30.3431 25.6569 29 24 29Z"
                            ></path>
                          </svg>
                        </div>
                        <p>본인인증을 완료해주세요!</p>
                      </div>
                      <div class="creater-auth__col">
                        <button class="creater-auth__btn" onclick="auth__btn()">인증하기</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- ==================================================================== -->
              <div class="content-row">
                <div class="content-col">
                  <!-- 1열(주제와 설명) -->
                  <div class="sub">
                    <div class="sub-title">
                      입금 계좌
                      <div class="icon__star-box">
                        <svg viewBox="0 0 48 48">
                          <path
                            d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"
                          ></path>
                        </svg>
                      </div>
                    </div>
                    <div class="sub-explain">
                      <p>
                        후원금을 전달받을 계좌를 등록해주세요. 법인사업자는 법인
                        계좌로만 정산받을 수 있습니다.
                      </p>
                    </div>
                  </div>
                  <!-- <div class="sub-alert"></div> -->
                </div>
                <div class="content-col">
                  <!-- 2열(입력 양식) -->
                  <div class="creater-acount-wrap" id="account-wrap">
                    <div class="creater-acount__box flex">
                      <div class="creater-acount__col">
                        <div class="icon__w">
                          <svg viewBox="0 0 48 48">
                            <path
                              d="M20.0936 28.5294L19.5831 25.8936H20.677L20.0936 28.5294Z"
                            ></path>
                            <path
                              d="M24.2738 21.605L23.7904 23.8511H24.7573L24.2738 21.605Z"
                            ></path>
                            <path
                              d="M28.9916 25.8936H27.8734L28.4811 28.5294L28.9916 25.8936Z"
                            ></path>
                            <path
                              fill-rule="evenodd"
                              clip-rule="evenodd"
                              d="M24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44ZM18.0239 30.9261L16.6654 25.8936H14.1C14.0448 25.8936 14 25.8488 14 25.7936V23.9511C14 23.8958 14.0448 23.8511 14.1 23.8511H16.1304L14.8943 19.1253C14.8777 19.0619 14.9255 19 14.991 19H17.8307C17.8767 19 17.9168 19.0314 17.9278 19.0761L19.1048 23.8511H21.2326L22.5545 19.0733C22.5665 19.03 22.6059 19 22.6508 19H25.9234C25.9686 19 26.0081 19.0302 26.0199 19.0738L27.3176 23.8511H29.4673L30.6202 19.0765C30.631 19.0316 30.6712 19 30.7174 19H33.5567C33.6222 19 33.67 19.0619 33.6534 19.1253L32.4173 23.8511H34.4714C34.5267 23.8511 34.5714 23.8958 34.5714 23.9511V25.7936C34.5714 25.8488 34.5267 25.8936 34.4714 25.8936H31.8822L30.5238 30.9261C30.512 30.9697 30.4724 31 30.4272 31H26.8025C26.7583 31 26.7194 30.971 26.7067 30.9287L25.1964 25.8936H23.3527L21.8677 30.9283C21.8552 30.9708 21.8161 31 21.7718 31H18.1205C18.0753 31 18.0357 30.9697 18.0239 30.9261Z"
                            ></path>
                          </svg>
                        </div>
                        <p>입금 받으실 계좌를 등록해 주세요!</p>
                      </div>
                      <div class="creater-acount__col">
                        <button class="creater-acount__btn"  onclick="account__btn()">계좌등록</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- ==================================================================== -->
            </div>

            <!--=================================================================-->
          </section>
        </div>
      </main>

      <!-- <footer id="footer"></footer> -->
    </div>
    <script src="../../assets/js/createproject/createrInfo.js"></script>
    <script src="../../assets/js/createproject/area.js"></script>
    <script src="../../assets/js/createproject/cpHeader.js"></script>
  </body>
</html>