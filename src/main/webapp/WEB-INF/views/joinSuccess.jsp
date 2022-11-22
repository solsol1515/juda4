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
<title>회원가입 성공</title>
</head>
<body>

회원가입을 성공하셨습니다.<br/><br/>

<a href="shop.do?goods_type=all&goods_sort=like_count DESC">쇼핑하러가기</a>

</body>
</html>