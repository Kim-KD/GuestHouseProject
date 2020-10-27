<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	.title_box { margin-left: -16px; }
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
		width: auto;
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
		width: 35%;
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
	
	.tit_and_tab_module {
		text-align: left;
		display: inline-block;
		width: 280px;
		border: 1px solid #f7f7f7;
		background-color: #ffffff;
		padding: 0;
		height: 145px;
		margin-bottom: 10px;
	}
	
	.tab_btn_box_stay_list {
		display: block;
		vertical-align: bottom;
		text-align: left;
	}
	
	.tab_btn {
		display: block;
		vertical-align: bottom;
		white-space: nowrap;
		padding: 8px 6px;
		font-size: 15px;
		font-weight: 500;
		color: rgb(72, 72, 72);
		transition: all 0.3s ease 0s;
		cursor: pointer;
	}
	
	.tab_btn:hover { background-color: #f7f7f7; }
	
	.is_active {
		background-color: #ff4a52;
		color: #ffffff;
	}
	
	.is_active:hover { background-color: #ff4a52; }
	
	.stay_kind_img {
		display: inline-block;
		width: 32px;
		height: 32px;
		margin-right: 4px;
		vertical-align: middle;
		padding: 4px;
	}
	
	.stay_kind_img > i {
		font-size: 1.6em;
	}
	
	.stay_kind {
		width: calc(100% - 38px);
		display: inline-block;
		vertical-align: middle;
	}
</style>

<!-- 게스트하우스 리스트 [s] -->
<section class="m-t-20 m-b-20">
	<div class="container">
		<div class="title_box m-b-20">
			<h5>원하시는 숙소를 찾아보세요.</h5>
		</div>
		<div class="row">
			<!-- 왼쪽 사이드바 [s] -->
			<div class="tit_and_tab_module col-lg-3 col-md-3">
				<div class="tab_btn_box_stay_list">
					<div class="tab_btn is_active">
						<span class="stay_kind_img"><i class="fas fa-home"></i></span>
						<span class="stay_kind">게하모 숙소</span>
					</div>
					<div class="tab_btn">
						<span class="stay_kind_img"><i class="fas fa-home"></i></span>
						<span class="stay_kind">제주</span>
					</div>
					<div class="tab_btn">
						<span class="stay_kind_img"><i class="fas fa-home"></i></span>
						<span class="stay_kind">서귀포</span>
					</div>
				</div>
			</div>
			<!-- 왼쪽 사이드바 [e] -->
			
			<!-- 오른쪽 게스트하우스 리스트 [s] -->
			<div class="col-lg-9 col-md-9">
				<div class="guestHouseTotal">
					<h6 class="m-b-0">검색된 숙소 <strong>OO</strong>개</h6>
				</div>
				<div class="tit_and_info_area">
					<h3 class="m-b-0">숙소</h3>
				</div>
				
				<div class="post_list">
					<div class="list_box">
						<div class="list_item_link" onclick="location.href='#'" style="cursor:pointer;">
							<div class="list_contents-left">
								<div class="thumbnail_box">
									<img src="resources/assets/main/img/trip/1.png" alt="게하모 로고">
									<!-- <div class="list_like">
										<button type="button" class="like_btn">
											<i class="fa fa-heart-o"></i>
										</button>
									</div> -->
								</div>
							</div>
							<div class="list_contents-right">
								<div class="list_txt_top">
									<div class="translated_name_and_name">게스트하우스 이름</div>
									<div class="added_info">
										<div class="location">게스트하우스 위치</div>
									</div>
								</div>
								<div class="list_txt_bottom">
									<div class="added_info-mid">
										<div class="dot_list">즉시예약 · 전액결제</div>
									</div>
									<div class="added_info-last">
										<div class="facilities">편의 시설</div>
									</div>
									<div class="essential_info">
										<div class="no_result__review">리뷰 0</div>
										<div class="wish_total">좋아요 0</div>
									</div>
								</div>
								
								<div class="price_box">
									<div class="month_stay_price">
										<div>
											<div class="number_of_nights">1박</div>
										</div>
										<div class="current_price">
										<b style="color: #000000">
											30,000원
										</b>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!--  -->
					<div class="list_box">
						<div class="list_item_link" onclick="location.href='#'" style="cursor:pointer;">
							<div class="list_contents-left">
								<div class="thumbnail_box">
									<img src="resources/assets/main/img/trip/2.png" alt="게하모 로고">
									<!-- <div class="list_like">
										<button type="button" class="like_btn">
											<i class="fa fa-heart-o"></i>
										</button>
									</div> -->
								</div>
							</div>
							<div class="list_contents-right">
								<div class="list_txt_top">
									<div class="translated_name_and_name">게스트하우스 이름</div>
									<div class="added_info">
										<div class="location">게스트하우스 위치</div>
									</div>
								</div>
								<div class="list_txt_bottom">
									<div class="added_info-mid">
										<div class="dot_list">즉시예약 · 전액결제</div>
									</div>
									<div class="added_info-last">
										<div class="facilities">편의 시설</div>
									</div>
									<div class="essential_info">
										<div class="no_result__review">리뷰 0</div>
										<div class="wish_total">좋아요 0</div>
									</div>
								</div>
								
								<div class="price_box">
									<div class="month_stay_price">
										<div>
											<div class="number_of_nights">1박</div>
										</div>
										<div class="current_price">
										<b style="color: #000000">
											30,000원
										</b>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="list_box">
						<div class="list_item_link" onclick="location.href='#'" style="cursor:pointer;">
							<div class="list_contents-left">
								<div class="thumbnail_box">
									<img src="resources/assets/main/img/trip/3.png" alt="게하모 로고">
									<!-- <div class="list_like">
										<button type="button" class="like_btn">
											<i class="fa fa-heart-o"></i>
										</button>
									</div> -->
								</div>
							</div>
							<div class="list_contents-right">
								<div class="list_txt_top">
									<div class="translated_name_and_name">게스트하우스 이름</div>
									<div class="added_info">
										<div class="location">게스트하우스 위치</div>
									</div>
								</div>
								<div class="list_txt_bottom">
									<div class="added_info-mid">
										<div class="dot_list">즉시예약 · 전액결제</div>
									</div>
									<div class="added_info-last">
										<div class="facilities">편의 시설</div>
									</div>
									<div class="essential_info">
										<div class="no_result__review">리뷰 0</div>
										<div class="wish_total">좋아요 0</div>
									</div>
								</div>
								
								<div class="price_box">
									<div class="month_stay_price">
										<div>
											<div class="number_of_nights">1박</div>
										</div>
										<div class="current_price">
										<b style="color: #000000">
											30,000원
										</b>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="list_box">
						<div class="list_item_link" onclick="location.href='#'" style="cursor:pointer;">
							<div class="list_contents-left">
								<div class="thumbnail_box">
									<img src="resources/assets/main/img/trip/1.png" alt="게하모 로고">
									<!-- <div class="list_like">
										<button type="button" class="like_btn">
											<i class="fa fa-heart-o"></i>
										</button>
									</div> -->
								</div>
							</div>
							<div class="list_contents-right">
								<div class="list_txt_top">
									<div class="translated_name_and_name">게스트하우스 이름</div>
									<div class="added_info">
										<div class="location">게스트하우스 위치</div>
									</div>
								</div>
								<div class="list_txt_bottom">
									<div class="added_info-mid">
										<div class="dot_list">즉시예약 · 전액결제</div>
									</div>
									<div class="added_info-last">
										<div class="facilities">편의 시설</div>
									</div>
									<div class="essential_info">
										<div class="no_result__review">리뷰 0</div>
										<div class="wish_total">좋아요 0</div>
									</div>
								</div>
								
								<div class="price_box">
									<div class="month_stay_price">
										<div>
											<div class="number_of_nights">1박</div>
										</div>
										<div class="current_price">
										<b style="color: #000000">
											30,000원
										</b>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="list_box">
						<div class="list_item_link" onclick="location.href='#'" style="cursor:pointer;">
							<div class="list_contents-left">
								<div class="thumbnail_box">
									<img src="resources/assets/main/img/trip/2.png" alt="게하모 로고">
									<!-- <div class="list_like">
										<button type="button" class="like_btn">
											<i class="fa fa-heart-o"></i>
										</button>
									</div> -->
								</div>
							</div>
							<div class="list_contents-right">
								<div class="list_txt_top">
									<div class="translated_name_and_name">게스트하우스 이름</div>
									<div class="added_info">
										<div class="location">게스트하우스 위치</div>
									</div>
								</div>
								<div class="list_txt_bottom">
									<div class="added_info-mid">
										<div class="dot_list">즉시예약 · 전액결제</div>
									</div>
									<div class="added_info-last">
										<div class="facilities">편의 시설</div>
									</div>
									<div class="essential_info">
										<div class="no_result__review">리뷰 0</div>
										<div class="wish_total">좋아요 0</div>
									</div>
								</div>
								
								<div class="price_box">
									<div class="month_stay_price">
										<div>
											<div class="number_of_nights">1박</div>
										</div>
										<div class="current_price">
										<b style="color: #000000">
											30,000원
										</b>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--  -->
					
				</div>
			</div>
			<!-- 오른쪽 게스트하우스 리스트 [e] -->
		</div>
	</div>
</section>
<!-- 게스트하우스 리스트 [e] -->