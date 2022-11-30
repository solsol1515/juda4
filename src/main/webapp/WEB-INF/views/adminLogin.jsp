<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<!-- Bootstrap CSS -->
	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
	<link href="resources/css/tiny-slider.css" rel="stylesheet">
	<link href="resources/css/style.css" rel="stylesheet">
	<link href="resources/css/admin.css" rel="stylesheet">
	
	<!-- <link href="resources/css/style_login.css" rel="stylesheet" type="text/css"> -->
	
	<!-- js -->
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="resources/js/adminLogin.js"></script>
	<script type="text/javascript">
	var admin_id = '<%=(String)session.getAttribute("admin_id")%>';
	
	if(admin_id != 'null') {
		location.href = "admin.do";
	}
	</script>

<title>관리자 로그인</title>
</head>
<body>

	<!-- [시작] 관리자 메인페이지 -->
	<div class="login_section">
		<div class="container">
			<div class="row my-5">
            	
            	<div class="col-3"></div>
            	<div class="col-6">
            		
            		<br/><br/><br/><br/><br/><br/><br/><br/><br/>
            		
					<h1>관 리 자 &nbsp;&nbsp;&nbsp; 로 그 인</h1>
				    	<br/>
				    	
				        <div class="login-form">
				          <form action="adminLogin_check.do" id="form" method="get">
				            <input type="text" class="admin_id" name="admin_id" id="admin_id" placeholder="관리자 아이디" >
				            &nbsp;&nbsp;&nbsp;
				            <input type="password" class="password" name="password" id="password" placeholder="비밀번호">
				
				            <br/><br/>
				            
				            <button type="submit" id="btn_submit" value="들 어 가 기" onSubmit="return check();">들 어 가 기</button>
				          </form>
				        </div>
				    
            	</div>
            	<div class="col-3"></div>
            	
			</div>
		</div>
	</div>
</body>
</html>