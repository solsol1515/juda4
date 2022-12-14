<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<% String pjName = "/gWebBoard"; %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<link href="resources/css/tiny-slider.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">

<title>게시글 목록</title>

<link href="<%= pjName %>/resources/css/style.css" rel="stylesheet">

</head>
<body>
	<h1>게시글 목록</h1>

	<!-- 검색창 -->
	<form action="community.do">
		<select name='searchCondition'>
			<option value='q_title'>제목</option>
			<option value='member_id'>작성자</option>
			<option value='q_content'>내용</option>
		</select> <input type='text' name='searchKeyword'> <input type='submit'
			value='검색'>
	</form>
	<hr />

	<table border="0">
		<tr>
			<th width="50">번호</th>
			<th width="100">조회수</th>
			<th width="100">작성자</th>
			<th width="150">등록일</th>
			<th width="200">제목</th>
			<th width="300">내용</th>
		</tr>
		<c:forEach items="${boardList }" var="board">
			<tr>
				<td>${board.q_id}</td>
				<td>${board.member_id}</td>
				<td>${board.q_date }</td>
				<td align="left"><a href="getBoard.do?q_id=${board.q_id }">
						${board.q_title}</a></td>
				<td>${board.q_content}</td>
				<td>${board.view_count}</td>
				<td>${board.q_category}</td>
				<!-- 추가 -->
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="insertBoard.do">글쓰기</a>
</body>
</html>