<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!doctype html>
<html lang="en">
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
<link href="resources/css/admin.css" rel="stylesheet">
      <title>[ 상 품 관 리 ] </title>
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
					<li class=""><a class="nav-link" href="shop.do">구경하기</a></li>
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


      

      <!-- [시작] 관리자 메인페이지 -->
      <div class="why-choose-section">
         <div class="container">
            
            <!-- 상품 등록 -->
            <div class="row my-5">
               <div class="col-6 col-md-6 col-lg-3 mb-4">
                  <div class="feature">
                     <div class="icon">
                        <a href="goodsRegistration.do"><img src="resources/images/goodsMngm1.png" alt="Image" class="imf-fluid"></a>
                     </div><br/>
                     <h5>상품 등록</h5>
                  </div>
               </div>

				<!-- 상품 수정 -->
               <div class="col-6 col-md-6 col-lg-3 mb-4">
                  <div class="feature">
                     <div class="icon">
                        <a href="goodsUpdate1.do"><img src="resources/images/goodsMngm2.png" alt="Image" class="imf-fluid"></a>
                     </div><br/>
                     <h5>상품 수정</h5>
                  </div>
               </div>

				<!-- 재고 관리 -->
               <div class="col-6 col-md-6 col-lg-3 mb-4">
                  <div class="feature">
                     <div class="icon">
                        <a href="selectStock.do"><img src="resources/images/goodsMngm3.png" alt="Image" class="imf-fluid"></a>
                     </div><br/>
                     <h5>재고 관리</h5>
                  </div>
               </div>

		
            </div>
         </div>
      </div>
      <!-- [끝] 관리자 메인페이지 -->

    

      
   </body>

</html>