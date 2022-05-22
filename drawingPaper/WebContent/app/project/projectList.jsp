
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link type="text/css" rel="stylesheet"
	href="../assets/css/default.css" />
<link type="text/css" rel="stylesheet"
	href="../assets/css/project/projectList.css" />
</head>

<body>
	<div class="wrap">
		<header id="header"></header>

	<c:set var="totalCount" value="${totalCount}" />
	<c:set var="projectList" value="${projectList}" />
	<c:set var="uname" value="${uname}" />

		<main>
		<section>
			<div class="selectCell">
				<div class="quickFilger">
					<div>
						<div class="filterBtn">
							달성률<span></span>
						</div>
						<div class="fliterList left">
							<div>전체보기</div>
							<div>75%이하</div>
							<div>75%~100%</div>
							<div>100%이상</div>
						</div>
					</div>
					<div class="filter">
						<div class="filterBtn" id="boxBtn2">
							최신순<span></span>
						</div>
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
					<span class="ft_Color2">${totalCount}</span>개의 프로젝트가 있습니다.
				</div>
			</div>
			<!-- 이미지 리스트 -->
			<div class="itmeList">
				<c:choose>
					<c:when test="${projectList != null and fn:length(projectList) > 0}">
						<c:forEach var="project" items="${projectList}">
							<figure>
								<div class="itmeCell">
									<div class="imgCell">
										<a href="${pageContext.request.contextPath}/project/ProjectViewOk.pj?proNum=${project.getPro_no()}&diffDay=${project.getDiffDay()}&userNum=${project.getUser_no()}&percent=${project.getPercent()}"><img src="${pageContext.request.contextPath}${project.getPro_images()}" alt=""></a> 
											<a class="heartcon on"> <!-- <img class="icon" src="/assets/image/icon/icons-heart-white.png" alt=""> -->
										</a>
									</div>
									<div class="textBox">
										<a href="">${project.getPro_category()} | ${project.getUserName()}</a>
										<a href="">${project.getPro_title()}</a>
									</div>
									<div class="dadaBox">
										<div class="data1">
											<span>${project.getPercent()}%</span> <span>${project.getPro_goalprice()}원</span>
										</div>
										<div class="data2">
											<span>${project.getDiffDay()}</span>
										</div>
									</div>
									<div class="bar">
										<div style="width: ${project.getPercent()}%"></div>
									</div>
								</div>
							</figure>
						</c:forEach>
					</c:when>
				</c:choose>

			</div>
		</section>
		</main>

		<footer id="footer"></footer>

	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/default.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/project/projects.js"></script>
</body>

</html>