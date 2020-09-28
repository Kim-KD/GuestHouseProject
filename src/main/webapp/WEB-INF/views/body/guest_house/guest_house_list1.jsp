<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	.section-title { margin-left: -16px; }
	.tit_and_info_area { padding: 10px; }
	
	.guestHouseTotal {
		padding: 0 0 10px 0;
		border-bottom: 1px solid #eee;
	}
	
	.post_list {
		font-size: 0px;
		text-align: left;
		padding: 0 0 20px;
	}
	
	.post_list > .list_box:hover {
		z-index: 1;
		box-shadow: 0 4px 16px 0 rgba(0, 0, 0, 0.1);
	}
	
	.list_box > .list_item_link {
		display: flex;
		width: 825px;
		height: 200px;
		position: static;
		border-bottom: 1px solid rgb(238, 238, 238);
		padding: 20px 10px;
		margin: 0px auto;
		font-size: 0px;
		justify-content: space-between;
	}
	
	.list_contents-left { display: inline-flex; }

	.list_contents-left > .thumbnail_box {
		position: relative;
		width: 220px;
		height: 160px;
		overflow: hidden;
		background-color: #f3f3f3;	
	}
	
	.thumbnail_box > img {
		position: absolute;
		height: 100%;
		width: 100%;
	}
	
	.thumbnail_box > .list_like {
		display: inline-block;
		position: absolute;
		top: 10px;
		left: 10px;
		width: 20px;
		height: 20px;
		text-align: left;
	}
	
	.list_like > .like_btn {
		display: inline-block;
		width: 20px;
		height: 18px;
		color: #fff;
		background-size: 20px 18px;
		background-position: center center;
		background-repeat: no-repeat;
	}
	
	.list_contents-right {
		display: inline-flex;
		position: relative;
		width: calc(100% - 240px);
		height: 100%;
	}
	
	.list_contents-right > .list_txt_top {
		display: block;
		position: absolute;
		width: 100%;
	}

	.list_txt_top > .translated_name_and_name {
font-size: 20px;
font-weight: 400;
color: #222;
margin: 0 0 4px 0;
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
	}
	
	.list_txt_top > .added_info {
font-size: 13px;
font-weight: 400;
color: #808080;
	}
	
	.added_info > .location {
display: block;
width: 350px;
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
	}
	
	.list_txt_bottom {
display: block;
position: absolute;
bottom: 0;
left: 0;
width: 350px;
	}
	
	.added_info-mid {
margin: 0 0 4px 0;
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis;
display: block;
	}
	
	.added_info-mid > .dot_list {
display: inline-block;
float: left;
white-space: nowrap;
font-size: 14px;
font-weight: 400;
color: #484848;
vertical-align: middle;
	}
	
	.added_info-last {
margin: 0 0 10px 0;
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis;
display: block;
	}
	
	.added_info-last > .facilities {
font-size: 14px;
font-weight: 400;
color: #808080;
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis;
	}
	
	
	.essential_info {
white-space: nowrap;
overflow: hidden;
text-overflow: ellipsis;
	}
	

	.essential_info > .no_result__review {
display: inline-block;
font-size: 14px;
font-weight: 400;
color: #ccc;
vertical-align: middle;	
	}
	
	.essential_info > .wish_total {
display: inline-block;
vertical-align: middle;
margin-left: 10px;

font-size: 14px;
font-weight: 400;
color: #ccc;
	}
	
	.price_box {
display: inline-block;
width: 15%;
text-align: right;
position: absolute;
bottom: 0;
right: 0;
	}
	
	.month_stay_price { margin-bottom: 10px; }
	
	.number_of_nights {
display: inline-block;
border-radius: 10px;
border: solid 1px #eeeeee;
font-size: 11px;
font-weight: 400;
line-height: 20px;
color: #808080;
padding: 0 15px;
margin-left: 5px;
	}
	
	.current_price {
display: inline-block;
vertical-align: middle;
font-size: 20px;
font-weight: 400;
color: #222;
	}
	
	
	
	.test1 {
		border: 1px solid black;
		padding-bottom: 300px;
	}
	.test2 {
		/* border: 1px solid red; */
		padding-bottom: 300px;
	}
</style>

<!-- 게스트하우스 리스트 [s] -->
<section class="m-t-20 m-b-20">
	<div class="container">
		<div class="section-title">
			<h2>Title</h2>
		</div>
		<div class="row">
			<!-- 왼쪽 사이드바 [s] -->
			<div class="col-lg-3 col-md-3 test1">
				<div>
					<h6>검색된 숙소</h6>
				</div>
			</div>
			<!-- 왼쪽 사이드바 [e] -->
			
			<!-- 오른쪽 게스트하우스 리스트 [s] -->
			<div class="col-lg-9 col-md-9 test2">
				<div class="guestHouseTotal">
					<h6 class="m-b-0">검색된 숙소 <strong>OO</strong>개</h6>
				</div>
				<div class="tit_and_info_area">
					<h3 class="m-b-0">숙소</h3>
				</div>
				
				<ul class="post_list">
					<li class="list_box">
						<a href="#" class="list_item_link">
							<span class="list_contents-left">
								<span class="thumbnail_box">
									<img src="resources/assets/main/img/trip/1.png" alt="게하모 로고">
									<!-- <span class="list_like">
										<button type="button" class="like_btn">
											<i class="fa fa-heart-o"></i>
										</button>
									</span> -->
								</span>
							</span>
							<span class="list_contents-right">
								<span class="list_txt_top">
									<span class="translated_name_and_name">게스트하우스 이름</span>
									<span class="added_info">
										<span class="location">게스트하우스 위치</span>
									</span>
								</span>
								<span class="list_txt_bottom">
									<span class="added_info-mid">
										<span class="dot_list">즉시예약 · 전액결제</span>
									</span>
									<span class="added_info-last">
										<span class="facilities">편의 시설</span>
									</span>
									<span class="essential_info">
										<span class="no_result__review">리뷰 0</span>
										<span class="wish_total">좋아요 0</span>
									</span>
								</span>
								
								<span class="price_box">
									<span class="month_stay_price">
										<span class="number_of_nights">1박</span>
										<span class="current_price">
											30,000원
										</span>
									</span>
								</span>
							</span>
						</a>
					</li>
					<!--  -->
					<li class="list_box">
						<a href="#" class="list_item_link">
							<span class="list_contents-left">
								<span class="thumbnail_box">
									<img src="resources/assets/main/img/trip/1.png" alt="게하모 로고">
									<!-- <span class="list_like">
										<button type="button" class="like_btn">
											<i class="fa fa-heart-o"></i>
										</button>
									</span> -->
								</span>
							</span>
							<span class="list_contents-right">
								<span class="list_txt_top">
									<span class="translated_name_and_name">게스트하우스 이름</span>
									<span class="added_info">
										<span class="location">게스트하우스 위치</span>
									</span>
								</span>
								<span class="list_txt_bottom">
									<span class="added_info-mid">
										<span class="dot_list">즉시예약 · 전액결제</span>
									</span>
									<span class="added_info-last">
										<span class="facilities">편의 시설</span>
									</span>
									<span class="essential_info">
										<span class="no_result__review">리뷰 0</span>
										<span class="wish_total">좋아요 0</span>
									</span>
								</span>
								
								<span class="price_box">
									<span class="month_stay_price">
										<span class="number_of_nights">1박</span>
										<span class="current_price">
											30,000원
										</span>
									</span>
								</span>
							</span>
						</a>
					</li>
					<li class="list_box">
						<a href="#" class="list_item_link">
							<span class="list_contents-left">
								<span class="thumbnail_box">
									<img src="resources/assets/main/img/trip/1.png" alt="게하모 로고">
									<!-- <span class="list_like">
										<button type="button" class="like_btn">
											<i class="fa fa-heart-o"></i>
										</button>
									</span> -->
								</span>
							</span>
							<span class="list_contents-right">
								<span class="list_txt_top">
									<span class="translated_name_and_name">게스트하우스 이름</span>
									<span class="added_info">
										<span class="location">게스트하우스 위치</span>
									</span>
								</span>
								<span class="list_txt_bottom">
									<span class="added_info-mid">
										<span class="dot_list">즉시예약 · 전액결제</span>
									</span>
									<span class="added_info-last">
										<span class="facilities">편의 시설</span>
									</span>
									<span class="essential_info">
										<span class="no_result__review">리뷰 0</span>
										<span class="wish_total">좋아요 0</span>
									</span>
								</span>
								
								<span class="price_box">
									<span class="month_stay_price">
										<span class="number_of_nights">1박</span>
										<span class="current_price">
											30,000원
										</span>
									</span>
								</span>
							</span>
						</a>
					</li>
					<li class="list_box">
						<a href="#" class="list_item_link">
							<span class="list_contents-left">
								<span class="thumbnail_box">
									<img src="resources/assets/main/img/trip/1.png" alt="게하모 로고">
									<!-- <span class="list_like">
										<button type="button" class="like_btn">
											<i class="fa fa-heart-o"></i>
										</button>
									</span> -->
								</span>
							</span>
							<span class="list_contents-right">
								<span class="list_txt_top">
									<span class="translated_name_and_name">게스트하우스 이름</span>
									<span class="added_info">
										<span class="location">게스트하우스 위치</span>
									</span>
								</span>
								<span class="list_txt_bottom">
									<span class="added_info-mid">
										<span class="dot_list">즉시예약 · 전액결제</span>
									</span>
									<span class="added_info-last">
										<span class="facilities">편의 시설</span>
									</span>
									<span class="essential_info">
										<span class="no_result__review">리뷰 0</span>
										<span class="wish_total">좋아요 0</span>
									</span>
								</span>
								
								<span class="price_box">
									<span class="month_stay_price">
										<span class="number_of_nights">1박</span>
										<span class="current_price">
											30,000원
										</span>
									</span>
								</span>
							</span>
						</a>
					</li>
					<!--  -->
				</ul>
			</div>
			<!-- 오른쪽 게스트하우스 리스트 [e] -->
		</div>
	</div>
</section>
<!-- 게스트하우스 리스트 [e] -->