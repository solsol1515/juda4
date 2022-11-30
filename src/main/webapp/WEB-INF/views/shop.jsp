<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<!doctype html>
<html>
<head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <meta name="author" content="Untree.co">
 <link rel="shortcut icon" href="favicon.png">

 <meta name="description" content="" />
 <meta name="keywords" content="bootstrap, bootstrap4" />

	<!-- Bootstrap CSS -->
	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
	<link href="resources/css/tiny-slider.css" rel="stylesheet">
	<link href="resources/css/style.css" rel="stylesheet">
	<title>구경하기</title>
</head>

<body style="background: #f2efea;">

	<!-- Start Header/Navigation -->
	<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">
		<div class="container">
			<a class="navbar-brand" href="index.do"><img src="resources/images/로고.png" alt="logo" style="width:200px; height:100px;"></a>

			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsFurni">
				<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
					<li class="nav-item "><a class="nav-link" href="intro.do">우리들의 이야기(소개)</a></li>
					<li class="active"><a class="nav-link" href="shop.do?goods_type=전체&goods_sort=like_count DESC">우리술 구경하기</a></li>
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
					</div>
				</div>
			</div>
		</div>
	<!-- End Hero Section -->
	
	
	<!-- 주종 nav바 -->
	<div class="goods_type-section my-5">
		<div class="container">
			<ul class="nav justify-content-center" style="background: #f2efea;">
				<li class="nav-item">
					<a class="nav-link active" name="all" href="#">전체</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" name="hard_liquor" href="#">증류주</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" name="makgoli" href="#">탁주</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" name="fruit_liquor" href="#">과실주</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" name="cheongju" href="#">청주</a>
				</li>
			</ul>
		</div>
	</div>
	
	
	<!-- 순서 정렬 -->
	<div class="goods_sort-section">
		<div class="container">
			<ul class="nav">
				<li class="nav-item">
					<a class="nav-link active" name="like_count DESC" href="#">인기순</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" name="price" href="#">낮은 가격순</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" name="price DESC" href="#">높은 가격순</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" name="goods_id DESC" href="#">최신순</a>
				</li>
			</ul>
		</div>
	</div>
	
	
	<!-- 상품 목록 시작 -->
	<div class="goods-section my-3">
   		<div class="container">

     		<div class="row">
			
			<c:if test="${goodsList!=null}">
				<c:forEach items="${goodsList}" var="vo">
				
					<div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
						<div class="product-item">
							<a href="sangse.do?goods_id=${vo.goods_id}" class="product-img">
		
								<div class="label new top-right first">
									<div class='content' >New</div>
								</div>
								<div class="label sale top-right second">
									<div class='content'>Sale</div>
								</div>
		
								<img src="resources/images/${vo.img_file}" alt="Image" class="img-fluid">
							</a><br/><br/>
							<h5 class="title"><a href="#">${vo.goods_name}</a></h5>
							<div class="price"><span>${vo.price}원</span></div>
							<div class="wishlist/cart">
								<a href=""><img src="resources/images/like.png" style="width:20px; height:20px;"></a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href=""><img src="resources/images/cart.png" style="width:20px; height:20px;"></a>
							</div>
						</div>
					</div>
					
				</c:forEach>
			</c:if>

           
           
			<div class="row mt-5 pb-5">
				<div class="col-lg-12">
					<ul class="pagination justify-content-center">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</div>
			</div>
           
		</div>
   </div> 
   <!-- 상품 목록 끝 -->


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
	<!-- js -->
	<script src="resources/js/bootstrap.bundle.min.js"></script>
	<script src="resources/js/tiny-slider.js"></script>
	<script src="resources/js/custom.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script src="resources/js/shop.js"></script>
	
</body>

</html>
