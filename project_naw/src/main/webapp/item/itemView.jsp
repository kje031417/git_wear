<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/itemView.css">
<script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#wishList").click(function() {
			
		});
	});
</script>
</head>
<body>
	<!-- 제품 상세 정보 -->
	<form action="#" method="post">
	<aside>
		<div class="container2">
			<a href="#" class="filtering"><strong>사이즈</strong></a>
				<div class="bar">
					<ul>
						<li><a href="#" id="250">250</a>
						<li><a href="#" id="255">255</a>
						<li><a href="#" id="260">260</a>
						<li><a href="#" id="265">265</a>
					</ul>
				</div><br><br>
			<a href="#" class="filtering"><strong>색상</strong></a>
				<div class="bar">
					<ul>
						<li><a href="#" id="white">White</a>
						<li><a href="#" id="basic">Basic</a>
						<li><a href="#" id="blue">Blue</a>
						<li><a href="#" id="green">Green</a>
					</ul>
				</div>
		</div>
		<div class="Quantity">
			<input type="number" value="1" min="0" max="10">
		</div><hr>
			<button id="buy"> 바로구매</button><br>
		<div class="location">
			<button type="button" onclick="location.href='cartList.jsp'" id="cartList"><strong>장바구니</strong></button>
			<button type="button" id="wishList"><strong>위시리스트</strong></button>
		</div>
	</aside>
	</form>
	<!-- 제품 사진 -->
	<main>
		<div class="container3">
			<div id="item">
				<img alt="나이키머큐리얼에어줌베이퍼14프로" src="../img/나이키머큐리얼에어줌베이퍼14프로TF_footballgrey_1.jpg">
				<label>나이키 머큐리얼 에어 줌 베이퍼 14 프로를 신고 거침없는 스피드를 만끽하세요. 최소한의 소재를 사용한 세련된 디자인으로 경기 시작부터 끝까지 한결같이 빠른 스피드를 유지할 수 있습니다.</label>
			</div>
			<div id="item">
				<img alt="나이키머큐리얼에어줌베이퍼14프로" src="../img/나이키머큐리얼에어줌베이퍼14프로TF_footballgrey_1.jpg">
				<label>나이키 머큐리얼 에어 줌 베이퍼 14 프로를 신고 거침없는 스피드를 만끽하세요. 최소한의 소재를 사용한 세련된 디자인으로 경기 시작부터 끝까지 한결같이 빠른 스피드를 유지할 수 있습니다.</label>
			</div>
			<div id="item">
				<img alt="나이키머큐리얼에어줌베이퍼14프로" src="../img/나이키머큐리얼에어줌베이퍼14프로TF_footballgrey_1.jpg">
				<label>나이키 머큐리얼 에어 줌 베이퍼 14 프로를 신고 거침없는 스피드를 만끽하세요. 최소한의 소재를 사용한 세련된 디자인으로 경기 시작부터 끝까지 한결같이 빠른 스피드를 유지할 수 있습니다.</label>
			</div>
			<div id="item">
				<img alt="나이키머큐리얼에어줌베이퍼14프로" src="../img/나이키머큐리얼에어줌베이퍼14프로TF_footballgrey_1.jpg">
				<label>나이키 머큐리얼 에어 줌 베이퍼 14 프로를 신고 거침없는 스피드를 만끽하세요. 최소한의 소재를 사용한 세련된 디자인으로 경기 시작부터 끝까지 한결같이 빠른 스피드를 유지할 수 있습니다.</label>
			</div>
		</div>
	</main>
</body>
</html>