<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.js"
  			integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  			crossorigin="anonymous">
</script>
<script type="text/javascript" src="resources/js/login.js"></script>

<link href="resources/css/style_login.css" rel="stylesheet" type="text/css">

<body>

  <div class="parent clearfix">
    <div class="bg-illustration">
      <a class="navbar-brand" href="index.do">
         <img src="resources/images/로고.png" alt="logo"></a>

      <div class="burger-btn">
        <span></span>
        <span></span>
        <span></span>
      </div>

    </div>
    
    <div class="login">
      <div class="container">
        <h1>酒 다<br/>로 그 인</h1>
    
        <div class="login-form">
          <form action="login_check.do" id="form" method="get" name='form'>
            <input type="text"  class="member_id" name="member_id" id="member_id" placeholder="아이디" >
            <input type="password" class="password" name="password" id="password" placeholder="비밀번호">

            
            
            <div class="login_search">
            	<a href='searchId.do'><b>아이디 찾기</b></a> &nbsp; &nbsp;
            	<a href='searchPwd.do'><b>비밀번호 찾기</b></a>&nbsp; &nbsp;
            	<a href='join.do'><b>회원가입</b></a>
            </div>

            <button type="submit" id="btn_submit" value="들 어 가 기" onSubmit="return check();">들 어 가 기</button>
          </form>
        </div>
    
      </div>
      </div>
  </div>
  
  
</body>
</html>