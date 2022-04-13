<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW Order details</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../script/OrderdetailsScript.js"></script>
<link rel="stylesheet" href="../css/orderdetails.css">
</head>
<body>
	<form action="orderdetails.do" method="post" name="form" id="form"
		onsubmit="check(); return false;">
		<div class="allOrderdetails">
			<div class="page-title account-page-title has-text-centered">
				<h1 class="heading is-1">NAW.COM Order History</h1>
				<h3>Thank you for your order.</h3>
			</div>

			<h3 class="heading is-5" style="text-align: left;">Order details</h3>
			<div class="text-box-is-top-only-orderDetailContianer">
				<ol class="cart-product-list">
					<li class="account-order-item"></li>
					<li class="account-order-item">
						<article class="cart-product is-normal "
							data-test="lblEmployeeActualPrice_bySKUOCP">

							<div class="cart-product__media" style="display: inline-block;">
								<img data-test="imgProduct_140269"
									srcset="https://www.chanel.com/images//t_one//w_0.51,h_0.51,c_crop/q_auto:good,f_auto,fl_lossy,dpr_1.2/w_280/blue-serum-eye-eye-revitalizing-serum-0-5fl-oz--packshot-default-140269-8845014630430.jpg 280w,https://www.chanel.com/images//t_one//w_0.51,h_0.51,c_crop/q_auto:good,f_auto,fl_lossy,dpr_1.2/w_330/blue-serum-eye-eye-revitalizing-serum-0-5fl-oz--packshot-default-140269-8845014630430.jpg 330w"
									sizes="200px" class="lazyautosizes lazyloaded"
									src="https://www.chanel.com/images//t_one//w_0.51,h_0.51,c_crop/q_auto:good,f_auto,fl_lossy,dpr_1.2/w_1920/blue-serum-eye-eye-revitalizing-serum-0-5fl-oz--packshot-default-140269-8845014630430.jpg">
							</div>

							<div class="cart-product__content" data-test="secProducts_Count"
								style="display: inline-block;">
								<div class="cart-product__context ">
									<div class="cart-product__description">
										<div aria-level="3" role="heading">
											<a
												href="/kr/skincare/p/140269/blue-serum-eye-eye-revitalizing-serum/"><span
												class="heading is-7 " data-test="lblProductTitle_140269">Blue
													serun eye</span> <span data-test="lblProductSubTitle_140269">Free
													anti-aging eye serum</span>
												<p>Size : 235</p>
												<p>Color : black</p>
												<p>Price : 99,000원</p></a>
										</div>
									</div>
								</div>
							</div>
						</article>
					</li>
				</ol>
			</div>
			<br> <br>

			<h3 class="heading is-5" style="text-align: left;">Receipt</h3>
			<div class="text-box-orderContainer">
				<div class="well has-text-centered orderTotals">
					<div class="context ">
						<table class="cart-prices">
							<caption></caption>
							<tbody>
								<tr>
									<!--Header-->
									<th scope="row" class="sub-total ">sub Total<br> <span
										class="price-tax">VAT included</span> <br>
									</th>

									<!--Values-->
									<td class="is-bold">
										<!--Regular price--> <!--Discount price--> <span>
											99,000 won</span>
									</td>
								</tr>
								<tr></tr>
								<tr></tr>
								<tr>
									<th scope="row" class="">shipping fee<br>
									</th>
									<td class="is-bold">for free</td>
								</tr>
								<tr class="is-total">
									<th scope="row" class="">total amount<br> <span
										class="price-tax">VAT included</span>
									</th>
									<td class="is-bold">102,000 won<span hidden=""
										class="is-hidden js-order-price">102000.0</span>
									</td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>
			</div>
			<br> <br>

			<div class="customer__content is-narrow has-blocks ">
				<div class="customer__block"
					style="display: inline-block; text-align: left;">
					<div class="text-box delivery-container"
						data-test="secShippingAddress_OrderDetails">
						<div class="heading-block has-xthin-separator">
							<h2 data-test="" class="heading is-5">Shipping fee</h2>
						</div>
						<div class="content-box">
							<h3 class="is-strong">shipping address</h3>
							<div class="has-space">
								<p class="has-no-margin"
									data-test="lblShippingAddress_OrderDetails">GilDong Hong</p>

								<p class="has-no-margin">90001 서울특별시 서초구 서초대로 77길 90</p>
								<p class="has-no-margin">Korea</p>
								<p class="has-no-margin"></p>

								<p class="has-no-margin" data-test="lblPhoneNumber_OrderDetail">
									01098984545</p>
							</div>

							<h3 class="is-strong">Shipping method</h3>
							<div>
								<p class="has-no-margin"
									data-test="lblShippingMethod_OrderDetails">Normal Shipping
									- Free</p>
							</div>
						</div>
					</div>
				</div>

				<div class="customer__block">
					<div class="text-box billing_Container"
						data-test="secBillingAddress_OrderDetails">
						<div class="heading-block has-xthin-separator">
							<h2 data-test="" class="heading is-5">Claim</h2>
						</div>
						<div class="content-box">
							<h3 class="is-strong">billing address</h3>
							<div class="has-space">
								<p class="has-no-margin"
									data-test="lblBillingAddress_OrderDetails">GilDong Hong</p>

								<p class="has-no-margin">90001 서울특별시 서초구 서초대로 77길 90</p>
								<p class="has-no-margin">Korea</p>
								<p class="has-no-margin"></p>
								<p class="has-no-margin" data-test="lblPhoneNumber_OrderDetail">
									01098984545</p>

							</div>
							<h3 class="is-strong">Payment Method</h3>
							<p class="icon-block has-icon virtual-payment-mode">
								<span class="icon-block__content pay_mode"
									data-test="lblCardDetails">Credit card</span>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div></div>
		</div>
	</form>
</body>
</html>