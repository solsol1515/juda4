<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- /*
* Bootstrap 5
* Template Name: Furni
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
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
		<title>Furni Free Bootstrap 5 Template for Furniture and Interior Design Websites by Untree.co </title>
	</head>

	<body>

		<!-- Start Header/Navigation -->
		<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">
			<div class="container">
				<a class="navbar-brand" href="index.do"><img src="resources/images/로고1.png" alt="logo" style="width:100px; height:50px;"></a>

				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarsFurni">
					<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
						<li class="nav-item "><a class="nav-link" href="intro.do">우리들의 이야기(소개)</a></li>
						<li class="active"><a class="nav-link" href="shop.do">구경하기</a></li>
						<li><a class="nav-link" href="community.do">우리들의 공간</a></li>
					</ul>
					<ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
						<li><a class="nav-link" href="login.do">들어가기(로그인)</a></li>
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
								<h1>장바구니</h1>
							</div>
						</div>
						<div class="col-lg-7">
							
						</div>
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

		
		<!-- 장바구니 -->
		<div class="untree_co-section before-footer-section">
            <div class="container">
              <div class="row mb-5">
                <form class="col-md-12" method="post">
                  <div class="site-blocks-table">
                    <table id="cart-table" class="table">
                      <thead>
                        <tr>
                          <th class="goods-info">상품 정보</th>
                          <th class="goods-quantity">수량</th>
                          <th class="goods-price">가격</th>
                          <th class="goods-delivery-info">배송 정보</th>
                          <th class="goods-remove">삭제</th>
                        </tr>
                      </thead>
                      <tbody>
                      
                        <tr>
                          <td class="product-info">
                          	<input type="checkbox" class="goods-select" />
                            <img src="resources/images/dangamMyoungjak.jpg" alt="Image" class="img-fluid" style="width:200px; height:200px;" />
                            <span class="h5 text-black">Product 1</span>
                          </td>
                          <td>
                            <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px;">
                              <div class="input-group-prepend">
                                <button class="btn btn-outline-black decrease" type="button">&minus;</button>
                              </div>
                              <input type="text" class="form-control text-center quantity-amount" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                              <div class="input-group-append">
                                <button class="btn btn-outline-black increase" type="button">&plus;</button>
                              </div>
                            </div>
                            <div class="option mb-3 d-flex align-items-center quantity-container">
                            	<button class="btn btn-outline-black" type="button">옵션 변경</button>
                            </div>
                          </td>
                          <td>20,000원</td>
                          <td>3,000원 <img src="resources/images/q-mark.png" class="img-fluid" style="width:15px; height:15px;"> <br/> 택배</td>
                          <td><a href="#" class="btn btn-black btn-sm">X</a></td>
                        </tr>
        
                      </tbody>
                    </table>
                  </div>
                </form>
              </div>
              
              <div style="text-align:center">
              	<button class="btn btn-outline-black btn-sm btn-block">계속 쇼핑하기</button>
              </div>
              
              <div class="row">
              	<div class="under-cart-table">
              		<table id="calculate-total-table" class="table">
              			<tr>
              				<td>선택 상품 금액</td>
              				<td rowspan="2">&plus;</td>
              				<td>배송비</td>
              				<td rowspan="2">&minus;</td>
              				<td>할인 금액</td>
              				<td rowspan="2" style="border-right:1px solid black;"></td>
              				<td rowspan="2"></td>
              				<td rowspan="2">총 주문 금액</td>
              				<td rowspan="2">0원</td>
              				<td rowspan="2"><button class="btn btn-black">주문하기</button></td>
              			</tr>
              			<tr>
              				<td>20,000원</td>
              				<td>3,000원</td>
              				<td>0원</td>
              		</table>
              	</div>
              </div>
        
            </div>
          </div>
		

		<!-- Start Footer Section -->
		<footer class="footer-section">
			<div class="container relative">
	
				<!-- footer 정보 시작-->
				<div class="row footer-content">
					<div class="col-md-3" style="float: none; margin:0 auto;">
					   <h5>
					      <strong>(주)전통주 프로젝트</strong>
					   </h5>
					   <h6>사업자 번호 228-24-23029</h6>
					   <h7>대표이사 코스모 | 서울 금천구 가산디지털2로 101</h7>
					   <br />
					   <h7>전화 02-2025-8523 | 이메일 swkosmo@daum.net</h7>
					   <h5>
					      <strong>고객센터</strong>
					   </h5>
					   <h6>강원도 춘천시 퇴계로 89</h6>
					   <h6>전화 1588-8282</h6>
					   <h6>1:1 문의 바로 가기</h6>
					</div>
				</div>
				<!-- footer 정보 끝 -->
	
			</div>
		</footer>
		<!-- End Footer Section -->


		<script src="resources/js/bootstrap.bundle.min.js"></script>
		<script src="resources/js/tiny-slider.js"></script>
		<script src="resources/js/custom.js"></script>
	</body>

</html>
