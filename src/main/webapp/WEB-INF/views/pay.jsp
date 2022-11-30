<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="favicon.png">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />


<!-- Bootstrap CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
   rel="stylesheet">
<link href="resources/css/tiny-slider.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<title>[결 제 창]</title>


<link type="text/css" rel="stylesheet"
   href="https://ssl.pstatic.net/static.checkout/layout/202211161500/css/customer/chk_n_common.css">
<link type="text/css" rel="stylesheet"
   href="https://order.pstatic.net/202211/16_142053_1668576053/order_customer/static/css/service/front/order/ordersheet.css?1668580192670">
<link type="text/css" rel="stylesheet"
   href="//img.pay.naver.net/o/wstatic/css/service/front/order/layerpopup.css?1668580192670">

<script src="resources/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="resources/js/pay.js"></script>

	<script type="text/javascript">
		var member_id = '<%=(String)session.getAttribute("member_id")%>';
    
		if(member_id == 'null') {
			alert('로그인해야 이용할 수 있는 페이지입니다.');
			location.href = "loginForm.do";
		}
	</script>

</head>
<body class="w_bg1">
   <div id="wrap">

      <!-- 상단 메뉴탭 -->
      <nav
         class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark"
         arial-label="Furni navigation bar">
         <div class="container">
            <a class="navbar-brand" href="index.do">
            <img src="resources/images/로고.png" alt="logo"></a>

            <button class="navbar-toggler" type="button"
               data-bs-toggle="collapse" data-bs-target="#navbarsFurni"
               aria-controls="navbarsFurni" aria-expanded="false"
               aria-label="Toggle navigation">
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
                  <li><a class="nav-link" href="cart.do"><img
                        src="resources/images/cart24.png"></a></li>
                  <li><a class="nav-link" href="myPage.do"><img
                        src="resources/images/user24.png"></a></li>
               </ul>
            </div>
         </div>
      </nav>

<!-- [시작] 주문 / 결제 전체 -->
		<div id="container">
		
			<!-- content -->
			<div id="order" class="order_sc _root _cartDiv">

				<!-- [시작] 주문/ 결제  -->
				<div class="order_header">
					<h3 class="order_payment">
						<span class="blind">주문/결제</span>
					</h3>
					<ol class="process">
						<li><em class="pro"><span class="blind">장바구니</span></em></li>
						<li class="on"><em class="pro2"><span class="blind">주문/결제</span></em></li>
						<li><em class="pro3"><span class="blind">주문완료</span></em></li>
					</ol>
				</div>
				<br />
				<!-- [끝] 주문/ 결제  -->
				
				
				<!-- 주문 상품 카테고리(상품명, 배송비, 수량, 상품금액) 끝-->
				<div class="order_content">
					<div class="product_area">
					
						<table class="tb_products">
							<caption>주문내역</caption>
							<colgroup>
								<col width="250">
								<col width="300">
								<col width="135">
								<col width="135">
								<col width="135">
								<col>
							</colgroup>
							<thead class="point_plus">
								<tr>
									<th scope="col" colspan="2" class="goods">상품명</th>
									<th scope="col">배송비</th>
									<th scope="col">수량</th>
									<th scope="col" class="col_price">상품금액</th>
								</tr>
							</thead>
							<!-- 주문 상품 카테고리(상품명, 배송비, 수량, 상품금액) 끝-->


							<!-- 상품 목록 -->
							<c:if test="${payItemList!=null}">
								<c:forEach items="${payItemList}" var="vo">
									<tr>
										<!--  상품이미지 -->
										<td><span class="bdr"></span>
											<div class="goods_info">
												<a href="sangse.do?goods_id=${vo.goods_id}">
													<img src="resources/images/${vo.img_file}" width=100 height=100 alt="" width="92" height="92">
												</a>
											</div>
										</td>
		
										<!--  상품명 -->
										<td style="text-align:left;">
											<div class="goods_dsc">
												<a href="sangse.do?goods_id=${vo.goods_id}" target="_blank" class="goods_name">
													<strong>${vo.goods_name}</strong>
												</a>
											</div>
											<input type="hidden" class="goods_id" value="${vo.goods_id}">
										</td>
		
										<!--  배송비 -->
										<td rowspan="1">
											<span class="deli_fee">
												<span class="sp_order ico_deli"></span>
												<span class="sum _deliveryPrice2022111882962433">${vo.delivery_charge}원
													<a href="#"></a> <!--N=a:ord.deldetail-->
												</span>
												<span class="_deliveryPriceText2022111882962433"></span>
											</span>
										</td>
		
										<!--  수량 -->
										<td>${vo.c_amount}개</td>
		
										<!--  상품 금액 -->
										<td class="col_price">
											<strong><em class="_productOrderPayAmt2022111839485933">${vo.price*vo.c_amount}</em>원</strong>
										</td>
									</tr>
									<input type="hidden" class="prices" value="${vo.price*vo.c_amount}">
									<input type="hidden" class="deliveries" value="${vo.delivery_charge}">
									<input type="hidden" class="goods_ids" name="goods_id" value="${vo.goods_id}">
									<input type="hidden" class="c_amount" name="c_amount" value="${vo.c_amount}">
								</c:forEach>
							</c:if>
							<!-- 상품 목록 끝 -->
							
							</tbody>
						</table>
						
					</div>


					<!-- 경계선 -->
					<div class="cutting_line">
						<span class="ico_scissors"></span> <span class="shdw_left"></span>
						<span class="shdw_right"></span>
					</div>


					<!-- [시작] 배송지 정보  -->
					<div class="destination_wrap">
						<div class="deliver_wrap">
							<form action="" id="payForm" method="get">
								<h4>
									<span class="blind">배송지정보</span>
								</h4>

								<ul class="addr_lists _deliveryPlaces _deliveryPlaces_0">
									<li>배송지명&emsp;&emsp;&emsp;
										<input type="text" size=25 id="delivery_name">
									</li>
									<br />
									<li>수령인&emsp;&emsp;&emsp;&emsp;
										<input type="text" size=25 id="receiver">
									</li>
									<br />
									<li>연락처&emsp;&emsp;&emsp;&nbsp;&nbsp;
										<select size="1" id="p_num1" class="telSelect">
											<option value="1">010</option>
											<option value="2">011</option>
											<option value="3">016</option>
											<option value="4">017</option>
											<option value="5">02</option>
										</select> &nbsp;-&nbsp;
										<input type="text" size=10 id="p_num2">&nbsp;-&nbsp;
										<input type="text" size=10 id="p_num3">
									</li>
									<br />
									<li>배송지&emsp;&emsp;&emsp;&emsp;
										<input type="text" size="10" id="postcode" name="postcode">&nbsp;
										<button type="button" class="addr_btn" id="addr_btn">우편번호</button>
									</li>
									<br /> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
									<input type="text" size="50" id="addr" name="addr">
									<br />
									<br />&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
									<input type="text" size="50" id="addr_detail" name="addr_detail">
									<br />

									<li>배송메모&emsp;&emsp;&emsp;
										<input type="text" size=45 id="delivery_memo" name="delivery_memo" class="dMemo">
									</li>
									<br />
								</ul>
							</form>
						</div>

						<!-- [끝] 배송지 정보 -->


						<!-- [시작] 주문자 정보 -->
						<div class="userinfo_wrap_purchaserInfo">
							<h5>주문자 정보</h5>
							<br />
							<ul class="user_info">
								<li>${member.NAME}</li>
								<li class="_telNoHighlight "><span class="_memberTelNumber">${member.TEL}</span>
									<!--N=a:ord.modifyphone--></li>
								<li><span class="_memberEmailAddress">${member.EMAIL}</span></li>
							</ul>
							<hr />
							<ul class="info_dsc">
								<li class="info_confirm"><span
									class="_telNoNoti _telNoInfo" style="display: block">주문자
										정보로 결제관련 정보가 제공됩니다.<br>정확한 정보로 등록되어있는지 확인해주세요.
								</span></li>
							</ul>
							<input type="hidden" name="order.memberName" value="${member.NAME}">
							<input type="hidden" name="order.memberCellPhoneNo" value="${member.TEL}">
							<input type="hidden" name="order.memberAddress" value="${member.EMAIL}">
						</div>
						<span class="shdw_left"></span> <span class="shdw_right"></span>
					</div>
				</div>
				<!--  [끝] 주문자 정보 -->


				<!--  [시작] 결제 수단과 결제 상세 -->
				<div class="payment_wrap">
					<div id="chargePointScrollArea" class="payment_info">
						<h4>
							<span class="blind">결제수단</span>
						</h4>
						<div class="payment">
							<ul class="paymethod_list _paymentsArea" />

							<div class="guide_box credit_event paymentMethodStatementArea"
								style="display: none"></div>
							</dummy>
							</li>

							<li class="paymethod _payMethodTab _naverPaymentsBankTab">
								<div class="header tooltip_area">

									<label><input type="radio" name="pay" value="계좌이체" class="bankS">  계좌이체</label>
									<em	class="_generalPaymentAmount payment_price"></em>
									<select	size="1" class="bankSelect">
										<option value="농협은행">농협은행</option>
										<option value="국민은행">국민은행</option>
										<option value="신한은행">신한은행</option>
										<option value="하나은행">하나은행</option>
										<option value="기업은행">기업은행</option>
										<option value="카카오뱅크">카카오뱅크</option>
									</select>
								</div>
							</li>

							<li class="paymethod _payMethodTab _naverPaymentsCardTab">
								<div class="header">
									<label><input type="radio" name="pay" value="카드결제" class="bankS" checked="checked">  카드결제</label><em class="_generalPaymentAmount payment_price"></em> <select
										size="1" class="bankSelect">
										<option value="농협은행">농협은행</option>
										<option value="국민은행">국민은행</option>
										<option value="신한은행">신한은행</option>
										<option value="하나은행">하나은행</option>
										<option value="기업은행">기업은행</option>
										<option value="카카오뱅크">카카오뱅크</option>
									</select>
								</div>

								<div class="_naverPaymentsCard _payMethodTabOpenArea"
									style="display: block;">

									<div class="payway_area">
										<div class="payment_method _easyPayCardFlickArea">
											<div id="easyPayCardFlick"
												style="overflow: hidden; z-index: 2000;" class="type_card ">
												<div class="flick-base"
													style="margin: 0px auto; min-width: 234px; max-width: 234px; position: relative; width: 50%;">
													<ul class="flick-container"
														style="transition-property: -webkit-transform; transition-duration: 0ms; transform: translate(0px, 0px); position: relative; clear: both; width: 200%;">
														<li class="flick-ct flick-ct-dmm _flickPanel"
															style="transition-property: -webkit-transform; transition-duration: 0ms; transform: translate(0px, 0px); float: left; width: 50%; left: 0%; z-index: 10;">
															<input type="hidden" class="_paymentMethod" value="C4">
															<div class="flick-wrap">
																<img src="resources/images/card.png" alt="" width="220"
																	height="155">
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
							</ul>
							</li>
							</ul>
						</div>
					</div>
					

					<div class="price_sum_paymentDetail">
						<h5>결제상세</h5>
						<br />
						<div class="sum">
							<strong class="price_sum_title">주문금액</strong>
							<p class="price_sum_detail">
								<em class="_totalPayPrice"></em>
							</p>
						</div><br/>
						
						<div class="sum1">
							<strong class="goodsPrice">상품금액</strong>
							<p class="price_sum1_detail">
								<em class="_totalOrderPrice"></em>
							</p>
						</div>
						<br />

						<div class="sum2">
							<strong class="deliPrice">배송비</strong>
							<p class="price_sum2_detail">
								<em class="_totalDeliveryFee"></em>
							</p>
						</div><br/><br/>
						

						<div class="sum3">
							<strong class="price_sum_title">총 결제 금액</strong>
							<p class="price_sum3_detail">
								<em class="_totalPayPrice"></em>
							</p>
						</div>
						<br />
						<input type="hidden" id="p_sum" name="p_sum" value="">
						
					</div>
				</div>
				<!--  [끝] 결제 수단과 결제 상세 -->


				<!-- 경계선 -->
				<div class="cutting_line cutting_line_v2">
					<span class="ico_scissors"></span> <span class="shdw_left"></span>
					<span class="shdw_right"></span>
				</div>
				<br /> <br />

				<!-- [시작] 결제하기 버튼 -->
				<div class="payment_agree"
					style="display: flex; justify-content: center;">
					<button class="paybtn" id="payBtn">결제하기</button>
					<br>
				</div>
				<!-- [끝] 결제하기 버튼 -->
			</div>
			<!-- [끝] 주문 / 결제 전체 -->
			
			
		<!-- Modal: 결제 확인 -->
		<div class="modal fade" id="payModal" tabindex="-1" aria-labelledby="payModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div style="height:10px;"></div>
		      <div class="modal-body">
		      	<div class="row">
		      		<div class="col-5">
		      			<img src="resources/images/루피2.png">
		      		</div>
		      		<div class="col-7" style="text-align:center;">
		      			<br/><br/>
		      			<h4>결제하시겠습니까?</h4>
		      			<br/>
		      			<h6></h6>
		      			<h6></h6>
		      			<h6></h6>
		      		</div>
		      	</div>
		        <!-- <img src="resources/images/cart.png" height=70px width=70px>&nbsp;&nbsp;&nbsp;&nbsp;
		        <span style="font-size:22px; font-weight:bold;">선택하신 상품을 장바구니에 담았습니다.</span> -->
		      </div>
		      <div style="height:20px;"></div>
		      <div class="modal-buttons" style="text-align:center;">
		        <button type="button" class="btn btn-sangse">확인</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        <button type="button" class="btn btn-sangse" data-bs-dismiss="modal">취소</button>
		      </div>
		      <div style="height:20px;"></div>
		      <div class="modal-footer" style="height:50px;"></div>
		    </div>
		  </div>
		</div>
		<!-- Modal: 결제 확인 끝 -->
         
         
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
         
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</html>