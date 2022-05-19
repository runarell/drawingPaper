
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link type="text/css" rel="stylesheet" href="../../assets/css/default.css" />
    <link type="text/css" rel="stylesheet" href="../../assets/css/project/projectList.css" />
</head>

<body>
    <div class="wrap">
        <header id="header"></header>

        <main>
            <section>
                <div class="selectCell">
                    <div class="quickFilger">
                        <div>
                            <div class="filterBtn">달성률<span></span></div>
                            <div class="fliterList left">
                                <div>전체보기</div>
                                <div>75%이하</div>
                                <div>75%~100%</div>
                                <div>100%이상</div>
                            </div>
                        </div>
                        <div class="filter">
                            <div class="filterBtn" id="boxBtn2">최신순<span></span></div>
                            <div class="fliterList right">
                                <div>인기순</div>
                                <div>최신순</div>
                                <div>최다 후원순</div>
                                <div>최다 금액순</div>
                                <div>마감 임박순</div>
                            </div>
                        </div>
                    </div>


                    <div class="totalProject">
                        <span class="ft_Color2">526</span>개의 프로젝트가 있습니다.
                    </div>
                </div>
                <!-- 이미지 리스트 -->
                <div class="itmeList">
                    <figure>
                        <div class="itmeCell">
                            <div class="imgCell">
                                <a href="">
                                    <img src="../../images/project/bg/indi01.webp" alt="">
                                </a>
                                <a class="heartcon on">
                                    <!-- <img class="icon" src="/assets/image/icon/icons-heart-white.png" alt=""> -->
                                </a>
                            </div>
                            <div class="textBox">
                                <a href="">홈,리빙 | 트로스트</a>
                                <a href="">실컷 울고 난 뒤 느끼는 후련함의 향 - 감정 부스팅 오일</a>
                                <a href="">비와 슬픔, 봄과 사랑은 같은 향일까? 내 감정을 만나는 100% 천연 오일 드롭퍼</a>
                            </div>
                            <div class="dadaBox">
                                <div class="data1">
                                    <span>45%</span>
                                    <span>2,288,000원</span>
                                </div>
                                <div class="data2">
                                    <span>13일 남음</span>
                                </div>
                            </div>
                            <div class="bar"><div style="width:45%"></div></div>
                        </div>
                    </figure>                    
                  </div>

            </section>
        </main>

        <footer id="footer"></footer>

    </div>

    <script type="text/javascript" src="../../assets/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="../../assets/js/default.js"></script>    
    <script type="text/javascript" src="../../assets/js/project/projects.js"></script>
</body>

</html>