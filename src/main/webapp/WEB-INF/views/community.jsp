<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% String pjName = "/juda3"; %>

<!DOCTYPE html>
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
		<link href="resources/css/board.css" rel="stylesheet">
		
		<script type="text/javascript" >
		
			let result = <%= request.getParameter("result")%>	
			
			if (result!=null) {
				
					if(result>0) {
							alert('새글 등록이 완료되었습니다.');
					} else {
							alert('새글 등록이 실패되었습니다.');
					}
			}
		</script>
		
		<title>(community)게시판 화면 입니다</title>
	</head>

	<body>

<!-- Start Header/Navigation -->
      <nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">
         <div class="container">
            <a class="navbar-brand" href="index.do"><img src="resources/images/로고.png" alt="logo" style="width:200px; height:100px;"></a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsFurni">
               <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                  <li class="nav-item"><a class="nav-link" href="intro.do">우리들의 이야기(소개)</a></li>
                  <li class=""><a class="nav-link" href="shop.do?goods_type=전체&goods_sort=like_count DESC">우리술 구경하기</a></li>
                  <li class="active"><a class="nav-link" href="community.do">우리들의 공간</a></li>
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
					<div class="col-lg-12">
					<div class="col-md-12 col-lg-3 mb-5 mb-lg-0">
						<h2 class="mb-4 section-title"><b>게 시 판</b></h2>
						<p class="mb-4" id="boardRules">우리 모두가 함께 사용하는 공간입니다. <br/>비속어 등 상대방에게 불쾌감을 줄 수 있는 내용은 삼가주시기바랍니다.</p>
					</div> 
					</div>
				</div>
			</div>
		</div>
	<!-- End Hero Section -->

		<!-- Start Product Section -->
			<div class="container">
				<div class="row">

					<!-- Start Column 1 -->
					<!-- End Column 1 -->

					<!-- Start Column 2 -->
					<div class="col-12 col-md-9 col-lg-9 mb-5 mb-md-0" align="center">
						<a class="product-item"id="boardList" align="center"><h4><b>글 목 록</b></h4><br/><br/>
							<table border="0" >
								<tr>
									<th width="100">번호</th>
									<th width="200">등록일</th>
									<th width="150">작성자</th>
									<th width="400">제목</th>
									<th width="100">조회수</th>
								</tr>
								
						<c:if test="${boardList!=null}">		
							<c:forEach items="${boardList}" var="board">
									<tr>
										<td>${board.q_id}</td>
										<td>${board.q_date}</td>
										<td>${board.member_id}</td>
										<td align="left"><a href="getBoard.do?q_id=${board.q_id}">
												${board.q_title}</a></td>
										<td text-align="left">${board.view_count}</td>
										<!-- 추가 -->
									</tr>
							</c:forEach>
						</c:if>	
							</table><br/><br/>
							<a href="insertBoard.do"><b>새 글 등록</b></a>
						</a>
					</div> 
					<!-- End Column 2 -->

				</div>
			</div>
		<!-- End Product Section -->

		
	<!-- Start Footer Section -->
		<footer class="footer-section">
			<div class="container relative">
	
				<!-- footer 정보 시작-->
				<div class="row footer-content" align="center">
					<div class="col-md-8" style="float: none; margin:0 auto;">
					   <h6>
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
				</div>
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
		<script src="resources/js/custom.js"></script>
	</body>

</html>
