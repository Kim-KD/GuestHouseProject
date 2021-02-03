<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
				<div class="serch_total">
					<h6 class="m-b-0">검색된 숙소 <strong>OO</strong>개</h6>
					<a href="gh_write_page">글작성</a>
					<a href="gh_modify_page">글수정</a>
				</div>
				<div class="tit_and_info_area">
					<h3 class="m-b-0">숙소</h3>
				</div>
				
				<div class="post_list">
					<div class="list_box">
						<div class="list_item_link" onclick="location.href='gh_details_page'" style="cursor:pointer;">
							<div class="list_contents-left">
								<div class="thumbnail_box">
									<img src="resources/assets/main/img/trip/1.png">
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
									<img src="resources/assets/main/img/trip/2.png">
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
									<img src="resources/assets/main/img/trip/3.png">
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
									<img src="resources/assets/main/img/trip/1.png">
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
									<img src="resources/assets/main/img/trip/2.png">
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
				<!-- 페이징 [s] -->
				<div style="width:100%;" class="text-center m-t-50 m-b-30">
					<div style="display: inline-block; width:100%; text-align:center;">
						<a href="javascript:void(0);" style="display: inline-block;" class="m-r-20">이전</a>
						<div style="display: inline-block;">
							<a href="javascript:void(0);" class="sp_active" style="display: inline-block; min-width: 10px; height: 30px; margin: 0 4px; padding: 0 10px; border-radius:30px; font-size: 16px; line-height: 30px;">1</a>
							<a href="javascript:void(0);" style="display: inline-block; min-width: 10px; height: 30px; margin: 0 4px; padding: 0 10px; border-radius:30px; font-size: 16px; line-height: 30px;">2</a>
							<a href="javascript:void(0);" style="display: inline-block; min-width: 10px; height: 30px; margin: 0 4px; padding: 0 10px; border-radius:30px; font-size: 16px; line-height: 30px;">3</a>
							<a href="javascript:void(0);" style="display: inline-block; min-width: 10px; height: 30px; margin: 0 4px; padding: 0 10px; border-radius:30px; font-size: 16px; line-height: 30px;">4</a>
							<a href="javascript:void(0);" style="display: inline-block; min-width: 10px; height: 30px; margin: 0 4px; padding: 0 10px; border-radius:30px; font-size: 16px; line-height: 30px;">5</a>
							<a href="javascript:void(0);" style="display: inline-block; min-width: 10px; height: 30px; margin: 0 4px; padding: 0 10px; border-radius:30px; font-size: 16px; line-height: 30px;">6</a>
						</div>
						<a href="javascript:void(0);" style="display: inline-block;" class="m-l-20">다음</a>
					</div>
				</div>
				<!-- 페이징 [e] -->
			</div>
			<!-- 오른쪽 게스트하우스 리스트 [e] -->
		</div>
	</div>
</section>
<!-- 게스트하우스 리스트 [e] -->