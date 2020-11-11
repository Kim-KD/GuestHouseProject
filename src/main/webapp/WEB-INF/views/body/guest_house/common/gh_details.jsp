<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	#container {
		padding-top: 50px;
		padding-bottom: 50px;
		clear: both;
	}

	.top_info {
		width: 1100px;
		margin: 0 auto;
		font-size: 0;
	}
	
	.top_info_box {
		padding: 0 0 100px 0;
	}
	
	.top_info_box_left {
		display: inline-block;
		margin-right: 40px;
		vertical-align: top;
		width: 600px;
		height: auto;
		overflow: hidden;
	}
	
	.top_info_box_right {
		display: inline-block;
		width: 460px;
		vertical-align: top;
	}
	
	.slider_bx {
		visibility: visible;
		height: auto;
	}
	
	.img_wrap_list {
		background: #fff;
		margin: 0 auto;
		position: relative;
	}
	
	.img_slider_control {
		position: absolute;
		right: auto;
		top: 50%;
		bottom: auto;
		z-index: auto;
		width: 100%;
	}
	
	.bxprev { float: left; }
	.bxnext { float: right; }
	
	.bx-prev, .bx-next {
		display: inline-block;
		width: 24px;
		height: 24px;
		background-size: 10px 18px;
		background-position: center;
		background-repeat: no-repeat;
		font-size: 13px;
	}
	
	.top_info_title {
		font-size: 28px;
		margin: 8px 0 40px 0;
		line-height: 36px;
		width: 420px;
	}
	
	.top_info_icon {
		display: inline-block;
		float: right;
		width: 32px;
	}
	
	.top_info_icon_heart {
		margin-top: 8px;
		display: inline-block;
		width: 32px;
		height: 32px;
		border: none;
		padding: 0;
		background-color: transparent;
		font-size: 1rem;
		color: #888;
	}
	
	.top_info_price_box {
		margin: 0 0 40px;
	}
	
	.mid_price {
		display: inline-block;
		font-size: 28px;
		font-weight: 400;
		color: #222;
	}
	
	.mid-price_r {
		display: inline-block;
		font-size: 20px;
		font-weight: 400;
		color: #222;
	}
	
	.top_info_rating_box {
		border-bottom: 1px solid #eee;
		height: 60px;
		line-height: 60px;
	}
	
	.top_info_rating_review {
		display: inline-block;
		font-size: 16px;
		color: #808080;
	}
	
	.top_info_rating {
		display: inline-block;
		font-size: 26px;
		font-weight: 700;
		color: #808080;
		vertical-align: top;
	}
	
	.top_info_rating_box > span > i {
		color: #FDAE5C;
		font-size: 21px;
	}
	
	.top_info_review {
		display: inline-block;
		position: relative;
		font-size: 16px;
		color: #b2b2b2;
		text-decoration: underline;
		margin: 0 0 0 4px;
		padding: 0 0 0 13px;
	}
	
	.top_info_like {
		display: inline-block;
		width: 250px;
		font-size: 16px;
		color: #b2b2b2;
		text-align: right;
	}
	
	.top_info_additional_infomation_box {
		margin-top: 30px;
		border-bottom: 1px solid #eee;
	}
	
	.additional_title {
		margin-bottom: 10px;
		font-weight: 700;
	}
	
	.additional_contents {
		color: #808080;
		font-weight: 400;
	}
	
	.price_top_title > h6 {
		color: #808080;
		font-weight: 400;
	}
	
	.top_info_like > strong { color: #808080; }
	
</style>

<div id="container" class="container">
	<div class="top_info">
		<div class="top_info_box">
			<div class="top_info_box_left">
				<!-- 큰 이미지 [s] -->
				<div class="slider_bx">
					<div style="margin: 0 auto;">
						<div style="width: 100%; overflow: hidden; position: relative; height: 450px;">
							<img style="width: 100%;" src="resources/assets/main/img/details-img/1.png">
						</div>
					</div>
				</div>
				<!-- 큰 이미지 [e] -->
					
				<!-- 썸네일 [s] -->
				<div class="slider_bx img_wrap_list" style="padding: 20px 0;">
					<ul class="img_slider_control">
						<li class="bxprev">
							<a href="#" class="bx-prev">이전</a>
						</li>
						<li class="bxnext">
							<a href="#" class="bx-next">다음</a>
						</li>
					</ul>
					<div style="max-width: 497px; margin: 0 auto;">
						<div style="width: 100%; overflow: hidden; position: relative; height: 80px;">
							<ul style="width: 1000%; position: relative;">
								<li style="float: left; list-style: none; position: relative; width: 113px; margin-right: 15px;">
									<img src="resources/assets/main/img/details-img/1.png" style="width: 104px; height: 80px;">
								</li>
								<li style="float: left; list-style: none; position: relative; width: 113px; margin-right: 15px;">
									<img src="resources/assets/main/img/details-img/1.png" style="width: 104px; height: 80px;">
								</li>
								<li style="float: left; list-style: none; position: relative; width: 113px; margin-right: 15px;">
									<img src="resources/assets/main/img/details-img/1.png" style="width: 104px; height: 80px;">
								</li>
								<li style="float: left; list-style: none; position: relative; width: 113px; margin-right: 15px;">
									<img src="resources/assets/main/img/details-img/1.png" style="width: 104px; height: 80px;">
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 썸네일 [e	] -->
			</div>
			
			<div class="top_info_box_right">
				<span class="top_info_icon">
					<a class="top_info_icon_heart" style="cursor:pointer;"><i class="far fa-heart fa-2x"></i></a>
				</span>
				<h2 class="top_info_title">게스트하우스</h2>
				<div class="top_info_price_box">
					<div class="top_info_price_top">
						<div class="price_top_title">
							<h6>방</h6>
						</div>
					</div>
					<div class="top_info_price_mid">
						<div class="mid_price">20,000원</div>
						<div class="mid-price_r">&nbsp;(￦ 최소 가격) ~ </div>
					</div>
				</div>
				<div class="top_info_rating_box">
					<span class="top_info_rating_review">
						<i class="fas fa-star"></i>
						<span class="top_info_rating">4.00</span>
						<a href="#" class="top_info_review">3명의 리뷰보기</a>
					</span>
					<span class="top_info_like">
						이 숙소를 추천하는 <strong>23</strong>명
					</span>
				</div>
				<div class="top_info_additional_infomation_box">
					<h4 class="additional_title">위치</h4>
					<h6 class="additional_contents">서울특별시 관악구 남부순환로 144길 35</h6>
				</div>
				<div class="top_info_additional_infomation_box">
					<h4 class="additional_title">사장님 한마디</h4>
					<div style="height: 170px;">
						<h6 class="additional_contents">
							숙박시설의 한 종류로, 한국한정으로 줄여서 '게하'라고 부르기도 한다. 
							호스텔과 비슷하면서도 좀 다르다. 
							대한민국 내에서 호스텔, 소위 유스호스텔은 흔히 수련회할 때 묵는 곳으로 인식된다. 
							일단 여행자에게 저렴한 숙박공간을 제공하며, 공동생활을 한다는 점에서는 같으나, 
							게스트하우스는 유스호스텔보다는 소규모이고 좀 더 가족적(?)인 분위기에 호스텔연맹 같은 곳에 가입하지 않고 개인이 운영하는 경우가 일반이다.
							단체실이 주가 되는 호스텔에 비해 대부분의 게스트하우스는 가족 또는 커플 단위의 개인실(주로 2~4 인용)도 보유하고 있는 게 특징.
							물론 개인실도 주인 마음대로 개인여행자를 함께 몰아넣을 수 있다.
						</h6>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>