<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    


<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />
  <link rel="shortcut icon" href="favicon.png">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


		<!-- Bootstrap CSS -->
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
		<link href="resources/css/tiny-slider.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		<title> 소개 화면 (intro) </title>
	</head>

	<body>

		<!-- 상단 메뉴탭 -->
		<!-- Start Header/Navigation -->
		<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">
			<div class="container">
				<a class="navbar-brand" href="index.do"><img src="resources/images/로고.png" alt="logo" style="width:200px; height:100px;"></a>

				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarsFurni">
					<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
						<li class="active"><a class="nav-link" href="intro.do">우리들의 이야기(소개)</a></li>
						<li class=""><a class="nav-link" href="shop.do?goods_type=전체&goods_sort=like_count DESC">우리술 구경하기</a></li>
						<li><a class="nav-link" href="community.do">우리들의 공간</a></li>
					</ul>
					<ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
						 <li>
			         		 <c:choose>
				          		<c:when test="${empty sessionScope.member_id}"><a class="nav-link" href="loginForm.do">들어가기(로그인)</a></c:when>
				         		<c:when test="${not empty sessionScope.member_id}"><a class="nav-link" href="logOut.do">나가기(로그아웃)</a></c:when>
			          		</c:choose>
		          		</li>
						<li><a class="nav-link" href="join.do">함께하기(회원가입)</a></li>
						<li><a class="nav-link" href="cart.do"><img src="resources/images/cart24.png"></a></li>
						<li><a class="nav-link" href="myPage.do"><img src="resources/images/user24.png"></a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- End Header/Navigation -->


		<!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>酒 다</h1>
								<h3>우리들의 이야기</h3>
								<p class="mb-4"> 안녕하세요.<br/>
															전통주 프로젝트를 맡은 2조 <b>박한솔, 윤희선, 임규황, 임유빈</b>입니다.</p>
								<p><a href="shop.do" class="btn btn-secondary me-2">구경가기</a>
							</div>
						</div>
<!-- 						<div class="col-lg-7"> -->
<!-- 							<div class="hero-img-wrap"> -->
<!-- 								<img src="images/couch.png" class="img-fluid"> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

	
<!-- Start Testimonial Slider -->
		<div class="testimonial-section before-footer-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 mx-auto text-center">
						<br/><br/><h3 class="section-title"><b> 酒 다 </b></h3><br/><br/>
					</div>
				</div>
				
						<center><img alt="" src="resources/images/여유1.jpg"></center>

			</div>
		</div>
		<!-- End Testimonial Slider -->
	
	
		

		<!-- Start Why Choose Us Section -->
		<div class="why-choose-section">
			<div class="container">
				<div class="row justify-content-between align-items-center">
					<div class="col-lg-12">
						<h4 class="section-title"><br/><br/><br/><center>왜 전통주인가?</center></h4>
						<p><center>우리가 하고 싶었던 얘기를 넣어주면 될 것 같습니다. 우리가 하고 싶었던 얘기를 넣어주면 될 것 같습니다.
						우리가 하고 싶었던 얘기를 넣어주면 될 것 같습니다.우리가 하고 싶었던 얘기를 넣어주면 될 것 같습니다.우리가 하고 싶었던 얘기를 넣어주면 될 것 같습니다.
						우리가 하고 싶었던 얘기를 넣어주면 될 것 같습니다.우리가 하고 싶었던 얘기를 넣어주면 될 것 같습니다.우리가 하고 싶었던 얘기를 넣어주면 될 것 같습니다.</center></p>

					</div>


				</div>
			</div>
		</div>
		<!-- End Why Choose Us Section -->


		<!-- Start Team Section(소개) -->
		<div class="untree_co-section">
			<div class="container">

				<br/><br/><br/><hr/>
				<div class="row mb-5">
					<div class="col-lg-5 mx-auto text-center">
<!-- 						<h2 class="section-title">전통주 프로젝트 2조</h2> -->
					</div>
				</div>

				<div class="row">

					<!-- Start Column 1 -->
					<div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
						<img src="resources/images/추사1.jpg" class="img-fluid mb-5">
						<h5 class><span class=""><b>박 한 솔</b></span></h5>
            <span class="d-block position mb-4">팀원1</span>
            <p>우리 나라의 다양한 술을 소개하고, 와인같이 세계적으로 더 유명해졌으면 좋겠다라는 생각에서 이 프로젝트를 시작하게 되었습니다. 
            외국인들에게도 대한민국의 술을 떠올렸을 때 소주라는 대답이 아닌 더 다양한 답변을 듣게 하는 것이 제 목표입니다.</p>
					</div> 
					<!-- End Column 1 -->

					<!-- Start Column 2 -->
					<div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
						<img src="resources/images/추사1.jpg" class="img-fluid mb-5">
						<h5 class><span class=""><b>윤 희 선</b></span></h5>
           				<span class="d-block position mb-4">팀원2</span>
            			<p>이 프로젝트를 시작하게 된 계기에 대해서 말씀해주세요.</p>
					</div> 
					<!-- End Column 2 -->

					<!-- Start Column 3 -->
					<div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
						<img src="resources/images/추사1.jpg" class="img-fluid mb-5">
						<h5 class><span class=""><b>임 규 황</b></span></h5>
           				<span class="d-block position mb-4">팀원3</span>
            			<p>이 프로젝트를 시작하게 된 계기에 대해서 말씀해주세요.</p>
					</div> 
					<!-- End Column 3 -->

					<!-- Start Column 4 -->
					<div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
						<img src="resources/images/추사1.jpg" class="img-fluid mb-5">
						<h5 class><span class=""><b>임 유 빈</b></span></h5>
           				<span class="d-block position mb-4">팀원4</span>
            			<p>이 프로젝트를 시작하게 된 계기에 대해서 말씀해주세요.</p><br/>
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
					<div class="col-md-8" style="float: none; margin:0 auto;">
					   <h6><br/><br/>
					      <strong>(주)전통주 프로젝트</strong>
					   </h6>
					   <h7>사업자 번호 228-24-23029</h7>
					   <h7>대표이사 코스모 | 서울 금천구 가산디지털2로 101</h7>
					   <br />
					   <h7>전화 02-2025-8523 | 이메일 swkosmo@daum.net</h7>
					   <h7><br/>
					      <strong><b>고객센터</b></strong>
					   </h7>
					   <h7>강원도 춘천시 퇴계로 89</h7>
					   <h7>전화 1588-8282</h7>
					   <h7>1:1 문의 바로 가기</h7>
					</div>
				</div><br/>
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
							<p class="mb-2 text-center text-lg-start">Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a> <!-- License information: https://untree.co/license/ -->
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
