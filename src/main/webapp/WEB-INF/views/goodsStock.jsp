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
<title>[ 재 고 관 리 ]</title>
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

	<!-- 저장 버튼 -->
	<div class="save">
<!-- 		<input type="button" class="save_btn" value="저 장"> -->
		<button class="save_btn" onclick="save_btn()">저장</button>
		<script>
						function save_btn() {
							alert("저장되었습니다.");
							$('').submit();
						}
					</script>
	</div>
	<br />

	<!-- 테이블 시작 -->
	<form action="selectStock" method="get">
	<div>
		<table class="stock">
			<tr>
				<th scope="row">재고기록번호</th>
				<th scope="row">상품번호</th>
				<th scope="row">출고예정</th>
				<th scope="row">입고예정</th>
				<th scope="row">실입고</th>
				<th scope="row">실출고</th>
			</tr>

			<tr>
				
			</tr>

<c:forEach items="${stockList}" var="vo">
			<tr>
				<td><input type="text" class="stock_" value="${vo.stock_id}" readonly></td>
				<td><input type="text" class="stock_" value="${vo.goods_id}" readonly></td>
				<td><input type="text" class="stock_" value="${vo.expected_release}"></td>
				<td><input type="text" class="stock_" value="${vo.expected_stock}"></td>
				<td><input type="text" class="stock_" value="${vo.actual_release}"></td>
				<td><input type="text" class="stock_" value="${vo.actual_stock}"></td>
			</tr>
</c:forEach>
		
		</table>
	</div>
	</form>
	<!-- 테이블 끝 -->





</body>
</html>