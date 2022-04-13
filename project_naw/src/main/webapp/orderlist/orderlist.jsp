<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW Order List</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../script/OrderlistScript.js"></script>
<link rel="stylesheet" href="../css/orderlist.css">
</head>
<body>
	<form action="orderlist.do" method="post" name="form" id="form"
		onsubmit="check(); return false;">
		<div class="allOrderlist">
			<h1 class="heading is-1 " data-test="lblMyDetails">MY
				Order List</h1>

			<div id="container" style="text-align: left;">
				<div class="rs-ol-wrapper">
					<ul class="rs-ol-tile-list-as-grid" aria-labelledby="rs-ol-header" >
						<li class="rs-ol-tile-as-grid-item" 
							data-trigger-click="click .rs-ol-tile-name"
							data-trigger-context="true" tabindex="-1"><div
								class="rs-ol-item-epptext"></div>
							<div class="rs-ol-tile-image">
								<img width="540" height="540" alt=""
									src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MK0C2?wid=1080&amp;hei=1080&amp;align=0%2C-1&amp;fmt=jpeg&amp;qlt=90&amp;fit=constrain&amp;.v=1564075356758"
									srcset="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MK0C2?wid=540&amp;hei=540&amp;align=0%2C-1&amp;fmt=jpeg&amp;qlt=90&amp;fit=constrain&amp;.v=1564075356758, https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MK0C2?wid=1080&amp;hei=1080&amp;align=0%2C-1&amp;fmt=jpeg&amp;qlt=90&amp;fit=constrain&amp;.v=1564075356758 2x">
							</div>
							<div class="rs-ol-tile-info">
								<div class="rs-ol-tile-infoinline">
									<a aria-label="Apple Pencil(1세대) 배송됨 2020년 12월 16일"
										href="https://secure2.store.apple.com/kr/shop/order/detail/10162/W759850499?_si=000030"
										class="rs-ol-tile-name">Apple Pencil(1세대)</a>
									<div class="rs-ol-item-quantity" >
										<span class="visuallyhidden">수량</span><span aria-hidden="true">수량:</span>
										2
									</div>
								</div>
							</div>
							<div class="rs-ol-tile-delivery" aria-hidden="true">배송됨
								2020년 12월 16일</div></li>
							</ul>
							
					<ul class="rs-ol-tile-list-as-grid" aria-labelledby="rs-ol-header"  >	
						<li class="rs-ol-tile-as-grid-item" 
							data-trigger-click="click .rs-ol-tile-name"
							data-trigger-context="true" tabindex="-1"><div
								class="rs-ol-item-epptext"></div>
							<div class="rs-ol-tile-image">
								<img width="540" height="540" alt=""
									src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ipad-2020-hero-silver-wifi-select?wid=1080&amp;hei=1080&amp;align=0%2C-1&amp;fmt=jpeg&amp;qlt=90&amp;fit=constrain&amp;.v=1598915073000"
									srcset="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ipad-2020-hero-silver-wifi-select?wid=540&amp;hei=540&amp;align=0%2C-1&amp;fmt=jpeg&amp;qlt=90&amp;fit=constrain&amp;.v=1598915073000, https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ipad-2020-hero-silver-wifi-select?wid=1080&amp;hei=1080&amp;align=0%2C-1&amp;fmt=jpeg&amp;qlt=90&amp;fit=constrain&amp;.v=1598915073000 2x">
							</div>
							<div class="rs-ol-tile-info">
								<div class="rs-ol-tile-infoinline">
									<a
										aria-label="메시지가 각인된 10.2형 iPad Wi-Fi 128GB - 실버 배송됨 2021년 1월 15일"
										href="https://secure2.store.apple.com/kr/shop/order/detail/10162/W759850499?_si=000020"
										class="rs-ol-tile-name">메시지가 각인된 10.2형 iPad Wi-Fi 128GB -
										실버</a>
								</div>
							</div>
							<div class="rs-ol-tile-delivery" aria-hidden="true" >배송됨
								2021년 1월 15일</div></li>
								</ul>
								
					<ul class="rs-ol-tile-list-as-grid" aria-labelledby="rs-ol-header" >
						<li class="rs-ol-tile-as-grid-item" 
							data-trigger-click="click .rs-ol-tile-name"
							data-trigger-context="true" tabindex="-1"><div
								class="rs-ol-item-epptext"></div>
							<div class="rs-ol-tile-image">
								<img width="540" height="540" alt=""
									src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ipad-2020-hero-silver-wifi-select?wid=1080&amp;hei=1080&amp;align=0%2C-1&amp;fmt=jpeg&amp;qlt=90&amp;fit=constrain&amp;.v=1598915073000"
									srcset="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ipad-2020-hero-silver-wifi-select?wid=540&amp;hei=540&amp;align=0%2C-1&amp;fmt=jpeg&amp;qlt=90&amp;fit=constrain&amp;.v=1598915073000, https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ipad-2020-hero-silver-wifi-select?wid=1080&amp;hei=1080&amp;align=0%2C-1&amp;fmt=jpeg&amp;qlt=90&amp;fit=constrain&amp;.v=1598915073000 2x">
							</div>
							<div class="rs-ol-tile-info">
								<div class="rs-ol-tile-infoinline">
									<a
										aria-label="메시지가 각인된 10.2형 iPad Wi-Fi 128GB - 실버 배송됨 2021년 1월 15일"
										href="https://secure2.store.apple.com/kr/shop/order/detail/10162/W759850499?_si=000010"
										class="rs-ol-tile-name">메시지가 각인된 10.2형 iPad Wi-Fi 128GB -
										실버</a>
								</div>
							</div>
							<div class="rs-ol-tile-delivery" aria-hidden="true" >배송됨
								2021년 1월 15일</div></li>
					</ul>
				</div>
			</div>
		</div>
	</form>
</body>
</html>