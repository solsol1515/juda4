<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

	<!-- Bootstrap CSS -->
	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
	<link href="resources/css/tiny-slider.css" rel="stylesheet">
	<link href="resources/css/style.css" rel="stylesheet">
	<link href="resources/css/cart.css" rel="stylesheet">
	<title>장바구니</title>

<script type="text/javascript">
	var member_id = '<%=(String)session.getAttribute("member_id")%>';
	
	if(member_id == 'null') {
		alert('로그인해야 이용할 수 있는 페이지입니다.');
		location.href = "loginForm.do";
	}
</script>
	
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
             <div class="row my-5">
               <form class="col-md-12" method="post">
                 <div class="site-blocks-table">
                 	<input type="hidden" id="member_id" class="member_id" value="${sessionScope.member_id}">
                   <table id="cart-table" class="table">
                     <thead>
                       <tr>
                         <th class="goods-select"><input type="checkbox" class="input-check-all" checked="checked"></th>
                         <th class="goods-info" colspan="2">상품 정보</th>
                         <th class="goods-quantity">수량</th>
                         <th class="goods-price">가격</th>
                         <th class="goods-delivery-info">배송 정보</th>
                         <th class="goods-remove">삭제</th>
                       </tr>
                     </thead>
                     <tbody>
                     
	                     <c:if test="${cartList!=null}">
	                     	<c:forEach items="${cartList}" var="vo">
		                       <tr>
		                         <td class="td_width_1 cart_info_td">
		                         	<input type="checkbox" class="individual_input_check" checked="checked">
		                         	<input type="hidden" class="individual_price_input" value="${vo.price}">
		                         	<input type="hidden" class="individual_deliveryPrice_input" value="${vo.delivery_charge}">
		                         	<input type="hidden" class="individual_goods_id" value="${vo.goods_id}">
		                         </td>
		                         <td class="goods-info">
		                           <img src="resources/images/${vo.img_file}" alt="Image" class="img-fluid" style="width:100px; height:100px;" />
		                         </td>
		                         <td class="goods-info">
		                         	<span class="h5 text-black">${vo.goods_name}</span>
		                         </td>
		                         <td>
		                           <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px;">
		                               <button class="btn btn-outline-black decrease" type="button" value="-1">&minus;</button>
		                           	   <input type="text" class="form-control text-center quantity-amount" value="${vo.c_amount}" readonly />
		                               <button class="btn btn-outline-black increase" type="button" value="1">&plus;</button>
		                           </div>
		                         </td>
		                         <td>${vo.price}원</td>
		                         <td> 택배 <div>${vo.delivery_charge}원</div> </td>
		                         <td><button class="btn delete-btn btn-outline-black" type="button">X</button></td>
		                       </tr>
	                     	</c:forEach>
	                     </c:if>
       					
                     </tbody>
                   </table>
                 </div>
               </form>
             </div>
             
             <div style="text-align:center">
             	<a href="shop.do?goods_type=전체&goods_sort=like_count DESC"><button class="btn btn-outline-black btn-sm btn-block">계속 쇼핑하기</button></a>
             </div>
             
             <div class="row my-5 justify-content-center">
             	<div class="under-cart-table">
             		<table id="calTotal-table" class="table table-responsive">
             			<tr>
             				<td>선택 상품 금액</td>
             				<td></td>
             				<td>배송비</td>
             				<td></td>
             				<td>할인 금액</td>
             				<td rowspan="2" style="border-right:1px solid black;"></td>
             				<td rowspan="2"></td>
             				<td rowspan="2">총 주문 금액</td>
             				<td rowspan="2"><span class="finalTotalPrice_span"></span>원</td>
             				<td rowspan="2"><button id="payBtn" class="btn btn-black">주문하기</button></td>
             			</tr>
             			<tr>
             				<td><span class="totalPrice_span"></span>원</td>
             				<td>&plus;</td>
             				<td><span class="totalDeliveryPrice"></span>원</td>
             				<td>&minus;</td>
             				<td>0원</td>
             			</tr>
             		</table>
             	</div>
             </div>
       
           </div>
         </div>
	

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

				<div class="sofa-img">
					<!-- <img src="images/sofa.png" alt="Image" class="img-fluid"> -->
				</div>

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
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script src="resources/js/cart.js"></script>
</body>

</html>
