<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />
<link rel="shortcut icon" href="favicon.png">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- Bootstrap CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
<link href="resources/css/tiny-slider.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<title>소개 화면 (intro)</title>
</head>

<body>

	<!-- 상단 메뉴탭 -->
	<!-- Start Header/Navigation -->
	<nav
		class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark"
		arial-label="Furni navigation bar">
		<div class="container">
			<a class="navbar-brand" href="index.do"><img
				src="resources/images/로고.png" alt="logo"
				style="width: 200px; height: 100px;"></a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarsFurni"
				aria-controls="navbarsFurni" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsFurni">
				<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
					<li class="active"><a class="nav-link" href="intro.do">우리들의 이야기(소개)</a></li>
					<li class=""><a class="nav-link" href="shop.do?goods_type=전체&goods_sort=like_count DESC">우리술 구경하기</a></li>
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
	<!-- End Header/Navigation -->


	<!-- Start Testimonial Slider -->
	<div class="testimonial-section before-footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 mx-auto text-center">
					<br /> <br />
					<h3 class="section-title">
						<b></b>
					</h3>
					<br /> <br />
				</div>
			</div>
			<img alt="" src="resources/images/홍삼명주4.png">


		</div>
	</div>
	<!-- End Testimonial Slider -->


	<!-- Start Why Choose Us Section -->
	<div class="why-choose-section">
		<div class="container">
			<div class="row justify-content-between align-items-center">
			</div>
		</div>
	</div>
	<!-- End Why Choose Us Section -->


	<!-- Start Team Section(소개) -->
	<div class="untree_co-section">
		<div class="container">

			<hr />
			<div class="row mb-5">
				<div class="col-lg-5 mx-auto text-center"></div>
			</div>

			<div class="row">

				<!-- Start Column 1 -->
				<div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
					<img src="resources/images/신애유자1.jpg" class="img-fluid mb-5">
					<h5 class>
						<span class=""><b>박 한 솔</b></span>
					</h5>
					<span class="d-block position mb-4">팀원1</span>
					<p>우리 나라의 다양한 술을 소개하고, 와인같이 세계적으로 더 유명해졌으면 좋겠다라는 생각에서 "전통주"를
						주제로 한 프로젝트를 시작하게 되었습니다. 한국인뿐만아니라 외국인들에게도 대한민국의 술을 물었을 때 소주라는 대답이
						아닌 더 다양한 답변을 들을 수 있었으면 합니다.</p>
				</div>
				<!-- End Column 1 -->

				<!-- Start Column 2 -->
				<div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
					<img src="resources/images/치키피치1.jpg" class="img-fluid mb-5"
						style="width: 350px; height: 440px;">
					<h5 class>
						<span class=""><b>윤 희 선</b></span>
					</h5>
					<span class="d-block position mb-4">팀원2</span>
					<p>한국 문화에 대한 관심이 증가하면서 외국인에게 새로운 K문화를 소개하고자 했으며 통상적으로 한국을 대표하는
						술은 소주라고 알려져 있는데 이 틀을 깨고 지역별 특산물을 활용한 다양하고 새로운 전통술을 소개하고자 프로젝트 주제를
						전통술로 정하였습니다.</p>
				</div>
				<!-- End Column 2 -->

				<!-- Start Column 3 -->
				<div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
					<img src="resources/images/댄싱파파1.jpg" class="img-fluid mb-5">
					<h5 class>
						<span class=""><b>임 규 황</b></span>
					</h5>
					<span class="d-block position mb-4">팀원3</span>
					<p>조별로 토의를 하던 중에 전통주를 관련해 좋은 내용이 있어서 참여하게 되었습니다. 다른 조원분들 의견 중 전통주에 대한
					프로젝트에 참여할 수 있어서 좋았습니다. 그중에서 외국인들에게 전통주를 소개할 수 있다는 취지가 좋았습니다. 외국인들 중
					막걸리는 비교적 잘 알려져 있다고 생각합니다. 그러나 지역적으로 외국인뿐만 아니라 우리 한국인들도 잘 모르는 토종 술독
					많습니다. 외국 가까운 이웃나라인 일본에서조차 장인 정신이란 게 점점 사라지고 있고, 통계적으로는 특히 젊은 층들이 그러한
					가업을 이으려는 사회적 기조가 줄어들고 있다고 들었습니다. 그런 와중에 우리나라에서도 전통을 지키려는 사람들이 많지만,
					그것보다 더 중요한 것은 시대에 맞게 그러한 것들의 변형 혹은 혁신이나 다양한 사람들, 또 다변화를 통한 많은 시도를
					해야 된다는 것입니다. 더 이상 전통에 대한 고집은 21세기에 맞춰서 진보할 수 없다고 생각합니다. 또한 그러한 외국인들의</p>
				</div>
				<!-- End Column 3 -->

				<!-- Start Column 4 -->
				<div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
					<img src="resources/images/스윗마마1_1.jpg" class="img-fluid mb-5"
						style="width: 350px; height: 440px;">
					<h5 class>
						<span class=""><b>임 유 빈</b></span>
					</h5>
					<span class="d-block position mb-4">팀원4</span>
					<p>전통주는 옛날에나 마시던 술이라는 인식에서 벗어나는 추세입니다. 요즘에는 나이, 남녀 구분없이 전통주를
						즐기죠. 그런 기조에 부응해 누구나 전통주를 검색하고 구매할 수 있는 판매 사이트를 만들고자 했습니다. 누구나 쉽게
						접할 수 있는, 접근성이 높은 사이트를 구현하려고 노력했습니다.</p>
					<br />
				</div>
				<!-- End Column 4 -->

			</div>
		</div>
	</div>
	<!-- End Team Section(소개) -->



	<!-- Start Footer Section -->
	<footer class="footer-section">
		<div class="container relative">

			<!-- footer 정보 시작-->
			<div class="row footer-content" align="center">
				<div class="col-md-8" style="float: none; margin: 0 auto;">
					<h6>
						<br /> <br /> <strong>(주)전통주 프로젝트</strong>
					</h6>
					<h7>사업자 번호 228-24-23029</h7>
					<h7>대표이사 코스모 | 서울 금천구 가산디지털2로 101</h7>
					<br />
					<h7>전화 02-2025-8523 | 이메일 swkosmo@daum.net</h7>
					<h7> <br />
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


			<div class="border-top copyright">
				<div class="row pt-3">
					<div class="col-lg-6">
						<p class="mb-2 text-center text-lg-start">
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
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
