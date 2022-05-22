<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/default.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/project/projectInfo.css" />
    <style>

    </style>
</head>

<body>

	<c:set var="projcet" value="${project}" />
	<c:set var="percent" value="${percent}" />
	<c:set var="diffDay" value="${diffDay}" />
	<c:set var="userName" value="${userName}" />
	<c:set var="userCon" value="${userCon}" />
	
    <div class="wrap">
        <header id="header"></header>

        <main>
            <section>
                <div class="top_info">

                    <div>
                        <div class="info_titel">
                            <div><span>${project.getPro_category()}</span></div>
                            <div>
                                <h1>
                                   	 ${project.getPro_title()}
                                </h1>
                            </div>
                            <div><span>${userName}</span></div>
                        </div>
                    </div>
                    <div class="top_img">
                        <div class="imgList">
                            <div class="imgListWrap">
                                <figure>
                                    <img src="${pageContext.request.contextPath}${project.getPro_images()}" alt="">
                                </figure>
                            </div>
                        </div>
                        <button class="leftBtn slidBtn"><span></span></button>
                        <button class="rightBtn slidBtn"><span></span></button>
                    </div>
                    <aside class="info_data">
                        <div class="dataCell1">
                            <div>
                                <div class="title1">모인금액</div>
                                <div>
                                    <span class="font_1">${project.getPro_achieveprice()}</span>원
                                    <span class="font_2">${percent}%</span>
                                </div>
                            </div>
                            <div>
                                <div class="title1">남은시간</div>
                                <div>
                                    <span class="font_1">${diffDay}</span>
                                </div>
                            </div>
                            <div class="title1">후원자</div>
                            <div>
                                <span class="font_1">48,618</span>명
                            </div>
                        </div>

                        <div class="bar"></div>
                        <div class="dataCell2">
                            <dl>
                                <dt>목표금액</dt>
                                <dd>${project.getPro_goalprice()}원</dd>
                            </dl>
                            <dl>
                                <dt>펀딩기간</dt>
                                <dd>
                                    ${project.getPro_start()}~${project.getPro_end()}
                                    <span>${diffDay}일남음</span>
                                </dd>
                            </dl>
                            <dl>
                                <dt>결제</dt>
                                <dd>목표금액 달성시 ${project.getPro_end()}에 결제 진행</dd>
                            </dl>
                        </div>

                        <style>

                        </style>

                        <div class="dataCell3">
                            <div>
                                <button>
                                    <div class="heartcon on">
                                    </div>
                                    <div class="btnLabl">하트</div>
                                </button>
                            </div>
                            <div><button class="linkBtn">이 프로젝트 후원하기</button></div>
                        </div>
                    </aside>
                </div>
            </section>
            <div class="bar"></div>
            <section>
                <div class="tapManu">
                    <div class="on">
                        <label for="tapBtn1">프로젝트 계획</label>
                        <input type="radio" id="tapBtn1" name="tapBtn" checked>
                    </div>
                    <!-- <div>
                        <label for="tapBtn2">커뮤니티</label>
                        <input type="radio" id="tapBtn2" name="tapBtn">
                    </div> -->
                </div>
                <!-- <div class="tap1"></div>
                    <div class="tap2"></div>
                <!-- =========================================== -->
                <div class="tapSection">
                    <div class="tap1" style="display: ;none">
                        <div>
                            <div class="scrollBtnlist">

                                <div>
                                    <a class="on" href="">소개</a>
                                </div>
                                <!-- <div>
                                    <a href="">예산</a>
                                </div>
                                <div>
                                    <a href="">일정</a>
                                </div>
                                <div>
                                    <a href="">팀 소개</a>
                                </div>
                                <div>
                                    <a href="">선물 설명</a>
                                </div>
                                <div>
                                    <a href="">신뢰와 안전</a>
                                </div> -->
                            </div>
                            <div class="tapContent">
                                <!-- <div>
                                    커뮤니티 축소판
                                </div> -->
                                <!--프로젝트 설명 추가-->
                                <div class="storyContent">
                                    <h2 style="text-align: center;"><br>이번엔 &lt;WINNIE-THE-POOH&gt;입니다.</h2>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/018b6f0f-77f2-49aa-a2a1-f50eeb947b40.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=2b94363a968e4e4237f333054c811ab7"><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/6dc8de49-dcf2-4f78-9ff3-8f86afea21a6.png?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=5f495762652ecbe37338b366dd7e07fa">
                                    </p>
                                    <p>&nbsp;1926년 출간된 A.A. MILNE의 스테디셀러 <strong>&lt;WINNIE-THE-POOH&gt;</strong>를 출간
                                        당시의 판형, 편집, 디자인 그대로 복각하는 프로젝트입니다. 우리나라에서 보통 외서의 복각판이라 하면, 표지 이미지 정도를 차용하고 본문은 일반
                                        번역서 스타일로 편집해 ‘껍데기만‘ 복원하는 형식이었습니다. 저희가 이번에 준비하고 있는
                                        <strong>&lt;WINNIE-THE-POOH&gt;</strong> 복각판은 당시 모습을 그대로 재현하는 데 방점을 두고
                                        있습니다.<br>&nbsp;사실 가장 고민했던 건 재번역이었습니다. 결코 비용 문제는 아니었어요. 본문의 양이 많지 않아 번역에 드는 금액은
                                        충분히 감당할 만했고, 오히려 번역된 텍스트를 쭉 흘리는 것보다 지저분한 원서 스캔이미지를 그대로 판에 앉혀 깨끗이 보정(<span
                                            style="text-decoration: line-through;">이라 쓰고 노가다라 부른다</span>)하는 디자인 작업에 비용과
                                        시간이 추가되기 때문이었습니다. 다만<strong> </strong>'최대한 그대로 복원'을 추구하고 있는 아올 복각판만의 유니크함을 잃지
                                        않을까 걱정이 되더군요. 오랜 논의 끝에 결국 원문(영어)을 살리는 쪽으로 결정했습니다. 다시 말씀드리지만, 번역판 아닙니다. 초기 느낌을 살려
                                        옛 냄새 그대로 재현한 <u>'영문판'</u>입니다.&nbsp;<br><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/72cbbb6d-1f54-4c56-ad6a-01473fcbd671.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=a6bb09c3ea513a62362766e6c4ff20af"><br>&nbsp;이번
                                        복간 프로젝트의 핵심은 <strong>'책장에 꽂혀 있는 것만으로도 뿌듯함을 느낄 수 있을 만한 가치 더하기'</strong>입니다. 원작을
                                        최대한 훼손하지 않는 선에서, 주로 소재(종이) 및 후가공 위주로 개선점을 찾아보려 합니다.
                                    </p>
                                    <p>‘과거에 집착한다‘는 아올의 컨셉이 괜한 게 아니죠.</p>
                                    <p><strong><u>집착의 결과물을 기대하세요.</u></strong></p>
                                    <p>&nbsp;</p>
                                    <h2 style="text-align: center;"><strong>[프로젝트의 시작]</strong></h2>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/d70209a0-248c-4d01-a8fb-38ef53e02026.jpeg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=38f8c8ef3c0db3b2e3bd70a0af7eee4b"><br>&nbsp;2022년
                                        1월 1일, 곰돌이 푸(Winnie the Pooh)와 밤비(Bambi. Eine Lebensgeschichte aus dem Walde)
                                        저작권이 풀렸습니다. 둘 다 디즈니 사 캐릭터로 유명한 고전 명작들이죠. 물론 디즈니 사의 알록달록하고 귀여운 녀석들은 철통 같이 방어되고
                                        있습니다. 저희가 주목한 건 1926년에 초판 출시된 &lt;Winnie the Pooh&gt;였는데요. 사실 작년부터 이 소식을 알고
                                        있었음에도 불구하고 바로 복각에 나서지 못한 건, ‘분명 돈 많고 유명한 출판사에서 내줄 것 같다’란 막연한 생각 때문이었습니다. (나오면
                                        사려고)</p>
                                    <p>그런데 온갖 봄꽃이 피고 다 떨어지는 동안 소식이 없더군요.</p>
                                    <p>음, 그렇다면...</p>
                                    <p>이렇게 아올은 또 하나의 과거를 끄집어내 조립하기 시작합니다.</p>
                                    <p>&nbsp;</p>
                                    <h2 style="text-align: center;"><strong>[완벽한 복원을 위해]</strong></h2>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/d0cb0295-7d68-4448-b94b-75620f1de10f.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=352ab04e0eccea4bff386101078456d7">
                                    </p>
                                    <p>초판 책 본품과 커버, 그리고 저희가 복각한 책 본품과 커버입니다.</p>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/17041361-d005-4917-b7f5-2ced39f5f607.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=3b1e09d9d6f59755b9a1bf6af40f2fba">
                                    </p>
                                    <p style="text-align: center;">본문과 싸바리는 물론,</p>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/530f9ec8-5f21-4b90-8d42-e2231e6a1ae3.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=6e75e04e07fe1c2806f7a7204a913ad9">
                                    </p>
                                    <p style="text-align: center;">커버 역시 최대한 살려냅니다.</p>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/a16e3f1e-b1d1-4ff7-9b2b-b6b34c0a361b.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=8d208691c3924e3ac0e93fcd1f51d08c">
                                    </p>
                                    <p>닳고 닳은 초판 커버에서 출간 당시의 느낌을 그대로 추출하는 건 어려운 일이었습니다. 가장 어울리는 색감과 질감을 위해 최대한 많은 색
                                        배리에이션을 시도했고, 적어도 50여 개의 종이 샘플북을 찾아보았습니다. 그리고 결국 가장 '푸'와 어울리는 색과 재질을
                                        구현해냈죠.<strong><br></strong></p>
                                    <p>&nbsp;</p>
                                    <h2 style="text-align: center;"><strong>[이토록 멋진 삽화라니]</strong></h2>
                                    <p>&nbsp;알란 알렉산더 밀른 님의 멋진 스토리가 세상에 나와 숨 쉴 수 있었던 건, 어니스트 하워드 쉐퍼드 님의 삽화 덕분이라 해도 과언이
                                        아닙니다.</p>
                                    <p>여백과 펜선의 아름다운 조화는 100살짜리 캐릭터의 끈질긴 생명력을 납득시켜줍니다. 디즈니 곰돌이 푸의 그것과는 전혀 다른 감수성을 경험할 수
                                        있어요.&nbsp;<br><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/64031089-fd42-41d4-92cb-96b47cb4d40f.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=5129ce1786f50f931a55daa4365a9e8e"><br>그중에서도
                                        특히 예쁜 아이들은 엽서가 되었습니다. (아래 선물 설명에서 확인해주세요)</p>
                                    <p><u>한 가지 더!</u><br><u><strong>책을 구매하신 후원자님들은 작품 활동 또는 문구 제작 등을 포함한 모든 상업활동에 활용해도
                                                괜찮습니다.</strong> 찢어서 붙이든, 스캔을 떠서 채색을 하든 마음껏 활용해주세요. 오래된 원판의 지저분한 잡티들은 저희가
                                            최대한 보정했어요. 마음껏 써주세요.&nbsp;</u><br><br></p>
                                    <p>&nbsp;</p>
                                    <h2 style="text-align: center;"><strong>[친구들]</strong></h2>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/a092f41e-3d56-43b1-a8f1-7bac0f8b3e3d.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=ff5ae48ad9a7780c6f8ebb821fc54131">
                                    </p>
                                    <p>&nbsp;</p>
                                    <h2 style="text-align: center;"><strong>[사양]</strong></h2>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/6a905e3f-5435-443f-ac52-d16c05bba48b.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=91de8dd85258caba8e2277d957a1f149">
                                    </p>
                                    <h2 style="text-align: center;">&nbsp;</h2>
                                    <h2 style="text-align: center;"><strong>[선물]<br></strong></h2>
                                    <p><u><strong><br>1.&nbsp; 책 + 100에이커 숲 포스터 + 지관통</strong></u></p>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/dddc0bd7-9473-467d-964f-04b13f5ea350.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=08033fa941b754b2afa92cab847ec051">
                                    </p>
                                    <p>본책에 대해선 위에서 쭉 이야기했으니, 여기선 100에이커 숲 포스터를 설명할게요.</p>
                                    <p>사실 초판 삽화 중 딱 보자마자 1순위로 마음에 들었던 건<br>벌에 쫓겨 풍선에 매달린 푸(<span
                                            style="text-decoration: line-through;">2위</span>)도 아니고<br>푸와 등 대고 앉아 장화를 신고
                                        있는 로빈(<span style="text-decoration: line-through;">3위</span>)도 아닌<br>면지에 펼침으로
                                        인쇄된 100에이커 숲 일러스트였어요.<br><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/5e88e4a0-3288-4ad7-a4e0-9cab2f7ddc7c.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=da6adf1ef8b42f59ca09cb454bcb8408">
                                    </p>
                                    <p>다들 그런 경험 있지 않나요?<br>어릴 적 놀이동산 입구에 들어서는 순간, 마치 이세계에 소환된 듯 찬란한 느낌.<br>어른이 된 지금은 느끼기
                                        힘든 그 감정을, '100에이커 숲'에서 느꼈습니다.</p>
                                    <p><u>'면지에만 두기 아깝다!'</u></p>
                                    <p>그래서 만든 겁니다.&nbsp;<br><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/8e76fe2c-440a-46a2-b34d-375c7e894ff2.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=634c42286844df23ade1bdff8fe56bdd">
                                    </p>
                                    <p>A3 사이즈로 확대하고 컬러와 패브릭 질감 처리를 했어요.&nbsp;<br>접힌 자국은 용서할 수 없습니다. 지관통을 따로 구매해 포장할
				                                         거예요.<br>제작 과정에서 포장과 배송 단가가 좀 오르긴 하겠지만... 뭐 어쩌겠어요.<br>(이것 때문에 가격 올리지 않아요. 처음 설정한
				                                        그대로 갑니다.)</p>
                                    <p>&nbsp;</p>
                                    <p><u><strong>2. 삽화 콜렉션 엽서 7종</strong></u></p>
                                    <p><u><strong><img src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/973d9309-1ed3-42f2-ad9c-4556cf8ef893.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=9b2faa323a7fecc7ba8680bfdc8754f0"></strong></u>
                                    </p>
                                    <p>제 원픽 삽화는 포스터가 되었으니,<br>(지극히 개인적 기준이긴 합니다만) 2위부터 쭉 줄 세워 엽서로 만들어보았습니다.</p>
                                    <p>처음에는 얇은 붓으로 디테일하게 채색해보려 했는데, 특유의 거친 펜화 느낌이 다채로운 색감에 묻히는 것 같았어요. 오래된 흑백 사진을 컬러 복원한
                                        듯한... 뭔가 민속박물관 근현대사 전시실에나 있을 법한 어색함이랄까요. 그래서 캐릭터 일부 또는 배경을 최소한의 색으로 러프하게 채색했습니다.
                                    </p>
                                    <p>개인적으로는 마음에 드네요. 예뻐요. 예쁩니다.</p>
                                    <p>처음 계획은 5종이었어요. 만들다보니 7개의 시안이 나왔습니다. <br>2종을 버려야 하는데...<br>버릴 수가 없었어요.&nbsp;</p>
                                    <p><strong>7종 모두 제작하기로 합니다.</strong></p>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/9e910f20-4a65-4c47-9dfc-49b049af793b.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=09e5fb18c15ca45e3dcbf0ba8017caaf">
                                    </p>
                                    <p>&nbsp;</p>
                                    <p><u><strong>3. 북파우치</strong></u><span style="text-decoration: line-through;">를 가장한
                                            푸 옷</span></p>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/21ccf8df-08c5-4c17-b611-f674540fbdd0.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=c450fc08c8c0da8727dbf05c01a0edbf">
                                    </p>
                                    <p>이 선물의 의미는 단순합니다.&nbsp;<br>옷을 입힌 겁니다.<br>벌거벗은 푸를 위한 옷입니다.<br>초판의 푸는 추워요. 아래만 추운 게
                                        아니라 위까지 다 추워요.<br>누가 봐도 아는 바로 그 <u>빨간 옷</u>을 맞춰주었습니다.&nbsp;</p>
                                    <p><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/2206b44b-c675-454e-b871-70f7a5d0bb24.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=54ac88595afa23279b15186475da9de9">
                                    </p>
                                    <p>쌩지퍼가 싫어 지퍼 디테일도 신경써 보았습니다. 멋쩍은 푸...</p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp;</p>
                                    <p style="text-align: center;"><u><strong>모든 선물을 담은 전체 컷입니다. </strong></u></p>
                                    <p style="text-align: center;"><strong>(세트4번 기준 : WINNIE-THE-POOH 복각판, 100에이커 숲 채색
                                            포스터(A3),<br></strong><strong> 삽화콜렉션 7종 엽서, 푸 티셔츠 북 파우치)</strong><br><img
                                            src="https://tumblbug-psi.imgix.net/6b5b3c386e1e8ace1b1f37a341fc374facbd0c6a/e4bc92c4d6b5c3f1117f01b125803635c57dbcd8/534422e6045667af033fb853c7667296612765db/33c79bc3-b751-4f2b-8809-b5aad5094a7e.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=b9c81f5e9f293f1adf231f506b4979a6">
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- =========================================== -->

                    </div>
                    <!-- <div class="tap2"></div> -->
                    <div class="sidecontent">
                        <div class="sideBox">
                            <div>
                                <div class="sideTitel">창작자소개
                                </div>
                                <div class="contentCell">
                                    <div class="imgHeader">
                                        <a href="">
                                            <span>
                                            	<img src="${pageContext.request.contextPath}/images/project/bg/indi01.webp">
                                            </span>
                                        </a>
                                    </div>
                                    <div class="content1">
                                        <span>${userName}
                                        </span><br>
                                        <span>마지막 로그인
                                            <b>
                                                12시간 전
                                            </b>
                                        </span>
                                    </div>
                                </div>
                                <div class="content2">
                                    ${userCon}
                                </div>
                                <!-- <div class="sideBtnCell">
                                    <div>
                                        <button>
                                            +윈도우
                                        </button>
                                    </div>
                                    <div>
                                        <button>
                                            창작자에게 문의
                                        </button>
                                    </div>
                                </div> -->
                            </div>
                        </div>
                        <div class="presentCell">

                            <div>선물선택</div>
                            <div class="cashLinkBox">
                                <div class="cash">
                                    <span>1,000원 +</span>
                                </div>
                                <div class="cashNam">
                                    <li>선물 없이 후원하기
                                    </li>
                                </div>
                            </div>
                            <div class="cashLinkBox">
                                <div class="cash">
                                    <span>30,000원 +</span>
                                </div>
                                <div class="cadhContent">
                                    <span>참여자분들을 위한 특별한 시사회를 개최합니다. (지역별 일정은 추후 공개)</span>
                                </div>
                                <div class="cashNam">
                                    <li>티켓 *2</li>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </main>


        <footer id="footer"></footer>
    </div>
   
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/default.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/project/projects.js"></script>
</body>

</html>