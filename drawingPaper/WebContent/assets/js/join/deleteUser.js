$(document).ready(function () {

            $("#headers").load("../../app/header.jsp");
            
            $('.style_dkrpFR').on("click", function () {

                swal({
                    text: "회원탈퇴가 완료되었습니다",
                    closeOnClickOutside: false,
                    button: "확인"
                });

            });

        });

