<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>결제페이지</title>
    <link rel="stylesheet" id="alert2" href="${pageContext.request.contextPath}/assets/css/payment/addressAdd.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/payment/sweetalert2.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/payment/payment.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">

    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script type="text/javascript">
	console.log("결제페이지 입니다.");
	</script>
</head>
<body>
<c:set var="pay" value="${payment}"/>

	<form id="paymentForm">
	<!-- 결제 api 필요값 -->
	<input name="project_name" type="hidden" value="${payment.getPro_title()}"><!-- 프로젝트명 -->	
	<input name="user_email" type="hidden" value="${payment.getPro_title()}"><!-- 사용자 이메일 -->
	<input name="user_name" type="hidden" value="${payment.getUser_name()}"><!-- 사용자 이름 -->
	<input name="user_tel" type="hidden" value=""><!-- 사용자 번호 -->
	<input name="pay_price" type="hidden" value="${payment.getPay_price()}"><!-- 결제금액  -->
	<!-- 결제 성공시 추가 보내줘야할 값  -->
	<input name="user_no" type="hidden" value="${payment.getUser_no()}"><!-- 사용자 번호 -->
	<input name="pro_no" type="hidden" value="${payment.getPro_no()}"><!-- 프로젝트 번호 -->
	<input name="pay_merchantuid" type="hidden" value=""><!-- pay_merchantuid 결제 코드 -->		
	</form>
	
    <div class="payheader">
        <div class="TumblbugLogo"><svg id="tumblbug_logo" viewBox="0 0 107.89 28.39"><title>TumblbugLogo</title><path d="M26.55,11.87H25c-.12,0-.23,0-.28.12l-2.27,5.5c-1.15,2.89-2.31,4.62-4.9,5a1.41,1.41,0,0,1-1.24-.32c-.27-.33-.26-.89.05-1.64l2.82-6.89,0-.07.58-1.43a.18.18,0,0,0,0-.21c-.06-.08-.15-.06-.25-.06H16c-.12,0-.24,0-.28.12l-.58,1.4a.35.35,0,0,0,0,.31.33.33,0,0,0,.25.16h1.46l-2.75,6.68a3.53,3.53,0,0,0,0,3h0a3.2,3.2,0,0,0,2.58,1.06A8.27,8.27,0,0,0,21,23.13l.08-.05,0,.09a2.27,2.27,0,0,0,1.37,1.29c.74.19,1.81.18,3.44-1.52a.31.31,0,0,0,0-.43l-.77-.76a.31.31,0,0,0-.45,0c-.47.6-.94.91-1.32.88a.39.39,0,0,1-.33-.26,3.77,3.77,0,0,1,.4-2,.31.31,0,0,0,0-.13l.22-.45,3.15-7.68a.18.18,0,0,0,0-.21C26.75,11.84,26.65,11.87,26.55,11.87Z" transform="translate(-3.1 -3.05)"></path><path d="M12.21,11.92H9.3l.94-2.43a.55.55,0,0,0,0-.39c-.06-.08-.15-.24-.25-.24H8.39c-.12,0-.24.22-.28.33l-1,2.73H5c-.12,0-.24,0-.28.12l-.58,1.4a.35.35,0,0,0,0,.31.33.33,0,0,0,.25.16H6.26L3.67,20.37v0l-.09.22c-.6,1.54-.63,2.62-.09,3.31a2.77,2.77,0,0,0,2.29.8,5.54,5.54,0,0,0,4.59-2.46,8.86,8.86,0,0,0,1.09-2,.31.31,0,0,0-.29-.42H9.49a.31.31,0,0,0-.28.18,4.5,4.5,0,0,1-2.38,2.49c-.57.16-1,.13-1.16-.1-.32-.38-.12-1.22.16-1.86l2.67-6.63h3.15a.35.35,0,0,0,.28-.23l.58-1.45a.19.19,0,0,0,0-.22C12.41,11.91,12.31,11.92,12.21,11.92Z" transform="translate(-3.1 -3.05)"></path><path d="M46.2,21.57a.31.31,0,0,0-.47.05c-.26.4-.8,1.08-1.49,1.08a.29.29,0,0,1-.27-.11c-.12-.17-.09-.42.08-.9L46.37,16a4.69,4.69,0,0,0,.24-3.32,2.35,2.35,0,0,0-1.54-1.28,5,5,0,0,0-1.49-.23,5.35,5.35,0,0,0-4,1.79l-.1.11,0-.14a2.14,2.14,0,0,0-1.86-1.53,4.82,4.82,0,0,0-3.4,1l-.23.18.28-.66a.27.27,0,0,0,0-.27.29.29,0,0,0-.26-.12h-3.5a.29.29,0,0,0-.28.17l-.58,1.42a.27.27,0,0,0,0,.27.29.29,0,0,0,.25.11h1.48l-.85,2.13v0l-3,7.58a.39.39,0,0,0,0,.33.35.35,0,0,0,.25.17h1.57a.35.35,0,0,0,.28-.23l2.24-5.59c1.13-2.57,3-4.27,4.85-4.41.63,0,.8.22.86.31.33.53-.05,1.62-.33,2.19v0l-3,7.2a.31.31,0,0,0,.28.42h1.57a.29.29,0,0,0,.28-.19l2.79-6.79c1.15-2.4,3-3.48,4.22-3.49a1.21,1.21,0,0,1,1.12.5c.4.7-.18,1.93-.36,2.29v0l-2.25,5.47a2.73,2.73,0,0,0-.16,2.27,1.81,1.81,0,0,0,1.54.8h.52A3.84,3.84,0,0,0,47,22.69a.31.31,0,0,0,0-.37Z" transform="translate(-3.1 -3.05)"></path><path d="M94.6,22.24l-.77-.76a.3.3,0,0,0-.23-.09.3.3,0,0,0-.22.12c-.34.43-.84.93-1.32.88a.39.39,0,0,1-.33-.26,3.77,3.77,0,0,1,.4-2,.3.3,0,0,0,0-.1l.23-.5,3.14-7.67a.18.18,0,0,0,0-.21c-.06-.08-.15-.06-.25-.06H93.66c-.12,0-.23,0-.28.12l-2.27,5.5c-1.15,2.89-2.31,4.62-4.91,5A1.4,1.4,0,0,1,85,21.95c-.27-.33-.26-.89.05-1.64l2.82-6.89,0-.07.58-1.43a.18.18,0,0,0,0-.21c-.06-.08-.15-.06-.25-.06H84.66c-.12,0-.24,0-.28.12l-.58,1.4a.35.35,0,0,0,0,.31.33.33,0,0,0,.25.16h1.46L82.8,20.3a3.51,3.51,0,0,0,0,3h0a3.2,3.2,0,0,0,2.58,1.06,8.27,8.27,0,0,0,4.28-1.52l.08-.05,0,.09a2.27,2.27,0,0,0,1.36,1.29c.74.19,1.81.18,3.44-1.52A.31.31,0,0,0,94.6,22.24Z" transform="translate(-3.1 -3.05)"></path><path d="M110.88,12.24a1.66,1.66,0,0,0-1-1,2.24,2.24,0,0,0-2.52.73l-.11.15-.05.08-.06-.07a4.44,4.44,0,0,0-3-1.39h-.33a5.56,5.56,0,0,0-5.34,4.59,5.11,5.11,0,0,0,.17,2.16l0,.07-.07,0A4.38,4.38,0,0,0,96.72,19a3,3,0,0,0,.34,3.88l.08.08L97,23a4.3,4.3,0,0,0-2.49,4.38h0a4.12,4.12,0,0,0,1.2,2.69c.92.91,2.34,1.35,4.36,1.34a14.5,14.5,0,0,0,3-.25c4.59-1,5.26-3.71,5.25-5.27a3.44,3.44,0,0,0-1.18-2.74c-2-1.67-5.77-1.08-5.93-1.05h0c-2.16-.13-2.5-.72-2.63-.94a1,1,0,0,1,0-1,2.26,2.26,0,0,1,1-.86l0,0,0,0a4.4,4.4,0,0,0,2.87,1.24h.31a5.5,5.5,0,0,0,5.39-4.56,5,5,0,0,0-.31-2.53l0,0,0,0a2.13,2.13,0,0,1,.8-.7.46.46,0,0,1,.36,0,.41.41,0,0,1,.22.26.85.85,0,0,1-.09.59.31.31,0,0,0,.14.4l.8.39a.31.31,0,0,0,.41-.14A2.69,2.69,0,0,0,110.88,12.24Zm-8,6.25h-.18a2.4,2.4,0,0,1-1.87-1.12,2.83,2.83,0,0,1-.32-1.76,3.38,3.38,0,0,1,3.27-2.74H104a2.31,2.31,0,0,1,1.68.81,2.7,2.7,0,0,1,.54,2.1A3.37,3.37,0,0,1,102.93,18.49Zm-6.05,7.84a3,3,0,0,1,2.18-2.25h0a10,10,0,0,0,3.7,0h0a4.42,4.42,0,0,1,2.78.7,1.8,1.8,0,0,1,.63,1.28,2.24,2.24,0,0,1-.63,1.58c-1,1.11-3,1.66-5.86,1.63a3.07,3.07,0,0,1-2.49-1A2.15,2.15,0,0,1,96.88,26.33Z" transform="translate(-3.1 -3.05)"></path><path d="M79.22,11.69h0a4.45,4.45,0,0,0-4.19-.5l-.18.07-.17.07,3.14-7.8a.36.36,0,0,0,0-.31.33.33,0,0,0-.25-.16H73.8a.33.33,0,0,0-.28.22l-.58,1.45a.39.39,0,0,0,0,.32.35.35,0,0,0,.25.17h1.7L70.07,17.27c-.09.23-.26.69-.54,1.63l0,0a4.7,4.7,0,0,0,1.37,4.83,3.84,3.84,0,0,0,2.42.79,5.68,5.68,0,0,0,1.81-.33A9.56,9.56,0,0,0,81,16.11,5,5,0,0,0,79.22,11.69ZM73.71,22.44a2.2,2.2,0,0,1-1.46-.52,2.7,2.7,0,0,1-.68-2.74L73.21,15a3.85,3.85,0,0,1,2.25-1.85,2.91,2.91,0,0,1,2.48.27A3,3,0,0,1,78.86,16c-.14,2.66-2.13,5.55-4.35,6.31A2.49,2.49,0,0,1,73.71,22.44Z" transform="translate(-3.1 -3.05)"></path><path d="M58.85,11.76a4.45,4.45,0,0,0-4.19-.5l-.18.07-.17.07,3.14-7.8a.36.36,0,0,0,0-.31.33.33,0,0,0-.25-.16H53.43a.33.33,0,0,0-.28.22L52.57,4.8a.39.39,0,0,0,0,.32.35.35,0,0,0,.25.17h1.7L49.7,17.35c-.23.58-.55,1.67-.55,1.68a4.7,4.7,0,0,0,1.37,4.84,3.84,3.84,0,0,0,2.42.79,5.65,5.65,0,0,0,1.81-.33,9.56,9.56,0,0,0,5.87-8.14A5.05,5.05,0,0,0,58.85,11.76ZM53.34,22.52A2.22,2.22,0,0,1,51.88,22a2.7,2.7,0,0,1-.68-2.74L52.84,15a3.85,3.85,0,0,1,2.25-1.85,2.91,2.91,0,0,1,2.47.27,3,3,0,0,1,.92,2.62c-.14,2.66-2.14,5.55-4.35,6.31A2.48,2.48,0,0,1,53.34,22.52Z" transform="translate(-3.1 -3.05)"></path><path d="M65.75,21.61a.31.31,0,0,0-.46,0c-.4.56-.77.86-1.12.89a.56.56,0,0,1-.47-.19c-.21-.24-.12-.85.07-1.3l7-17.51a.36.36,0,0,0,0-.31.33.33,0,0,0-.25-.16H67.06a.33.33,0,0,0-.28.22L66.2,4.75a.39.39,0,0,0,0,.32.35.35,0,0,0,.25.17H67.9L61.57,21h0l0,.12a3,3,0,0,0,.13,2.64,2.11,2.11,0,0,0,1.91.84,3.84,3.84,0,0,0,3-1.82.31.31,0,0,0,0-.39Z" transform="translate(-3.1 -3.05)"></path><path d="M69.87,26.86l-.94-.47a.45.45,0,0,0-.6.2l-.23.47a3.08,3.08,0,0,1-2.76,1.64,4.78,4.78,0,0,1-3.49-1.44l-.3-.43a.45.45,0,0,0-.29-.18.45.45,0,0,0-.33.07l-.86.6a.44.44,0,0,0-.18.29.44.44,0,0,0,.07.33l.27.42a6.34,6.34,0,0,0,4.28,2.22v0h.11a5.87,5.87,0,0,0,.79.06,5,5,0,0,0,4.44-2.69l.23-.47A.45.45,0,0,0,69.87,26.86Z" transform="translate(-3.1 -3.05)"></path></svg></div>
        <span class="logotitle">
            프로젝트 후원하기</span>
    </div>
    <div class="pay">
        <div class="paytitle">
            <section class="sectitle">
                <div class="inner">
                        <div class="image">
                            <a href="/welovegame">
                                <img src="https://tumblbug-pci.imgix.net/d05a1d64f756ec69917d918d04d51173c6bcdef9/84831d551ea5084d4f4449a1950e0def1a112c44/2ce70ab1899b2a63eb2c90455c8ddc8a32185155/84ec1e21-b0ab-4d63-8ba6-e7bcda16e466.png?auto=format%2Ccompress&amp;fit=crop&amp;h=465&amp;lossless=true&amp;w=620&amp;s=f132d95887b276ae688a1a0824167db1" alt="[게임에 미치다] 우리가 사랑한 한국 PC 게임 94 프로젝트 이미지">
                            </a>
                        </div>
                        <div class="titleText">
                            <div class="titlecontent">
                                <span class="intro">
                                    ${payment.getPro_category()}
                                    |
                                    ${payment.getUser_name()}
                                </span>
                            </div>
                            <div>
                                <h3 class="h3title">
                                    <a href="/welovegame">${payment.getPro_title()}</a>
                                </h3>
                            </div>
                            <div style="display: flex;">
                                <strong class="account">
                                    ${payment.getPro_achieveprice()}원
                                </strong>
                                <!--
                                <span class="achivement">
                                    1700%
                                </span>
                                <span class="state">
                                    10일 남음
                                </span>
                                -->
                        </div>
                        </div>
                </div>
            </div>
        </div>

            </section>
        </div>
        <div class="paycontent">
            <div class="content1">
                <div class="infotitle">
                    <p class="ptitle">티켓 정보</p>
                </div>
                <div class="contentwrapper">
                <div class="cntdiv">
                    <div class="info1">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th class="th">티켓 구성</th>
                                    <td class="td"><div id="ticketinfo">STAGE 2 : 종이책 1권 + 펀딩 참여자 크레딧</div></td>
                                </tr>
                                <tr>
                                    <th class="th">티켓 금액</th>
                                    <td style="display: flex; margin-top: 2.5px;">
                                        <div id="ticketprice">${payment.getPro_ticketprice()}원</div> 
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th">공연 시작일</th>
                                    <td>2022년 6월 3일</td>
                                </tr>
                            </tbody>
                        </table>
                        <button class="firstbtn" onclick="ticketChange()">변경</button>
                    </div>
                </div>
            </div>

                <div class="infotitle">
                    <p class="ptitle">후원자 정보</p>
                </div>
                <div class="contentwrapper2">
                <div class="cntdiv2">
                    <div class="info2">
                    <table class="table">
                        <tbody>
                        <!-- 
                            <tr>
                                <th class="th">연락처</th>
                                <td class="td">010-1234-5678</td>
                            </tr>
                         -->
                            <tr>
                                <th class="th">이메일</th>
                                <td>${payment.getUser_emall()}</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="infocnt2">
                        <div class = "infocnt22">* 위 연락처와 이메일로 후원 관련 소식이 전달됩니다.</div>
                        <div class = "infocnt22">* 연락처 및 이메일 변경은 설정 > 계정 설정에서 가능합니다.</div>
                    </div>
                </div>
            </div>
        </div>

                <div class="infotitle">
                    <p class="ptitle">결제수단</p>
                </div>
                <div class="contentwrapper4">
                <div class="cntdiv4">
                <div class="cardaccount">
                <div style="display: flex;">
                    <div class="listelement">
                        <div class="radioselector">
                            <div class="radioselectorinner">
                                <div class="radioselectorwrapper">
                                <input type="radio" value="">
                                </div>
                                    <div class="card">카카오페이</div>
                            </div>
                        </div>
                    </div>
                </div>
               </div>
            </div>
        </div>
        </div>

            <div class="content2">
                <div class="infotitle2">
                    <div class="infotitle22">최종 후원 금액</div>
                    <div class="infotitle22money">
                        <span id="ticketprice2">${payment.getPro_ticketprice()}원</span>
                    </div>
                </div>
                <div class="infotitle33">
                    <div class="alert">
                        프로젝트 성공시, 결제는
                        <strong style="color: rgb(255, 87, 87);">2022.05.12</strong>
                        에 진행됩니다. 프로젝트가 무산되거나 중단된 경우, 예약된 결제는 자동으로 취소됩니다.
                    </div>
                    <div class="checks">
                        <div class="check">
                            <label class="checklabel" >
                                <input type="checkbox" id="clicked" value="1">
                                <div id="box1"></div>
                                <span style="margin-left: 15px">개인정보 제 3자 제공 동의</span>
                            </label>
                            <div class="watcingcontent" onclick="privacyshow()">내용보기</div>
                        </div>
                        <div class="check">
                            <label class="checklabel">
                                <input type="checkbox" id="clicked2" value="1">
                                <div id="box2"></div>
                                <span style="margin-left: 15px">후원 유의사항 확인</span>
                            </label>
                            <div class="watchingopen"><div id="text1">열기</div>
                                <div style="margin-left: 8px;" id="changeimg">
                                    <svg viewBox="0 0 48 48" style="width: 1em;
                                    height: 1em;" >
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M45.4003 15.1217L23.9125 36L2.5247 15.1217C1.8251 14.4225 1.8251 13.2237 2.5247 12.5245C3.2243 11.8252 4.42362 11.8252 5.22317 12.5245L23.9125 30.8054L42.7019 12.5245C43.4015 11.8252 44.6008 11.8252 45.4003 12.5245C45.8001 12.8241 46 13.3236 46 13.8231C45.9001 14.3226 45.7002 14.8221 45.4003 15.1217Z"></path>
                                    </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="watchingcontent">
                        <div class="alertdetailtitle">후원은 구매가 아닌 창의적인 계획에 자금을 지원하는 일입니다.</div>
                        <div class="alertdetail">텀블벅에서의 후원은 아직 실현되지 않은 프로젝트가 실현될 수 있도록 제작비를 후원하는 과정으로, 기존의 상품 또는 용역을 거래의 대상으로 하는 매매와는 차이가 있습니다. 따라서 전자상거래법상 청약철회 등의 규정이 적용되지 않습니다.</div>
                        <div class="alertdetailtitle">프로젝트는 계획과 달리 진행될 수 있습니다.</div>
                        <div class="alertdetail">예상을 뛰어넘는 멋진 결과가 나올 수 있지만 진행 과정에서 계획이 지연, 변경되거나 무산될 수도 있습니다. 본 프로젝트를 완수할 책임과 권리는 창작자에게 있습니다.</div>
                    </div>
                </div>

                <button class="paysubmit">
                    <span class="span" >후원하기</span>
                </button>
                
            </div>
        </div>
    </div>
    
    <footer id="footer"></footer>
    

    <script defer src="${pageContext.request.contextPath}/assets/js/sweetalert2.min.js"></script>
    <script defer src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.min.js"></script>
    <script>var contextPath = "${pageContext.request.contextPath}";</script>
    <script defer src="${pageContext.request.contextPath}/assets/js/payment/payment.js"></script>


</body>
</html>