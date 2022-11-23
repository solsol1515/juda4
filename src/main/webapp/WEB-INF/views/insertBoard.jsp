<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!-- /*
* Bootstrap 5
* Template Name: Furni
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
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
<!-- 		<link href="https://cdn.jsdelivr.net/npm/bootswatch@5.0.1/dist/lux/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           -->
		<link href="resources/css/tiny-slider.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		<link href="resources/css/board.css" rel="stylesheet">
		<title>(community)게시판 화면 입니다</title>
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
                  <li class="active"><a class="nav-link" href="shop.do?goods_type=전체&goods_sort=like_count DESC">구경하기</a></li>
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
								<h1>일 단 공 백</h1>
								<p class="mb-4"></p>
								<p><a href="" class="btn btn-secondary me-2">구경하기</a>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="hero-img-wrap">
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

		

		<!-- Start Why Choose Us Section -->
		<div class="why-choose-section">
			<div class="container">
				
				
				<div class="row my-5">
					
					<div class="col-6 col-md-6 col-lg-3 mb-4">
						<div class="feature">
							<div class="icon">

							</div>
						</div>
					</div>

					<div class="col-6 col-md-6 col-lg-3 mb-4">
						<div class="feature">
							<div class="icon">
							
							</div>
						</div>
					</div>

					<div class="col-6 col-md-6 col-lg-3 mb-4">
						<div class="feature">
							<div class="icon">
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- End Why Choose Us Section -->
		
		
		<h4>글 등록</h4>		
		<hr><br/>
		<form action="getBoardList.do" method="get" id="boardForm"> <!--  enctype="multipart/form-data" -->
			<table border="0" cellpadding="10" cellspacing="0" class="boardTbl"><!-- cellpadding: 셀 & 글자 간 간격 / cellspacing: 셀 간 간격 -->
				<tr>
					<td bgcolor="orange" width="100" class="td1">제목</td>
					<td align="left"><input type="text" name='title' /></td>
				</tr>
				<tr>
					<td bgcolor="orange" class="td1">작성자</td>
					<td align="left"><input type="text" name='writer'/></td>
				</tr>
				<tr>
					<td bgcolor="orange" class="td1">내용</td>
					<td align="left"><textarea cols="40" rows="10"  name='content'></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"	class="submit" value=" 새 글 등록 " /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getBoardList.do">글 목록 가기</a>
</body>
</html>