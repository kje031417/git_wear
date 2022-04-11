<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 게시판</title>
<script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
</head>
<body>
	<!-- jquery 활용 : 29-exam01 -->
	<!-- 별점기능 추가 -->
	<div>
		<p>별점과 리뷰를 남겨주세요</p>
		
		<div id="container">
		<h1>jQuery Comment</h1>
		<div id="review_write">
			<form action="" id="review_form">
				<div>
					<label>작성자</label>
					<input type="text" name="user_name" id="user_name">
					<input type="submit" value="저장하기">
				</div>
				<div>
					<label>덧글 내용</label>
					<textarea name="comment" id="comment"></textarea>
				</div>
			</form>
		</div>
		
		<ul id="comment_list">
			<!-- 태그 추가 -->
		</ul>
		</div>
	</div>
</body>
</html>