<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alert</title>
</head>
<body>

<script type="text/javascript">

	var member_id = '<%=(String)session.getAttribute("member_id")%>';
	
	if(member_id != 'null') {
		alert('로그인해야 이용할 수 있는 페이지입니다.');
		location.href = "loginForm.do";
	}
   
	location.href = '<% request.getServletPath(); %>';

</script>

</body>
</html>