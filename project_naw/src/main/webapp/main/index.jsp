<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW</title>
</head>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
<link rel="stylesheet" href="../css/index.css">

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
		
		$(".menu_pan").mouseleave(function(){
			$(".menu_pan").slideUp();
		});
	});
</script>
<body>
<!---- HEADER ---->
	<div id="header">
			<!-- 로고 이미지 -->
			<div id="logo">
				<a href="../main/index.jsp">	<!-- index.do ? -->
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
			<!-- 검색창 -->
			<!-- <div id="search">
				<input type="text" id="search_box" placeholder="search">
				<img id="search_img" alt="search" src="../img/search.png" width="17" height="17">
			</div> -->
			
			<!-- 아이콘 -->
			<!-- 세션 id값이 없으면 alert창 띄우기 -->
			<div id="icon">			
				<a href="../orderlist/orderlist.do"><img alt="orderlist" src="../img/list.png" width="25" height="27"></a>
				<a href="#"><img alt="user" src="../img/user.jpg" width="33" height="33"></a>
				<a href="../item/cartList.do"><img alt="cart" src="../img/shopping-cart.jpg" width="33" height="33"></a>
				<a href="../item/inquiryList.do"><img alt="inquiry" src="../img/conversation.png" width="27" height="30"></a>	
				<c:if test="">
					
				</c:if>
				<a href="#"><img alt="logout" src="../img/logout.png" width="28" height="27"></a>	<!-- 위에 넣기 -->
			</div>		

		<!-- 하위 메뉴 카테고리 : 신발 의류 용품 -->
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
	
<!---- CONTAINER ---->	
	<div id="container">
		<!-- view -->
		<div id="section">
			<c:if test="${req == null }">
				<jsp:include page="../main/body.jsp"/>
			</c:if>
			<!-- req로 정보 보내기 -->
			<c:if test="${req != null }">
				<jsp:include page="${req }"/>
			</c:if>
		</div>
	</div>
	
<!---- FOOTER ---->	
	<div id="footer">
	<!-- 사이트 정보 -->
		<p>서울 서초구 서초대로77길 55 에이프로스퀘어 3층</p>
		<p>project_NAW: KJE&nbsp;YHJ&nbsp;LHW&nbsp;CYJ&nbsp;&nbsp;TEL: 032)3333-3333</p>
	</div>
</body>
</html>