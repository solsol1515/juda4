<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!doctype html>
<html lang="ko">
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
<title>[ 상 품 등 록 ]</title>
</head>

<body>

   <!-- [시작] 상단 메뉴탭 -->
   <nav
      class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark"
      arial-label="Furni navigation bar">
      <div class="container">
         <a class="navbar-brand" href="index.do"> <img
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
               <li class="active"><a class="nav-link" href="shop.do">구경하기</a></li>
               <li><a class="nav-link" href="community.do">우리들의 공간</a></li>
            </ul>
            <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
               <li><a class="nav-link" href="login.do">들어가기(로그인)</a></li>
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

   <!-- [시작] 상단 탭 아래 -->
   <div class="hero">
      <div class="container">
         <div class="row justify-content-between">
            <div class="col-lg-5">
               <div class="intro-excerpt">
                  <h1>일단공백</h1>
               </div>
            </div>
            <div class="col-lg-7"></div>
         </div>
      </div>
   </div>
   <br />
   <br />
   <!-- [끝] 상단 탭 아래 -->

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
            <a href="goodsStock.do" class="ca">재고 관리</a>
         </p>
      </div>

   </div>
   <!-- [끝] 상품 관리 카테고리 -->


   <div class="goods-update">
      <tr>
         <div>
            <td class="product-info">
               <h5>[ 상품 사진 등록 ]</h5> <img src="resources/images/메들리아카시아1.jpg"
               alt="Image" class="img-fluid" style="width: 400px; height: 400px;" />
               <br /> <input type="file" name='file' maxlength="60" size="40">
            </td>
         </div>

         <div>
            <td class="product-info">
               <h5>[ 상품 상세 사진 등록 ]</h5> <img src="resources/images/메들리아카시아1.jpg"
               alt="Image" class="img-fluid" style="width: 400px; height: 400px;" />
               <br /> <input type="file" name='file' maxlength="60" size="40">
            </td>
         </div>



         <td>
            <div
               class="input-group mb-3 d-flex align-items-center quantity-container"
               style="max-width: 800px;">

               <div class="">
                  <ul class="updateMenu">
                     <li>제품명&emsp;&emsp;<input type="text" size="40"
                        class="updm_"></li>
                     <br />
                     <li>가격&emsp;&emsp;&emsp;<input type="text" size="40"
                        class="updm_"></li>
                     <br />
                     <li>제품설명&emsp;<input type="text" class="updm"></li>
                     <br />
                     <li>원산지&emsp;&emsp;<input type="text" size="40"
                        class="updm_"></li>
                     <br />
                     <li>도수&emsp;&emsp;&emsp;<input type="text" size="40"
                        class="updm_"></li>
                  </ul>
               </div>
            </div>
         </td>


      </tr>
   </div>
   <br />
   <br />
   <!-- ***************************************************************** -->
   <div class="goods-update2">
      <tr>
         <!--  상품 등록하기 -->
         <td>
            <div
               class="option mb-3 d-flex align-items-center quantity-container">
               <button type="button" class="goodsBtn">상 품 등 록 하 기</button>
            </div>
         </td>

      </tr>
   </div>


</body>
</html>