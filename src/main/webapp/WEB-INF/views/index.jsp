<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="">
<link rel="shortcut icon" href="favicon.png">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<!-- Bootstrap CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
<link href="resources/css/tiny-slider.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<title>[홈 페 이 지] 메인</title>
</head>

<body>

	<!-- [시작] 상단 메뉴탭 -->
	<nav
		class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark"
		arial-label="Furni navigation bar">
		<div class="container">
			<a class="navbar-brand" href="index.do"> <img
				src="resources/images/로고.png" alt="logo">
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarsFurni"
				aria-controls="navbarsFurni" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsFurni">
				<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
					<li class="nav-item "><a class="nav-link" href="intro.do">우리들의
							이야기(소개)</a></li>
					<li class=""><a class="nav-link"
						href="shop.do?goods_type=전체&goods_sort=like_count DESC">우리술
							구경하기</a></li>
					<li><a class="nav-link" href="community.do">우리들의 공간</a></li>
				</ul>
				<ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
					<li><c:choose>
							<c:when test="${empty sessionScope.member_id}">
								<a class="nav-link" href="loginForm.do">들어가기(로그인)</a>
							</c:when>
							<c:when test="${not empty sessionScope.member_id}">
								<a class="nav-link" href="logOut.do">나가기(로그아웃)</a>
							</c:when>
						</c:choose></li>
					<li><a class="nav-link" href="join.do">함께하기(회원가입)</a></li>
					<li><a class="nav-link" href="cart.do"><img
							src="resources/images/cart24.png"></a></li>
					<li><a class="nav-link" href="myPage.do"><img
							src="resources/images/user24.png"></a></li>
				</ul>
			</div>
		</div>

	</nav>
	<!-- [끝] 상단 메뉴탭 -->


	<div class="testimonial-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 mx-auto text-center"></div>
			</div>

			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="testimonial-slider-wrap text-center">

						<div id="testimonial-nav">
							<span class="prevbtn" data-controls="prev"><span
								class="fa fa-chevron-left"></span></span> <span class="nextbtn"
								data-controls="next"><span class="fa fa-chevron-right"></span></span>
						</div>

						<div class="testimonial-slider">

							<!-- [시작] 1 슬라이더  -->
							<div class="col-12 col-md-4 col-lg-3 mb-5 mb-md-0">
								<a class="product-item" href="cart.html"> <img
									src="resources/images/bx1.png" width=2000 height=900
									class="img-fluid product-thumbnail"> </span>
								</a>
							</div>
							<!-- [끝] 1 슬라이더  -->

							<!-- [시작] 2 슬라이더  -->
							<div class="col-12 col-xs-4 col-xs-3 mb-5 mb-xs-0">
								<a class="product-item" href="cart.html"> <img
									src="resources/images/bx2.png" width=2000 height=900
									class="img-fluid product-thumbnail"> </span>
								</a>
							</div>
							<!-- [끝] 2 슬라이더  -->

							<!-- [시작] 3 슬라이더  -->
							<div class="col-12 col-md-4 col-lg-3 mb-5 mb-md-0">
								<a class="product-item" href="cart.html"> <img
									src="resources/images/bx3.png" width=2000 height=900
									class="img-fluid product-thumbnail"> </span>
								</a>
							</div>
							<!-- [끝] 3 슬라이더  -->

							<!--[시작] 4 슬라이더  -->
							<div class="col-12 col-xs-4 col-xs-3 mb-5 mb-xs-0">
								<a class="product-item" href="cart.html"> <img
									src="resources/images/bx4.png" width=2000 height=900
									class="img-fluid product-thumbnail"> </span>
								</a>
							</div>
							<!-- [끝] 4 슬라이더  -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  [끝] bx Slider -->



	<!-- [시작] 주간 순위  -->
	<div class="product-section">
		<div class="container">
			<div class="row" style="text-align: center;">

				<!-- [시작] 주간순위 제목  -->
				<body style="text-align: center;">
					<h2 class="mb-4 section-title">주간 순위</h2>
				</body>
				<!-- [끝] 주간순위 제목  -->

				<c:forEach items="${rankList}" var="vo" varStatus="status">
					<!-- [시작] 주간순위 1위  -->
					<div class="col-12 col-md-4 col-lg-4 mb-5 mb-md-0">
						<a class="product-item" href="cart.html"><img
							src="resources/images/${vo.img_file}"
							class="img-fluid product-thumbnail">
							<div class="rank_text">${status.count}</div>
							<h3 class="product-title" value="${vo.goods_name}">${vo.goods_name}</h3>
							<strong class="product-price" value="${vo.price}">${vo.price}</strong>
						</a>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
	<!-- [끝] 주간 순위  -->

	<!-- Start Footer Section -->
	<footer class="footer-section">
		<div class="container relative">

			<!-- footer 정보 시작-->
			<div class="row footer-content" align="center">
				<div class="col-md-8" style="float: none; margin: 0 auto;">
					<h6>
						<br />
						<br /> <strong>(주)전통주 프로젝트</strong>
					</h6>
					<h7>사업자 번호 228-24-23029</h7>
					<h7>대표이사 코스모 | 서울 금천구 가산디지털2로 101</h7>
					<br />
					<h7>전화 02-2025-8523 | 이메일 swkosmo@daum.net</h7>
					<h7>
					<br />
					<strong><b>고객센터</b></strong> </h7>
					<h7>강원도 춘천시 퇴계로 89</h7>
					<h7>전화 1588-8282</h7>
					<h7>1:1 문의 바로 가기</h7>
				</div>
			</div>
			<br />
			<!-- footer 정보 끝 -->

		</div>
	</footer>
	<!-- End Footer Section -->

	<!-- Start Footer Section -->
	<footer class="footer-section">
		<div class="container relative">

			<div class="sofa-img">
				<!-- <img src="images/sofa.png" alt="Image" class="img-fluid"> -->
			</div>

			<div class="border-top copyright">
				<div class="row pt-3">
					<div class="col-lg-6">
						<p class="mb-2 text-center text-lg-start">
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script>
							. All Rights Reserved. &mdash; Designed with love by <a
								href="https://untree.co">Untree.co</a>
							<!-- License information: https://untree.co/license/ -->
						</p>
					</div>

					<div class="col-lg-6 text-center text-lg-end">
						<ul class="list-unstyled d-inline-flex ms-auto">
							<li class="me-4"><a href="#">Terms &amp; Conditions</a></li>
							<li><a href="#">Privacy Policy</a></li>
						</ul>
					</div>

				</div>
			</div>

		</div>
	</footer>
	<!-- End Footer Section -->



	<script src="resources/js/bootstrap.bundle.min.js"></script>
	<script src="resources/js/tiny-slider.js"></script>
	<script src="resources/js/custom.js"></script>
</body>
</html>