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
				   <img src="resources/images/회원가입1.jpg">
				   <br/><br/>
				   <h5>
				   		${member_id}님은 회원가입에 성공하셨습니다. <br/>
				   		이제 酒다의 상품을 구매하실 수 있습니다. <br/>
				   		구매하시려면 들어가기(로그인) 버튼을, 아니면 홈페이지 버튼을 누루십시오.
				   </h5>
				   <br/>
					<a href="loginForm.do"><input class="btn" type="button" value="들어가기"></a>
					&nbsp;&nbsp;
					<a href="index.do"><input class="btn" type="button" value="홈페이지"></a>
				</div>
			</div>
			<!-- footer 정보 끝 -->

		</div>
	</section>
	<!-- End signinSuccess Section -->
	
	<!-- JavaScript -->
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script src="resources/js/bootstrap.bundle.min.js"></script>

</body>
</html>