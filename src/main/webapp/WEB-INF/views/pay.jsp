<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="resources/js/pay.js"></script>

</head>
<body class="w_bg1">
   <div id="wrap">

      <!-- 상단 메뉴탭 -->
      <nav
         class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark"
         arial-label="Furni navigation bar">
         <div class="container">
            <a class="navbar-brand" href="index.html"> <img
               src="resources/images/로고1.png" alt="logo"></a>

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

      <!-- container -->
      <div id="container">
         <!-- content -->
         <div id="order" class="order_sc _root _cartDiv">

            <!-- 주문 상품 카테고리(상품명, 배송비, 수량, 상품금액) 시작-->
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

            <div class="order_content">
               <div class="product_area">
                  <table class="tb_products">
                     <caption>주문내역</caption>
                     <colgroup>
                        <col width="550">
                        <col width="135">
                        <col width="135">
                        <col width="135">
                        <col>
                     </colgroup>
                     <thead class="point_plus">
                        <tr>
                           <th scope="col" class="product">상품명</th>
                           <th scope="col">배송비</th>
                           <th scope="col">수량</th>
                           <th scope="col" class="col_price">상품금액</th>
                        </tr>
                     </thead>
                     <!-- 주문 상품 카테고리(상품명, 배송비, 수량, 상품금액) 끝-->


                     <!-- 첫번째 상품 시작-->
                     <tr>
                        <!--  상품이미지 -->
                        <td><span class="bdr"></span>
                           <div class="product_info">
                              <a class="product_thmb" target="_blank"> <span
                                 class="goods"></span><img src="resources/images/스윗마마결제.jpg"
                                 width=100 height=100 alt="리츠센 미드센추리모던 화장품정리대 보관함 수납함 선반"
                                 width="92" height="92">
                              </a>

                              <!--  상품명 -->
                              <div class="product_dsc">
                                 <div class="additional_status"></div>
                                 <a
                                    href="https://shopping.naver.com/outlink/itemdetail/6918605682"
                                    target="_blank" class="product_name"> <strong>
                                       상품명을 적어주세요. </strong>
                                 </a>
                              </div>
                              <span class="vm"></span>
                           </div></td>

                        <!--  배송비 -->
                        <td rowspan="1"><span class="deli_fee"><span
                              class="sp_order ico_deli"></span><span
                              class="sum _deliveryPrice2022111882962433">3,000원<a
                                 href="#"></a> <!--N=a:ord.deldetail--></span><span
                              class="_deliveryPriceText2022111882962433"></span></span></td>

                        <!--  수량 -->
                        <td>1개</td>

                        <!--  상품 금액 -->
                        <td class="col_price"><strong><em
                              class="_productOrderPayAmt2022111839485933">32,000</em>원</strong></td>
                     </tr>
                     <!-- 첫번째 상품 끝-->


                     <!-- 두번째 상품 시작-->
                     <tr>
                        <!--  상품이미지 -->
                        <td><span class="bdr"></span>
                           <div class="product_info">
                              <a class="product_thmb" target="_blank"> <span
                                 class="goods"></span><img src="resources/images/스윗마마결제.jpg"
                                 width=100 height=100 alt="리츠센 미드센추리모던 화장품정리대 보관함 수납함 선반"
                                 width="92" height="92">
                              </a>

                              <!--  상품명 -->
                              <div class="product_dsc">
                                 <div class="additional_status"></div>
                                 <a
                                    href="https://shopping.naver.com/outlink/itemdetail/6918605682"
                                    target="_blank" class="product_name"> <strong>
                                       상품명을 적어주세요. </strong>
                                 </a>
                              </div>
                              <span class="vm"></span>
                           </div></td>

                        <!--  배송비 -->
                        <td rowspan="1"><span class="deli_fee"><span
                              class="sp_order ico_deli"></span><span
                              class="sum _deliveryPrice2022111882962433">3,000원<a
                                 href="#"></a> <!--N=a:ord.deldetail--></span><span
                              class="_deliveryPriceText2022111882962433"></span></span></td>

                        <!--  수량 -->
                        <td>1개</td>

                        <!--  상품 금액 -->
                        <td class="col_price"><strong><em
                              class="_productOrderPayAmt2022111839485933">32,000</em>원</strong></td>
                     </tr>
                     <!-- 두번째 상품 끝-->
                     </tbody>
                  </table>
               </div>


               <!-- 가위가 지나가요 -->
               <div class="cutting_line">
                  <span class="ico_scissors"></span> <span class="shdw_left"></span>
                  <span class="shdw_right"></span>
               </div>


               <!-- 배송지 정보 시작 -->
               <div class="destination_wrap">
                  <div class="deliver_wrap">
                     <h4>
                        <span class="blind">배송지정보</span>
                     </h4>

                     <ul class="addr_list _deliveryPlaces _deliveryPlaces_0">
                        <li>배송지명&emsp;&emsp;&emsp;<input type="text"
                              size=25></li>
                        <br/>
                        <li>수령인&emsp;&emsp;&emsp;&emsp;<input type="text"
                              size=25></li>
                        <br/>
                        <li>연락처&emsp;&emsp;&emsp;&nbsp;&nbsp; <select
                              size="1">
                                 <option value="1">010</option>
                                 <option value="2">011</option>
                                 <option value="3">016</option>
                                 <option value="4">017</option>
                                 <option value="5">02</option>
                           </select> &nbsp;-&nbsp;<input type="text" size=10>&nbsp;-&nbsp;<input
                              type="text" size=10></li>
                        <br/>
                        <li>배송지&emsp;&emsp;&emsp;&emsp;<input type="text" size="10">&nbsp;
                        	<button type="button" id="addr_btn">우편번호</button></li>
                        <br /> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
                        <input type="text" size="35">
                        <li>배송메모&emsp;&emsp;&emsp;<input type="text"
                              size=45></li>
                        <br />
                     </ul>
                  </div>
                  
                  <!-- 배송지 정보 끝 -->


                  <!-- 주문자 정보 시작  -->
                  <div class="userinfo_wrap_purchaserInfo">
                     <h4>주문자 정보</h4>
                     <br />
                     <ul class="user_info">
                        <li>주문자 이름</li>
                        <li class="_telNoHighlight "><span class="_memberTelNumber">010-****-****</span>
                           <!--N=a:ord.modifyphone--></li>
                        <li><span class="_memberEmailAddress">******@*****.***</span></li>
                     </ul>
                     <hr />
                     <ul class="info_dsc">
                        <li class="info_confirm"><span
                           class="_telNoNoti _telNoInfo" style="display: block">주문자
                              정보로 결제관련 정보가 제공됩니다.<br>정확한 정보로 등록되어있는지 확인해주세요.
                        </span></li>
                     </ul>
                     <input type="hidden" name="order.memberName" value="윤희선">
                     <input type="hidden" name="order.memberCellPhoneNo"
                        value="010-5**7-3**9">
                  </div>
                  <span class="shdw_left"></span> <span class="shdw_right"></span>
               </div>
            </div>
            <!-- order_content 끝 -->
            <!--  주문자 정보 끝 -->


            <!-- ★★★★★★★★★ 결제 수단과 결제 상세 시작 ★★★★★★★★★ -->
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
                           <span class="ajax_radio radio-applied _payMethodRadio">
                              <span
                              class="radio-mark _radioMarker _click(nmp.front.order.order_sheet.changePaymentTab(naverPaymentsBank)) _stopDefault"></span>
                              <input type="radio" name="payMethod" value="naverPaymentsBank"
                              id="naverPaymentsBankRadio"
                              class="_click(nmp.front.order.order_sheet.changePaymentTab(naverPaymentsBank)) _stopDefault">
                           </span> <span class="checkbox-applied _payMethodCheckBox"
                              style="display: none;"> <span
                              class="checkbox-mark _checkboxMarker _click(nmp.front.order.order_sheet.changePaymentTab(naverPaymentsBank)) _stopDefault"></span>
                              <input type="radio" name="payMethod" value="naverPaymentsBank"
                              id="naverPaymentsBankCheckBox"
                              class="_click(nmp.front.order.order_sheet.changePaymentTab(naverPaymentsBank)) _stopDefault">
                           </span> <label for="naverPaymentsBankRadio" class="tooltip_area">계좌
                              간편결제</label> <em class="_generalPaymentAmount payment_price"></em>
                        </div>
                     </li>

                     <li class="paymethod _payMethodTab _naverPaymentsCardTab">
                        <div class="header">
                           <span class="ajax_radio radio-applied _payMethodRadio">
                              <span
                              class="radio-mark _radioMarker _click(nmp.front.order.order_sheet.changePaymentTab(naverPaymentsCard)) _stopDefault"></span>
                              <input type="radio" name="payMethod" value="naverPaymentsCard"
                              id="naverPaymentsCardRadio" checked="checked"
                              class="_click(nmp.front.order.order_sheet.changePaymentTab(naverPaymentsCard)) _stopDefault">
                           </span> <span class="checkbox-applied _payMethodCheckBox"
                              style="display: none;"> <span
                              class="checkbox-mark _checkboxMarker _click(nmp.front.order.order_sheet.changePaymentTab(naverPaymentsCard)) _stopDefault"></span>
                              <input type="radio" value="naverPaymentsCard"
                              id="naverPaymentsCardCheckBox"
                              class="_click(nmp.front.order.order_sheet.changePaymentTab(naverPaymentsCard)) _stopDefault">
                           </span> <label for="naverPaymentsCardRadio">카드 간편결제</label> <em
                              class="_generalPaymentAmount payment_price"></em>
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
                                                <div
                                                   class="simplepay_select _easyPayMethod _easyPayMethodSelect credit_C4 select">
                                                   <div
                                                      class="card_select_sp_credit_payMeansClass_selected"
                                                      data-code="C4" data-card-key="20190809162744858545"
                                                      data-card-no="9503" data-card-type="체크"
                                                      data-card-class-type="CHECK"
                                                      data-card-name="채움 BAZIC(베이직) 체크" rewardRate="0"
                                                      benefitResidualAmount="0" benefitCardYn="false"
                                                      cardImageUrl="https://ssl.pstatic.net/static.pay/card/plate-images/210908193113/default/nonghyup/default_4.png"
                                                      data-card-product-code="M21004"
                                                      data-is-long-term-installment="false"
                                                      data-card-owner-type="personal">
                                                      <span class="blind">채움 BAZIC(베이직) 체크</span> <span
                                                         class="badge_reward _longFreeInterestBadge"
                                                         style="display: none" data-code="C4"
                                                         data-card-product-code="M21004"
                                                         data-is-long-term-installment="false"> <span
                                                         class="dim"></span> 최대 <span class="reward">36개월</span>
                                                         무이자할부
                                                      </span> <img src="resources/images/card.png" alt=""
                                                         width="220" height="155">
                                                   </div>
                                                </div>
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


                     <ul
                        class="paymethod_list _noPaymentArea _click(nmp.front.order.order_sheet.showNoPaymentLayer()) _stopDefault"
                        style="display: none;">
                        <li class="paymethod">
                           <div class="header">
                              <span class="ajax_radio radio-applied radio-disabled">
                                 <span class="radio-mark"></span> <input type="radio"
                                 name="purpose" id="purpose1" disabled="">
                              </span> <label for="purpose1">계좌 간편결제</label>
                           </div>
                        </li>
                        <li class="paymethod">
                           <div class="header">
                              <span class="ajax_radio radio-applied radio-disabled">
                                 <span class="radio-mark"></span> <input type="radio"
                                 name="purpose" id="purpose1" disabled="">
                              </span> <label for="purpose1">카드 간편결제</label>
                           </div>
                        </li>
                     </ul>
                     <input type="hidden" name="defaultEasyCardCode" value=> <input
                        type="hidden" name="totalReviewMileage" value=0>
                  </div>
               </div>


               <!--  결제 상세 시작 -->
               <div class="price_sum_paymentDetail">
                  <h4>결제상세</h4>
                  <br />
                  <div class="sum">
                     <strong class="price_sum_title">주문금액</strong>
                     <p class="price_sum_detail">
                        <em class="_totalPayPrice">38,000</em>원
                     </p>
                  </div>
                  <ul class="calc_list">
                     <li><strong>상품금액</strong>
                        <p>
                           <em class="_totalOrderPrice">35,000</em>원
                        </p></li>

                     <li><strong>배송비</strong>
                        <p>
                           <dummy class="_totalDeliveryFeeSign"></dummy>
                           <em class="_totalDeliveryFee">3,000</em>원
                        </p></li>
                  </ul>
                  <hr />
                  <strong class="price_sum_title">총 결제 금액</strong>
                  <p class="price_sum_detail">
                     <em class="_totalPayPrice">38,000</em>원
                  </p>
               </div>
            </div>
            <!-- 결제 상세 끝 -->


            <!-- 귀여운 가위가 지나가요 -->
            <div class="cutting_line cutting_line_v2">
               <span class="ico_scissors"></span> <span class="shdw_left"></span>
               <span class="shdw_right"></span>
            </div>
            <br /> <br />

            <!-- 결제하기 버튼 시작 -->
            <div class="payment_agree"
               style="display: flex; justify-content: center;">
               <button onclick="javascript:btn('결제가 완료되었습니다.' )">결제하기</button>
               <br>
            </div>
         </div>
         <!-- 결제하기 버튼 끝 -->
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</html>