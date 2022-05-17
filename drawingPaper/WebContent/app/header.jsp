<!DOCTYPE html>
<html>
<body>

    <link rel="stylesheet" href="css/header.css">
    <div class="style_DcWJD">
        <div class="style_kQkrtf">
            <div class="style_jxLqaO">
                <div class="style_dtkXPY"><img src="image/logo.png" alt=""></div>
                <div class="style_bgpTeU">
                    <div class="style_cfcgIZ">프로젝트 올리기</div>
                    <div class="style_hwZyFc">
                        <div class="style_kuGxgw">
                            <img src="image/hart.png" alt="" class="style_hart">
                        </div>
                    </div>
                    <div class="style_hwZyFc">
                        <div class="style_kuGxgw">
                            <img src="image/bell.png" alt="" class="style_bell">
                        </div>
                    </div>
                    <div class="style_UserButtonWrapper">
                        <div class="style_UserButton">
                            <div style="margin:0;padding:0" class="style_UserAvatar"><span style="margin:0;padding:0"
                                    class="ProfileImg_StyledProfileImg"><span class="username">백</span></span></div>
                            <div class="style__UserText">백엔드</div>
                        </div>
                        <div class="SNB_Wrapper">
                            <div class="SNB_MenuList">
                                <div class="SNB_MenuItem">프로필</div>
                                <div class="SNB_MenuItem">응원권</div>
                                <div class="SNB_MenuItemDivider"></div>
                                <div class="SNB_MenuItem">후원현황</div>
                                <div class="SNB_MenuItem">관심 프로젝트</div>
                                <div class="SNB_MenuItem">팔로우</div>
                                <div class="SNB_MenuItemDivider"></div>
                                <div class="SNB_MenuItem">알림</div>
                                <div class="SNB_MenuItem">메시지</div>
                                <div class="SNB_BannerWrapperF">
                                    <div class="SNB_KakaoBanner"><span>플친 추가하고 <br>프로젝트 추천받기</span>
                                        <div class="SNB_KakaoIconWrapper">
                                            <img src="image/kakaologo.png" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="SNB_MenuItemDivider"></div>
                                <div class="SNB_MenuItem">내가 만든 프로젝트</div>
                                <div class="SNB_MenuItem">설정</div>
                                <div class="SNB_MenuItemDivider"></div>
                                <div class="SNB_MenuItem">로그아웃</div>
                            </div>
                            <div class="SNB_DimmedLayer"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="style_HeaderContentLayout">
                <div class="style_SearchBar">
                    <div class="style_CategorySection">
                        <div style="padding:0" class="style_CategoryWrapper_ca">
                            <div style="margin:0 8px 0 0" class="style_kuGxgw">
                                <img src="image/content.png" alt="" width="10" class="style_MenuIcon">
                            </div>카테고리
                        </div>
                        <div class="style_CategoryWrapper_home">홈</div>
                        <div class="style_CategoryWrapper">인기</div>
                        <div class="style_CategoryWrapper">신규</div>
                        <div class="style_CategoryWrapper">마감임박</div>
                    </div>
                    <div class="style_SearchInputWrapper"><input placeholder="검색어를 입력해주세요." class="style_SearchInput">
                        <div class="style_SearchButton">
                            <img src="image/serch.png" alt="" class="style_SearchIcon">
                        </div>
                    </div>
                </div>
                <div class="style_ExtendedCategorySection">
                    <div class="style_ExtendedCategorySectionMHeader">
                        <img src="image/content.png" alt="">
                    </div>카테고리</div>
                <div class="style_CategoryContainer">
                    <div class="style_Depth1CategoryWrapper">
                        <div class="style_Depth1CategoryGroup">
                            <div class="style_Depth1Category_cNAPbs">
                                <div class="style_Depth1CategoryIcon">
                                    <img src="image/menu_all.png" alt="">
                                </div>
                                <div class="style_Depth1CategoryTextall">전체</div>
                            </div>
                            <div class="style_Depth1Category">
                                <div class="style_Depth1CategoryIcon"><img src="image/artist.png"
                                        class="style_Depth1CategoryIconImage"></div>
                                <div class="style_Depth1CategoryText">예술</div>
                            </div>
                            <div class="style_Depth1Category">
                                <div class="style_Depth1CategoryIcon"><img src="image/music.png"
                                        class="style_Depth1CategoryIconImage"></div>
                                <div class="style_Depth1CategoryText">음악</div>
                            </div>
                            <div class="style_Depth1Category">
                                <div class="style_Depth1CategoryIcon"><img src="image/movie.png"
                                        class="style_Depth1CategoryIconImage"></div>
                                <div class="style_Depth1CategoryText">영화 · 비디오</div>
                            </div>
                            <div class="style_Depth1Category">
                                <div class="style_Depth1CategoryIcon"><img src="image/musical.png"
                                        class="style_Depth1CategoryIconImagem"></div>
                                <div class="style_Depth1CategoryText">공연</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    $('.style_UserButtonWrapper').on("click", function () {
            if ($(".SNB_Wrapper").is(":hidden")) {
                $(".SNB_Wrapper").css("display", "flex");
                $(".style_HeaderContentLayout").attr('class', 'style_HeaderContentLayout_fXoiVM');
            }
            else if ($(".SNB_Wrapper").is(":visible")) {
                $(".SNB_Wrapper").css("display", "none");
                $(".style_HeaderContentLayout_fXoiVM").attr('class', 'style_HeaderContentLayout');
            }
        });
        
        $('.style_CategoryWrapper_ca').on("mouseenter", function (e) { 
            $(".style_CategoryWrapper_ca").attr('class', 'style_ExtendedCategorySection_KjkNT');
            $(".style_CategoryContainer")                      
            .slideDown(500);    
            
        }); 
       
        $('.style_CategoryContainer').on("mouseleave", function (e) {
            $(".style_ExtendedCategorySection_KjkNT").attr('class', 'style_CategoryWrapper_ca');
            $(".style_CategoryContainer")                      
            .slideUp(500);    
            
        });
        
        $('html').click(function(e) {
            $(".style_ExtendedCategorySection_KjkNT").attr('class', 'style_CategoryWrapper_ca');
            $(".style_CategoryContainer")                      
            .slideUp(500);
        });
});

</script>

</html>
