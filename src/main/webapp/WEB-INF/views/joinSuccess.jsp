<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:if test="result==0">
	<c:redirect url="join.do"></c:redirect>
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Bootstrap CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<link href="resources/css/tiny-slider.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/signin.css" rel="stylesheet">

<title>회원가입 성공</title>
</head>
<body>

	<br/><br/><br/><br/><br/><br/><br/><br/>



	<!-- Start signinSuccess Section -->
	<section class="signinSuccess-section">
		<div class="container relative">

			<!-- footer 정보 시작-->
			<div class="row signinSuccess-content">
				<div class="col-md-5" style="float: none; margin:0 auto; text-align:center;">
				   <h2><strong>酒다의 회원이 되신 것을 축하합니다!</strong></h2>
				   <br/><br/>
				   <img src="resources/images/담은.jpg" id="welcomeimg" style="margin:0 -300px;">
				   <br/><br/>
				   <div>
					   <h5>
					   		<b>${member_id}</b>님은 회원가입에 성공하셨습니다. <br/>
					   </h5>
				   </div>
				   <br/>
					<a href="loginForm.do"><input class="btn" type="button" value="들어가기"></a>
					&nbsp;&nbsp;
					<a href="index.do"><input class="btn" type="button" value="홈페이지"></a>
				</div>
			</div>
			<!-- footer 정보 끝 -->

		</div>
	</section>-
	<!-- End signinSuccess Section -->
	
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
		</div>
	</footer>
	<!-- End Footer Section -->
	
	<!-- JavaScript -->
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script src="resources/js/bootstrap.bundle.min.js"></script>

</body>
</html>