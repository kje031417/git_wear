<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title> 
<link rel="stylesheet" href="../css/body.css">
<script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../script/jquery.bxslider.js"></script>
<script type="text/javascript">
	$(function(){
		
	});
</script>
</head>
<body>
	<!-- 공지 (include)-->
	<div id="notice">
	
	</div>
	
	<!-- 신상품 : 1350x350? -->
	<div id="new_release">
		<div id="new_release_inner">
			<!-- 자동으로 이미지가 넘어가는 기능 -->
			<p class="title">신상품</p><br>
			
			<!-- 임시 이미지 : 하나씩만 보여주기 -->
			<div class="new_release_img">
				<div><img alt="" src="../img/kirby_main.jpg" width="300"></div>
				<div><img alt="" src="../img/kirby_spring.jpg" width="300"></div>
			</div>
		</div>
	</div>

	<!-- 추천상품 : 이미지 3개 -->
	<div id="recommend">
		<div id="recommend_inner">
		<p class="title">추천상품</p><br>
		
			<div class="recommend_item">
				<a href="#"><img alt="1" src="../img/나이키머큐리얼에어줌베이퍼14프로TF_footballgrey_1.jpg" width="200" height="200"></a>
				<p>나이키 머큐리얼 에어<br>줌 베이퍼 14 프로 TF</p>
			</div>					
			<div class="recommend_item">	
				<a href="#"><img alt="2" src="../img/w_shoes_011_a.png" width="200" height="200"></a>
				<p>나이키 와플 데뷰</p>
			</div>			
			<div class="recommend_item">
				<a href="#"><img alt="3" src="../img/조던시리즈ES_sail_1.jpg" width="200" height="200"></a>
				<p>조던 시리즈 ES</p>
			</div>
		</div>
	</div>
	
	<!-- 인기상품소개 : like 잡지 -->
	<div id="best">
		<div id="best_inner">
		<p class="title">인기상품</p><br>
		
		<div id="best_item">
			<!-- 6:4 -->
			<div class="best_content">
				<p style="font-size: 30px; font-weight: bold;">3-스트라이프로 이어진 전 세계</p>
				<p>아디다스 커뮤니티와 하나로 연결하는 화합의 힘을 담아낸 클래식 윈드브레이커입니다.</p>
				<p>넉넉한 핏과 가벼운 소재의 조화로 날씨에 따라 티셔츠 또는 스웨트셔츠 위로 편안하게 레이어드할 수 있습니다.</p>
			</div>
			<div class="best_img">
				<img alt="" src="../img/w_cloth_001_a.png" width="500px" height="500px">
			</div>
			
			<div class="best_img">
				<img alt="" src="../img/나이키스포츠웨어스우시_남성풀집리버서블재킷AS_hotcurry_1.jpg" width="500px" height="500px">
			</div>
			<div class="best_content">
				<p style="font-size: 30px; font-weight: bold;">추운 날씨를 위한 스테이트먼트 룩</p>
				<p>나이키 스포츠웨어 재킷은 뒤집을 수 있는 디자인의 오버사이즈 로고로 개성을 표현하고, 이동 중에도 룩을 바꿀 수 있습니다.</p> 
				<p>프렌치 테리와 태피터 소재를 사용하여 쌀쌀한 날씨에 보온성을 제공합니다.</p>
			</div>
		</div>
	</div>
	</div>
</body>
</html>