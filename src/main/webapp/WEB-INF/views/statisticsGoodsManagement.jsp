<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="">
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

<script type="text/javascript">
	var admin_id = '<%=(String)session.getAttribute("admin_id")%>';
	
	if(admin_id == 'null') {
		alert('로그인해야 이용할 수 있는 페이지입니다.');
		location.href = "adminLogin.do";
	}
</script>

<title>매출 통계</title>
</head>
<body>

	<!-- [시작] 상단 메뉴탭 -->
	<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">
		<div class="container">
			<a class="navbar-brand" href="admin.do">
			<img src="resources/images/로고.png" alt="logo"></a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarsFurni"
				aria-controls="navbarsFurni" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsFurni">
				<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
					<li>
	                  <c:choose>
	                  	<c:when test="${empty sessionScope.admin_id}"><a class="nav-link" href="adminLogin.do">들어가기(로그인)</a></c:when>
	                  	<c:when test="${not empty sessionScope.admin_id}"><a class="nav-link" href="adminLogOut.do">나가기(로그아웃)</a></c:when>
	                  </c:choose>
	                </li>
				</ul>
			</div>
		</div>

	</nav>
	<br/><br/>
	<!-- [끝] 상단 메뉴탭 -->

	<!-- [시작] 관리자 메인페이지 -->
      <div class="why-choose-section">
         <div class="container">
            <div class="row my-5">
            
            <!-- col-6 col-md-6 col-lg-3 mb-4 -->
            	
            	<div class="col-4"></div>
            	
				<!-- 매출 관리 -->
			   <div class="col-4">
                  <div class="feature">
                     <div class="icon">
                        <a href="statisticsGoods.do"><img src="resources/images/statistics_start.png" alt="Image" class="imf-fluid"></a>
                     </div><br/>
                     <h5>매출 관리</h5>
                  </div>
               </div>

               <div class="col-4"></div>
               
            </div>
         </div>
      </div>
      <!-- [끝] 관리자 메인페이지 -->

</body>
</html>