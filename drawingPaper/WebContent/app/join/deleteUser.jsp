<!DOCTYPE html>
<lang lang="ko-KR"></lang>
<html>

<head>
    <meta charset="utf-8">
    <title data-react-helmet="true">펀딩</title>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#headers").load("header.jsp");

        });
    </script>

</head>

<body>
    <div id="headers"></div>
    <link rel="stylesheet" href="css/deleteUser.css">
    <section>
        <div class="style_gmYOwM">
            <div class="style_JLshK tbb">
                <div class="style_dZTvTb tbb">
                    <div class="style_dwSooV">
                        <div class="margin Container_RImG kUAclQ">
                            <span class="style_fnt-lt">
                                회원 탈퇴
                            </span>
                        </div>
                        <div class="margin Container_jbMJKf kUAclQ">
                            <div class="style_gXqskY">
                                <div class="style_ykRtD">본인인증</div>
                                <div class="style_jOIWHu"><span class="fPbiXs style_xAhmZ" disabled=""><input
                                            disabled="" type="text" inputmode="text" placeholder="아이디 확인"
                                            autocomplete="off" autocapitalize="off" class="Input_bfmNPl"
                                            value="백엔드"></span>
                                    <span class="Input_dXKaPI style_hrbbbQ">
                                        <input type="password" inputmode="password" placeholder="비밀번호 확인"
                                            autocomplete="off" autocapitalize="off" class="Input_jGEGrw"></span>
                                </div>
                                <div class="style_dkrpFR">
                                    <button class="iuECHq style_button style_eMFJtN fnt-p1" color="gray80"><span>회원
                                            탈퇴</span></button>
                                </div>
                                <div class="style_kDPxVR">혹시 비밀번호를 잊으셨나요?</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>

    <footer>
        <div class="style_ewzIHP">
            <div class="style_iFzqvD">텀블벅은 플랫폼 제공자로서 프로젝트의 당사자가 아니며, 직접적인
                통신판매를 진행하지
                않습니다.
                프로젝트의 완수 및 선물제공의 책임은 해당 프로젝트의 창작자에게 있으며, 프로젝트와 관련하여 후원자와 발생하는 법적 분쟁에 대한 책임은 해당 창작자가 부담합니다.
            </div>
        </div>
    </footer>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>

    $(document).ready(function () {
        $('.style_dkrpFR').on("click", function () {

            swal({
                text: "회원탈퇴가 완료되었습니다",
                closeOnClickOutside: false,
                button: "확인"
            });

        });
    });

</script>

</html>
