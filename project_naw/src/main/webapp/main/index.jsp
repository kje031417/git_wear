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
	margin: 30px 0;
	padding: 0;
	height: 100%;
}
#header {
	width: 100%;
	height: 450px;
	text-align: center;
}

#container {
	width: 100%;
	height: 2000px; 	/* 임시 */
	background-color: #262222;
}

#footer {
	width: 100%;
	height: 10%;
	clear: both;
	text-align: center;
	font: 11px '맑은고딕';
}
.menu_pan {
	width: 100%;
	top: 100%;
	display: none;
}
.top_menu {
	width: 1300px;
	list-style: none;
	text-align: left; 
	display: table;
}
a {
	float: left;
	font: 17px '맑은고딕';
	text-decoration: none;
}
</style>
<script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".top_menu > li").mouseenter(function(){	// 메뉴바에 마우스를 올렸을 때
			let menu_i = $(this).index();
		
			if(menu_i < 3) {
				$(".menu_pan").css({
					display: "none"
				}).eq($(this).index()).css({
					display: "block"
				})
			}
		});	
		
		$(".top_menu > li").mouseleave(function(){
			let menu_i = $(this).index();
			
			if(menu_i < 3) {
				$(".menu_pan").eq($(this).index()).css({
					display: "none"
				})
			}
		});
		
		$(".menu_pan").mouseenter(function(){
			$(".menu_pan").eq($(this).index()).css({
				display: "block"
			})		
		});
		
		$(".menu_pan").mouseleave(function(){
			$(".menu_pan").eq($(this).index()).css({
				display: "none"
			})		
		});
	});
</script>
</head>
<body>
<!---- HEADER ---->
	<div id="header">
		<!-- 메뉴 바 : MEN WOMEN KIDS -->
		<div class="menu_bar">
			<ul class="top_menu">
				<li><a href="#">MEN</a>
				<div class="menu_pan">
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
				
				</li>
				<li><a href="#">WOMEN</a></li>
				<li><a href="#">KIDS</a></li>
			</ul>
		</div>
		<!-- 서브 메뉴판 -->
		
		
		<div class="menu_pan">	
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
			
		<div class="menu_pan">	
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
	
	<!-- 신상품? -->
	<div>
	
	</div>
	
	
<!---- CONTAINER ---->	
	<div id="container">
		<div id="nav">
		
		</div>
		<!-- view -->
		<div id="section">
			<p>container</p>
			
			<!-- admin -->
			<!-- <jsp:include page="../admin/item/itemWriteForm.jsp" /> -->
			<jsp:include page="../admin/notice/noticeList.jsp" />
			
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