<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW</title>
<style type="text/css">
body {
	background: #fff;
	margin: 40px 0;
	padding: 0;
	height: 100%;
}
#header {
	width: 100%;
	background: #fff;
}
#container {
	width: 100%;
	height: 2000px; 	/* 임시 */
	background: #1B1717;
}
#footer {
	width: 100%;
	height: 10%;
	clear: both;
	text-align: center;
	font: 11px '나눔바른고딕';
}
/* 메뉴바 */
.top_menu a {
	text-decoration: none;
	color: #262222;
}
.menu_sub a {
	text-decoration: none;
	color: #262222;
}
.top_menu {		/* 상위 카테고리 */
	margin: 0 30%;
	width: 30%; 
	height: 40px;
	list-style: none;
	text-align: center; 
	display: table;
}
.top_menu li {
	display: table-cell;
	padding: 0 10px;
	margin: 0 0 0 0;
	background: #fff;
}
.top_menu li a {
	font-size: 20px;
}
.menu_pan {		/* 하위 카테고리 */
	width: 100%;
	top: 80px;					/* 40px + 40px */
	background: #fff;
	position: absolute;
	display: none;
}
.c {
	margin: 0 35%;
}
.menu_sub {
	float: left;
	margin: 30px 0;
}
.category:nth-child(1) {
	font-weight: bold;
}
.category {
	padding: 9px 0;
	margin-right: 100px;
}
.category:hover {
	text-decoration: underline;
}
#logo {
	position: absolute;
	top: 0;
}
</style>
<script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".top_menu > li").mouseenter(function(){
			let menu_i = $(this).index();
			
			if(menu_i < 3) {
				$(".menu_pan").css({
					display: "none"
				}).eq($(this).index()).css({
					background: "#fff"
				}).slideDown();
			}
		});
		
		$(".menu_pan").mouseleave(function(){		// menu_pan과 top_menu를 다 떠나야 접기	
			$(".menu_pan").slideUp();
		});
	});
</script>
</head>
<body>
<!---- HEADER ---->
	<div id="header">
		<!-- 로고 이미지 -->
		<div id="logo">
			<a href="#">
				<img alt="NAW" src="../img/NAW_main.jpg" width="80" height="80">
			</a>
		</div>
		<!-- 메뉴 바 : MEN WOMEN KIDS -->
		<div class="menu_bar">
			<ul class="top_menu">
				<li><a href="#">MEN</a></li>
				<li><a href="#">WOMEN</a></li>
				<li><a href="#">KIDS</a></li>
			</ul>
		</div>
		
		<!-- 아이콘 -->
		<div>
		
		</div>
		
		<!-- 하위 메뉴 카테고리 (디폴트값은 none이었다가 부모 태그 hover시 보임)-->
		<div class="menu_pan">
			<div class="c">
				<!-- MEN 하위 메뉴 -->
				<div class="menu_sub">
					<div class="category"><a href="#">신발</a></div>
					<div class="category"><a href="#">러닝</a></div>
					<div class="category"><a href="#">농구</a></div>
					<div class="category"><a href="#">축구</a></div>
					<div class="category"><a href="#">골프</a></div>
				</div>
										
				<div class="menu_sub">
					<div class="category"><a href="#">의류</a></div>
					<div class="category"><a href="#">자켓</a></div>
					<div class="category"><a href="#">티셔츠</a></div>
					<div class="category"><a href="#">후디</a></div>
					<div class="category"><a href="#">팬츠</a></div>
				</div>
										
				<div class="menu_sub">
					<div class="category"><a href="#">용품</a></div>
					<div class="category"><a href="#">양말</a></div>
					<div class="category"><a href="#">모자</a></div>
					<div class="category"><a href="#">가방</a></div>
					<div class="category"><a href="#">장갑</a></div>
				</div>	
			</div>		
		</div>	
						
		<div class="menu_pan">	
			<div class="c">
				<!-- WOMEN 하위 메뉴 -->
				<div class="menu_sub">
					<div class="category"><a href="#">신발</a></div>
					<div class="category"><a href="#">러닝</a></div>
					<div class="category"><a href="#">트레이닝</a></div>
					<div class="category"><a href="#">아웃도어</a></div>
					<div class="category"><a href="#">골프</a></div>
				</div>
					
				<div class="menu_sub">
					<div class="category"><a href="#">의류</a></div>
					<div class="category"><a href="#">자켓</a></div>
					<div class="category"><a href="#">티셔츠</a></div>
					<div class="category"><a href="#">후디</a></div>
					<div class="category"><a href="#">팬츠</a></div>
				</div>
								
				<div class="menu_sub">
					<div class="category"><a href="#">용품</a></div>
					<div class="category"><a href="#">양말</a></div>
					<div class="category"><a href="#">모자</a></div>
					<div class="category"><a href="#">가방</a></div>
					<div class="category"><a href="#">장갑</a></div>
				</div>
			</div>
		</div>	
						
		<div class="menu_pan">	
			<div class="c">
				<!-- KIDS 하위 메뉴 -->
				<div class="menu_sub">
					<div class="category"><a href="#">신발</a></div>
					<div class="category"><a href="#">big</a></div>
					<div class="category"><a href="#">little</a></div>
					<div class="category"><a href="#">babies</a></div>
					<div class="category"><a href="#">운동화</a></div>
				</div>
								
				<div class="menu_sub">
					<div class="category"><a href="#">의류</a></div>
					<div class="category"><a href="#">자켓</a></div>
					<div class="category"><a href="#">티셔츠</a></div>
					<div class="category"><a href="#">후디</a></div>
					<div class="category"><a href="#">팬츠</a></div>
				</div>
								
				<div class="menu_sub">
					<div class="category"><a href="#">용품</a></div>
					<div class="category"><a href="#">양말</a></div>
					<div class="category"><a href="#">모자</a></div>
					<div class="category"><a href="#">가방</a></div>
					<div class="category"><a href="#">장갑</a></div>
				</div>
			</div>
		</div>
		
	</div>								
	<!-- 신상품 -->
	<div id="new_release">
		<!-- 자동으로 이미지가 넘어가는 기능 -->
		
	</div>
	
<!---- CONTAINER ---->	
	<div id="container">
		<div id="nav">
		
		</div>
		<!-- view -->
		<div id="section">
			
		</div>
	</div>
	
<!---- FOOTER ---->	
	<div id="footer">
	<!-- 사이트 정보 -->
		<p>서울 서초구 서초대로77길 55 에이프로스퀘어 3층</p>
		<p>member: KJE&nbsp;YHJ&nbsp;LHW&nbsp;CYJ&nbsp;&nbsp;tel: 02)1111-2222</p>
	</div>
</body>
</html>