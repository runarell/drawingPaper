<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="../../assets/css/join/emailJoin.css">
    <link rel="stylesheet" href="../../assets/css/join/sweetalert2.min_join.css">
    
    <script type="text/javascript" src="../../assets/js/jquery-3.6.0.min.js"></script> 
    <script type="text/javascript" src="../../assets/js/sweetalert2.min.js"></script>
    <script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="../../assets/js/join/integEjoin.js"></script>
    <script type="text/javascript" src="../../assets/js/join/alert1.js"></script>
</head>
<body>
    <!-- header -->
<header>
    <div class="header">
        <div class="Container__ContainerComponent-sc-1ey2h1l-0 kUAclQ LogoHeader__StyledContainer-sc-11h9w3h-0 jahVuh">
            <a href="/"><div class="TumblbugLogo-sc-5rx33z-0 hakSMQ LogoHeader__StyledTumblbugLogo-sc-11h9w3h-1 cdxLmC">
                <svg id="drawingPaper_logo" viewBox="0 0 107.89 28.39">
                    <title>DrawingPaperLogo</title>
                   </svg></div></a></div></div>
</header>
    <!-- header -->
    <!-- article -->
 <article>
        <div class="joinContainer">
                <div class="joinWrapper">
                    <h1>이메일로 가입하기</h1>
                    <!--Form start-->
                    <form autocomplete="on" class="joinForm" id="joinForm" action="${pageContext.request.contextPath}/user/UserJoinEmailOk.us">
                        <!-- Input area -->
                        <div id="inputwrapper">
                        <div class="inputdiv">
                            <div class="inputkey">이름</div>
                            <div class="wrappermargin"><span class="inputwrapper">
                                <input type="text" inputmode="text" id="inputname" placeholder="사용하실 이름을 입력해주세요." autocapitalize="off" autocomplete="off"
                                        class="inputDetail" name="user_name">
                            </span></div>
                            <div class="checkArea3"></div>
                        </div>

                        <div class="inputdiv">
                            <div class="inputkey">이메일 주소</div>
                            <div class="wrappermargin"><span class="inputwrapper">
                                <input type="text" inputmode="text" id="email" placeholder="이메일 주소를 입력해주세요." autocapitalize="off" autocomplete="off"
                                        class="inputDetail" name="user_email">
                            </span></div>
                            <div class="checkArea"></div>
                            <div class="wrappermargin"><span class="inputwrapper">
                                <input type="text" inputmode="text" id="emailCheck" placeholder="이메일 주소를 확인합니다." autocapitalize="off" autocomplete="off"
                                        class="inputDetail" name="user_email--re">
                            </span></div>
                            <div class="checkArea"></div>
                        </div>

                        <div class="inputdiv">
                            <div class="inputkey">비밀번호</div>
                            <div class="wrappermargin"><span class="inputwrapper">
                                <input type="password" inputmode="password" id="password" placeholder="비밀번호를 입력해주세요." autocapitalize="off" autocomplete="off"
<<<<<<< HEAD
                                        class="inputDetail">
                                <div class="checkArea">ㄴㄴㄴ</div>
=======
                                        class="inputDetail" name="user_pw">
>>>>>>> user/join
                            </span></div>
                         
                            <div class="wrappermargin passwordcheckdiv"><span class="inputwrapper">
                                <input type="password" inputmode="password" id="passwordCheck" placeholder="비밀번호를 확인합니다." autocapitalize="off" autocomplete="off"
<<<<<<< HEAD
                                        class="inputDetail">
                                <div class="checkArea"></div>
=======
                                        class="inputDetail" name="user_pw--re">
>>>>>>> user/join
                            </span></div>
                            
                        </div>
                        </div>
                        <!-- Input area -->

                        <!--Agree area-->
                        <div class="styleFormContent">
                            <div class="agreediv">
                                <label class="agreeDetail selectAll" >
                                    <!--체크된-->
                                    <span class="Checkbox_ clicked" id="allSelectchecked" style="display:none">
                                        <div name="check" class="Icon__ cicon">
                                            <svg viewBox="0 0 48 48">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z">
                                                </path></svg></div></span>
                                    <!--체크된--> 
                                    <input type="checkBox"  class="chkb" id="allSelect" value="1">
                                       전체 동의
                                </label>
                                <div class="line1"></div>
                                <ul>
                                    <li>
                                        <label class="agreeDetail">
                                            <!--체크된-->
                                            <span class="Checkbox_ clicked" id="req1checked" style="display:none">
                                                <div name="check" class="Icon__ cicon">
                                                    <svg viewBox="0 0 48 48">
                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z">
                                                        </path></svg></div></span>
                                            <!--체크된-->            
                                            <input type="checkBox" class="chkb req" id="req1" name="check" value="1">
                                               도화지 이용약관 동의
                                        </label>
                                        <a class="agreeContent" id="agreedetail1">내용보기</a>
                                    </li>
                                    <li>
                                        <label class="agreeDetail">
                                            <!--체크된-->
                                            <span class="Checkbox_ clicked" id="req2checked" style="display:none">
                                                <div name="check" class="Icon__ cicon">
                                                    <svg viewBox="0 0 48 48">
                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z">
                                                        </path></svg></div></span>
                                            <!--체크된--> 
                                            <input type="checkBox" class="chkb req" id="req2" name="check" value="1">
                                               개인정보 수집, 이용 동의
                                        </label>
                                        <a class="agreeContent" id="agreedetail2">내용보기</a>
                                    </li>
                                    <li>
                                        <label class="agreeDetail">
                                            <!--체크된-->
                                            <span class="Checkbox_ clicked" id="req3checked" style="display:none">
                                                <div name="check" class="Icon__ cicon">
                                                    <svg viewBox="0 0 48 48">
                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z">
                                                        </path></svg></div></span>
                                            <!--체크된--> 
                                            <input type="checkBox" class="chkb req" id="req3" name="check" value="1">
                                               만 14세 이상입니다.
                                        </label>
                                    </li>
                                    <li>
                                        <label class="agreeDetail">
                                            <!--체크된-->
                                            <span class="Checkbox_ clicked" id="btn1checked" style="display:none">
                                                <div name="check" class="Icon__ cicon">
                                                    <svg viewBox="0 0 48 48">
                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z">
                                                        </path></svg></div></span>
                                            <!--체크된--> 
                                            <input type="checkBox" class="chkb" id="btn1" name="check" value="1">
                                               마케팅 정보 수신 동의(선택)
                                        </label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--Agree area-->

                        <!--Warning-->
                        <div class="warning" id="warning"></div>
                        <!--Warning-->

                        <span class="formSubmit" onclick="submitCheck()">가입하기</span>
                        <div class="IsSignInOrSignUp">
                               이미 도화지 계정이 있으신가요?
                            <span color="sub0180" font-weight="500" class="etc1">
                                <a href="/">기존 계정으로 로그인하기</a>
                            </span>
                        </div>
                    </form>
                    <!--Form end-->

                    <div class="line2">
                        <span>또는</span>
                    </div>
                    <button class="kakaoButton" onclick="kakaoLogin()">카카오로 가입하기</button>    
                </div>
    </div>    

 </article>
 <!-- article -->   

     <!-- footer -->
<footer>
    <div class="footer" style="text-align: center;">© 2022 Drawing Paper Inc.</div>
</footer>
    <!-- footer -->
</body>
    

</html>