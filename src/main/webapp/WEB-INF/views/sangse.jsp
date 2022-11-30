<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="">
  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />
  <link rel="shortcut icon" href="favicon.png">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

		<!-- Bootstrap CSS -->
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
		<link href="resources/css/tiny-slider.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		
		<!-- js -->
		<script src="resources/js/bootstrap.bundle.min.js"></script>
		<script src="resources/js/tiny-slider.js"></script>
		<script src="resources/js/custom.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
		<script src="resources/js/sangse.js"></script>
		
		<title>[상 세 페 이 지]</title>
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


		<!-- [시작]상세페이지 -->
		<!--  [시작] 상품 이미지  -->
		<div class="sangse-section product-section before-footer-section">
		    <div class="container">
		      	<div class="row">
		      	
		      		<!-- Start Column 1 -->
					<div class="col-12 col-md-4 col-lg-8 mb-12">
						<a class="goods-item-image">
							<img src="resources/images/${vo.img_file}" class="img-fluid product-thumbnail">
						</a>
					</div> 
					<!-- End Column 1 -->
						
					<!-- Start Column 2 -->
					
					<div class="col-12 col-md-4 col-lg-4 mb-12 goods-detail">
						<a class="goods-item">
							<h2 class="goods-title">${vo.goods_name}</h2>
							<span class="goods-price">${vo.price}원</span>
						</a>
						<hr/>
						<a>${vo.description}</a><br/>	
							${vo.keyword}	
						<br/><br/>
						
						<ul>
							<li><a>원산지 ${vo.origin}</a></li>
							<li><a>도수 ${vo.alcohol}도</a></li>
							<li><a>배송방법 택배</a></li>
							<li><span>배송비 </span><a>${vo.delivery_charge}원</a></li>
						</ul>
						
						<table class="table">
							<thead>
								<tr>
									<th class="goods-quantity">수량</th>
									<!-- <th></th>
									<th></th>
									<th></th>
									<th></th> -->
									<th class="goods-total">총액</th>
								</tr>
							</thead>
						
						<tr>
                          <td>
                            <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 200px; inline-block;">
                                <input class="btn btn-sm btn-outline-black decrease" type="button" value="&minus;" />&nbsp;
                              	<input type="text" class="form-control text-center quantity-amount" value="1" aria-label="Example text with button addon" aria-describedby="button-addon1" readonly>&nbsp; 
                              	<input class="btn btn-sm btn-outline-black increase" type="button" value="&plus;" />
                            </div>
                          </td>
                          <td><span id="sum">${vo.price}원</span></td>
                        </tr>
                        <tr>
                        	<td colspan="6">
                        	    <p class="goods-pay"><br/>&nbsp;
	                           	 	<a><button class="btn btn-sangse">구매하기</button></a>&emsp;
	                              	<a><button class="btn btn-sangse">장바구니</button></a>&emsp;
	                              	<a><button class="btn btn-sangse">
										<span class="fa fa-paper-plane">찜하기</span>
									</button></a>
									<input type="hidden" id="goods_id" value="${vo.goods_id}" readonly>
									<input type="hidden" id="member_id" value="${sessionScope.member_id}" readonly>
								</p>
                        	</td>
                        </tr>
                        </table>
						
					</div> 
					<!-- End Column 2 -->

		      	</div>
		    </div>
		</div>
		<!-- [끝] 상품 이미지 -->
		<!-- [끝]상세페이지 -->
		
		<!-- Modal: 장바구니 옵션 -->
		<div class="modal fade" id="cartModal" tabindex="-1" aria-labelledby="cartModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered modal-lg">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div style="height:40px;"></div>
		      <div class="modal-body text-center">
		        <img src="resources/images/cart.png" height=70px width=70px>&nbsp;&nbsp;&nbsp;&nbsp;
		        <span style="font-size:22px; font-weight:bold;">선택하신 상품을 장바구니에 담았습니다.</span>
		      </div>
		      <div style="height:40px;"></div>
		      <div class="modal-buttons" style="text-align:center;">
		        <button type="button" class="btn btn-sangse">장바구니로 이동</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        <button type="button" class="btn btn-sangse">계속 구경하기</button>
		      </div>
		      <div style="height:40px;"></div>
		      <div class="modal-footer" style="height:50px;"></div>
		    </div>
		  </div>
		</div>
		<!-- Modal: 장바구니 옵션 끝 -->

		<hr/>
		<br/><br/><br/><br/><br/>
		
		
		<!-- 		<nav class="product_sangse" >	 -->
		<!-- [시작] 상세페이지 탭(상세 / 후기 / 질의) --> 
		
		<!-- Start Team Section -->
		<div class="under-sangse-section">
			<div class="container">
				
				<div class="row mb-5">
					<div class="col-lg-5 mx-auto text-center">
						<h2 class="section-title"></h2>
					</div>
				</div>

				<div class="row" style="text-align:center">

					<!-- Start Column 1 -->
					<div class="col-12 col-md-6 col-lg-4 mb-4 mb-md-0">
						<h6 class><a href="index.do" ><span class=""><b>상세설명</b></span></a></h6>
					</div> 
					<!-- End Column 1 -->


					<!-- Start Column 2 -->
					<div class="col-12 col-md-6 col-lg-4 mb-4 mb-md-0">
						<h6 class><a href="review.do" ><span class=""><b>상품후기</b></span></a></h6>
					</div> 
					<!-- End Column 2 -->


					<!-- Start Column 3 -->
					<div class="col-12 col-md-6 col-lg-4 mb-4 mb-md-0">
						<h6 class><a href="question.do" ><span class=""><b>질의응답</b></span></a></h6>
					</div> 
					<!-- End Column 3 -->
				
				</div>
				
			</div>
		</div>
		<!-- End Team Section -->
		<!-- [끝] 상세페이지 탭(상세 / 후기 / 질의) -->
		
			
	<div class="product-section" style="text-align:center;">
		<img src="resources/images/${vo.description_img}"/>
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
	
	
	
	</body>

</html>
