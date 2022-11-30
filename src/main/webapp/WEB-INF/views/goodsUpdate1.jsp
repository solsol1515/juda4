<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="favicon.png">
<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<!-- Bootstrap CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
<link href="resources/css/tiny-slider.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/admin.css" rel="stylesheet">
<title>[ 상 품 수 정 1(리스트) ]</title>
</head>

<body>

	<!-- [시작] 상단 메뉴탭 -->
	<nav
		class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark"
		arial-label="Furni navigation bar">
		<div class="container">
			<a class="navbar-brand" href="index.html"> <img
				src="resources/images/로고.png" alt="logo"></a>

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
					<li class=""><a class="nav-link" href="shop.do">우리술 구경하기</a></li>
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
					<li><a class="nav-link" href="cart.do"><img
							src="resources/images/cart24.png"></a></li>
					<li><a class="nav-link" href="myPage.do"><img
							src="resources/images/user24.png"></a></li>
				</ul>
			</div>
		</div>

	</nav>
	<br/>
	<br/>
	<!-- [끝] 상단 메뉴탭 -->

	

	<!-- 관리자 모드 제목 -->
	<div class="adminmode">
		<h3>관리자 모드</h3>
	</div>

	 <!-- [시작] 상품 관리 카테고리 -->
   <div class="category">

      <div class="category_gs">
         <p>
            <a href="goodsRegistration.do" class="ca">상품 등록</a>
         <p>
      </div>

      <div class="category_gs">
         <p>
            <a href="goodsUpdate1.do" class="ca">상품 수정</a>
         <p>
      </div>
      
      <div class="category_gs">
         <p>
            <a href="selectStock.do" class="ca">재고 관리</a>
         </p>
      </div>

   </div>
   <!-- [끝] 상품 관리 카테고리 -->


	<div class="goods-update">
		<tr>
			<td class="product-info"><img src="resources/images/${img_file}"
				alt="Image" class="img-fluid" style="width: 130px; height: 130px;"/>
			</td>
			<td>
				<div
					class="input-group mb-3 d-flex align-items-center quantity-container"
					style="max-width: 100px;">

					<div class="">
						<p>제품명 ${goods_name}</p>
						<p>가격 ${price}원</p>
						<p>설명 ${description}</p>
					</div>

				</div>
				
<!-- 				<div -->
<!-- 					class="input-group mb-3 d-flex align-items-center quantity-container" -->
<!-- 					style="max-width: 350px;"> -->

<!-- 					<div class=""> -->
<%-- 						<p>${goods_name}</p> --%>
<%-- 						<p>${price}원</p> --%>
<%-- 						<p>${description}</p> --%>
<!-- 					</div> -->

<!-- 				</div> -->
				
				
				
			</td>
			<!--   수정 버튼-->
			<td>
				<div
					class="option mb-3 d-flex align-items-center quantity-container">
					<button class="btn btn-outline-black" type="button" id="ch_option" onclick="location.href='goodsUpdate2.do' ">수정</button>
				</div>
			</td>
		</tr>
	</div>










</body>
</html>