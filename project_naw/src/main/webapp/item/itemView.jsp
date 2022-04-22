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
</head>
<body id="itemView_body">
	<!-- 제품 상세 정보 -->
		<aside id="itemView_aside">
			<div class="container2">
				<a href="#" class="filtering"><strong>사이즈</strong></a>
				<div class="bar">
					<ul>
						<li><a href="#" id="250">250</a>
						<li><a href="#" id="255">255</a>
						<li><a href="#" id="260">260</a>
						<li><a href="#" id="265">265</a>
					</ul>
				</div>
				<br>
				<br> <a href="#" class="filtering"><strong>색상</strong></a>
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
			</div>
			<hr>
			<button type="button" id="buy" onclick="location.href='order_info.do'">바로구매</button>
			<br> <label>배송비 : 3000원</label>
			<div class="location">
				<button type="button" onclick="location.href='cartList.jsp'" id="cartList">
					<strong>장바구니</strong>
				</button>
			</div>
		</aside>
	<!-- 제품 사진 -->
	<main id="itemView_main">
		<div class="container3">
			<img alt="${dto.item_name}" src="../storage/${dto.item_image1}" class="itemView_img">
			<img alt="${dto.item_name}" src="../storage/${dto.item_image2}" class="itemView_img">
			<label>${item_name}</label>
			<label>${item_details}</label>
		</div>
		
		<!-- 리뷰 게시판 -->
		<div class="container4">
			<c:if test="${req_itemView != null }">
				<jsp:include page="${req_itemView }"/>
			</c:if>
		</div>
	</main>
</body>
</html>