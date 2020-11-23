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
	
	.partner_info_box {
		border-top: 1px solid #eee;
		border-bottom: 1px solid #eee;
		display: inline-block;
		width: 100%;
	}
	
	.partner_info_img {
		display: inline-block;
		width: 70px;
		height: 70px;
		vertical-align: middle;
		position: relative;
		float: none;
	}
	
	.partner_info_img > img {
		width: 100%;
		height: 100%;
		border-radius: 50%;
	}
	
	.partner_info_txt {
		display: inline-block;
		width: 85%;
		vertical-align: middle;
	}
	
	.partner_info_title {
		font-size: 18px;
		color: #484848;
		font-weight: 500;
	}
	
	.partner_info_contents {
		font-size: 14px;
		color: #808080;
	}
	
	.sub_title {
		padding: 2.5em 0 1.1em;
		font-size: 22px;
		color: #000;
	}
	
	.calendar_wrap {
		display: inline-block;
		width: 60%;
		vertical-align: middle;
	}
	/*  */
	.calendar_box {
		position: relative;
		border-radius: 2.5px;
		border: solid 1px #eeeeee;
	}
	
	.calendar_input_box {
		position: relative;
		display: inline-block;
		width: 48.5%;
		vertical-align: middle;
		background-color: #fff;
	}
	
	.calendar_input_box > input {
		padding: 0 20px;
		border: none;
		width: 100%;
		height: 48px;
		line-height: 48px;
		text-align: center;
	}
	
	.calendar_input_label {
		width: 100%;
		height: 100%;
		padding: 0 20px;
		margin: 0;
		font-weight: 400;
		font-size: 16px;
		color: #484848;
		text-align: center;
		line-height: 50px;
	}
	
	.select_wrap {
		display: inline-block;
		width: 20%;
		text-align: left;
		margin: 0 22px 0 0;
		vertical-align: middle;
	}
	
	.select_box {
		width: 100%;
		height: 50px;
		border: 1px solid #eee;
		font-size: 16px;
		text-align: left;
		color: #484848;
		background: #fff;
		padding: 0 0 0 16px;
	}
	
	.room_list_sub_info_box {
		font-size: 16px;
		font-weight: 400;
		color: #808080;
	}
	
	.count_room { display: inline-flex; }
	
	.count_room > b { 
		font-weight: bold;
		color: #808080;
	}
	
	.room_list_box > .room_list:first-child { border-top: 1px solid #eee; }
	
	.room_list {
		display: block;
		padding: 40px 10px;
		border-bottom: 1px solid #eee;
		font-size: 0;
	}
	
	.list_contents-left {
		display: inline-block;
		vertical-align: middle;
	}

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
	
	.room_list > .list_contents-right {
		display: inline-block;
		width: calc(100% - 240px);
		vertical-align: middle;
	}
	
	.room_list > .list_contents-right > .list_txt_top {
		display: block;
		width: 100%;
	}
	
	.list_txt_top > .title_box > .title {
		font-size: 20px;
		font-weight: 400;
		color: #222;
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
	}
	
	.list_txt_top > list_txt_bottom {
		display: block;
		font-size: 0;
	}
	
	.list_txt_bottom-left {
		display: inline-block;
		width: 45%;
		vertical-align: top;
	}
	
	.room_info_txt_box {
		display: block;
		font-size: 14px;
		font-weight: 400;
		color: #808080;
		margin: 0 0 4px 0;
		vertical-align: middle;
		padding: 0 100px 0 0;
	}
	
	.list_txt_bottom-right {
		display: inline-block;
		width: 55%;
		vertical-align: top;
	}
	
	.price_wrap {
		display: inline-block;
		width: calc(100% - 120px);
		text-align: right;
		margin-right: 20px;
		vertical-align: top;
	}
	
	.price_basis_box {
		font-size: 14px;
		font-weight: 400;
		color: #808080;
	}
	
	.price_wrap > .price__box > .current_price_box {
		display: inline-flex;
		font-size: 24px;
		font-weight: 400;
		color: #222;
	}
	
	.price_wrap > .price__box > .current_price_box > .current_price {
		display: inline-block;
		font-size: 24px;
		font-weight: 700;
		color: #222;
	}
	
	.meta_price_box {
		display: block;
		font-size: 14px;
		font-weight: 400;
		color: #808080;
	}
	
	.button_wrap {
		display: inline-block;
		vertical-align: top;
	}
	
	.reservation_button {
		display: block;
		width: 100px;
		height: 48px;
		border: none;
		background-color: #ff4a52;
		border-radius: 4px;
		font-size: 16px;
		font-weight: 400;
		color: #fff;
		cursor: pointer;
	}
	
	.reservation_button:hover { box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.5) !important; }
	
	.txt_wrap { width: 70% }
	.txt_box {
		font-size: 13px;
		font-weight: 400;
		max-height: 360px;
		color: #7a838b;
		line-height: 1.5em;
	}
	
	.sub_title_wrap > .sub_title {
		padding: 55px 0 30px;
		border-top: 1px solid #ccc;
		font-size: 25px;
		color: #484848;
		font-weight: 500;
	}
	
	.introduce1 > h4 {
		color: #484848;
		font-weight: 500;
		padding-bottom: 20px;
	}
	
	.room_service {
		padding: 25px 0;
		border: 1px solid #edeceb;
	}
	
	.room_service_list {
		display: table;
		width: 100%;
		table-layout: fixed;
	}
	
	.room_service_list > li {
		display: table-cell;
		vertical-align: top;
		position: relative;
		border-right: 1px solid #edeceb;
	}
	
	.room_service_list > li > h5 {
		padding: 0 25px 20px;
		font-size: 18px;
		color: #000;
	}
	
	.room_service_list > li > .chk_list > li {
		float: none;
		width: auto;
		border: none;
		padding: 7px 0 7px 25px;
		color: #888;
		font-size: 14px;
		font-weight: 400;
	}
	
	.room_service_list > li:last-child { border-right: none; }
	.chk_list > li > i { color: #42c3bf; }
	
	.room_review_wrap > .sub_title_wrap > h3 { padding: 55px 0 10px }
	
	.sub_contents {
		padding: 0 0 16px;
		width: 780px;
	}
	
	.sub_contents_txt {
		display: inline-block;
		font-size: 15px;
		font-weight: 400;
		color: #484848c4;
	}
	
	.column_left { 
		width: 780px; 
		display: inline-block;
	}
	.review_list {
		margin-top: 0;
		border-top: 1px solid #ccc;
	}
	
	.review_ditails {
		padding: 25px 0;
		border-bottom: 1px solid #edeceb;
	}
	
	.column_left > .review_list:last-child > .review_ditails { border-bottom-color: #000; }
	.user_review_wrap { position: relative; }
	
	.meta {
		margin-top: 8px;
		overflow: hidden;
		padding: 0 0 12px;
	}
	
	.meta > .user {
		float: left;
		line-height: 16px;
		font-size: 15px;
		font-weight: 500;
		color: #484848;
	}
	
	.meta > .date {
		float: right;
		line-height: 16px;
		font-size: 15px;
		color: #aaa;
	}
	
	.user_review_wrap > .txt {
		padding: 13px 0 20px;
		line-height: 1.8;
		color: #484848c4;
		font-size: 14px;
		font-weight: 400;
	}
	
	.column_right {
		display: inline-block;
		position: absolute;
		margin-left: 30px;
	}

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
					<a class="top_info_icon_heart" style="cursor: pointer;"><i class="far fa-heart fa-2x"></i></a>
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
				<div class="m-t-30">
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
	
	<div class="partner_info_box_wrap">
		<div class="partner_info_box p-t-20 p-b-20 m-b-50">
			<div class="partner_info_img">
				<img src="resources/assets/main/img/import/img/unnamed.png" alt="프로필 없믐">
			</div>
			<div class="partner_info_txt p-l-10">
				<div class="partner_info_title m-b-5">게스트하우스</div>
				<div class="partner_info_contents">안녕하세요? 게스트하우스 입니다.</div>
			</div>
		</div>
	</div>
	
	<div class="room_check">
		<h3 class="sub_title m-b-0">객실 예약</h3>
		<div class="room_reservation_wrap m-b-60">
			<div class="calendar_wrap m-r-8">
				<div class="calendar_box">
					<div class="calendar_input_box">
						<label class="calendar_input_label">체크인</label>
					</div>
					<label><i class="fas fa-arrow-right"></i></label>
					<div class="calendar_input_box">
						<label class="calendar_input_label">체크아웃</label>
					</div>
				</div>
			</div>
			<div class="select_wrap">
				<select class="select_box">
					<option>1명</option>
					<option>2명</option>
					<option>3명</option>
				</select>
			</div>
		</div>
		
		<div class="room_list_wrap">
			<div class="room_list_sub_info_box m-b-10">
				<p class="count_room">총 <b>4</b>개의 객실이 있습니다.</p>
			</div>
			<div class="room_list_box">
				<div class="room_list">
					<div class="list_contents-left">
						<div class="thumbnail_box">
							<img src="resources/assets/main/img/trip/1.png">
						</div>
					</div>
					<div class="list_contents-right m-l-20">
						<div class="list_txt_top m-b-10">
							<div class="title_box">
								<h2 class="title m-t-10 m-b-15">남자 4인 도미토리</h2>
							</div>
							<div class="list_txt_bottom">
								<div class="list_txt_bottom-left">
									<div class="room_info_txt_box">
										<span>남성 도미토리</span>
										<span>객실정원 1~4명</span>									
									</div>
									<div class="room_info_txt_box">
										<span>최소예약 1박이상</span>									
									</div>
								</div>
								<div class="list_txt_bottom-right">
									<div class="price_wrap">
										<div class="price_basis_box">1인 1박</div>
										<div class="price__box">
											<div class="current_price_box">
												<div class="current_price">20,000</div>
												원(￦ 25,000)
											</div>
										</div>
										<div class="meta_price_box m-t-20">1인1박 요금 25,000원(￦ 25,000)</div>
									</div>
									<div class="button_wrap">
										<div class="button_box">
											<button class="reservation_button">예약문의</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!--  -->
				<div class="room_list">
					<div class="list_contents-left">
						<div class="thumbnail_box">
							<img src="resources/assets/main/img/trip/1.png">
						</div>
					</div>
					<div class="list_contents-right m-l-20">
						<div class="list_txt_top m-b-10">
							<div class="title_box">
								<h2 class="title m-t-10 m-b-15">남자 4인 도미토리</h2>
							</div>
							<div class="list_txt_bottom">
								<div class="list_txt_bottom-left">
									<div class="room_info_txt_box">
										<span>남성 도미토리</span>
										<span>객실정원 1~4명</span>									
									</div>
									<div class="room_info_txt_box">
										<span>최소예약 1박이상</span>									
									</div>
								</div>
								<div class="list_txt_bottom-right">
									<div class="price_wrap">
										<div class="price_basis_box">1인 1박</div>
										<div class="price__box">
											<div class="current_price_box">
												<div class="current_price">20,000</div>
												원(￦ 25,000)
											</div>
										</div>
										<div class="meta_price_box m-t-20">1인1박 요금 25,000원(￦ 25,000)</div>
									</div>
									<div class="button_wrap">
										<div class="button_box">
											<button class="reservation_button">예약문의</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--  -->
				
			</div>
		</div>
	</div>
	<div class="room_introduce">
		<h3 class="sub_title">숙소 소개</h3>
		<div class="txt_wrap p-t-30">
			<h6 class="txt_box">
				※ 거실에서 바다가 보이는 복층 게스트하우스! <br>
				※  멍때리며 하늘과 바다를 하염없이 바라볼 수 있는 곳!!<br><br>
				반갑습니다.<br>
				와락 게스트하우스 주인 존입니다.<br>
				와락 게스트하우스는 제주의 동쪽인 구좌읍과 세화리 경계에 자리잡고 있습니다. <br>
				바로 앞에는 세화항이 자리잡고 있어 거실에서 아름다운 제주 바다를 바라볼 수 있습니다.<br><br>
				1층에 6개, 2층에 3개의 객실이 자리 잡고 있으며, 4인 도미토리부터 2인실, 커플실, 가족실 등 다양한 방들로 구성되어 있습니다. <br>
				바다가 한눈에 보이는 거실과 복층구조로 이어진 다락이 있는 조금은 특이한 구조를 가지고 있는 게스트하우스이지요.<br><br>
				가끔 시끌시끌할 때도 있습니다만 전반적으로 조용하고 차분한 분위기입니다. <br>
				바베큐도 안하고, 맥주 파티도 없는 곳이며, 23시가 되면 소등하는 조금은 엄격한 규칙을 가지고 있는 게스트하우스입니다. <br>
				하지만 푹 잘 수 있고, 멍 때리고, 하늘과 바다를 하염없이 보고, 다락에서 맘껏 책 읽고, 그렇게 집처럼 편하게 쉴 수 있는 그런 공간입니다. <br><br>
				세화 오일장, 해녀박물관, 세화 해수욕장, 벨롱장(벼룩시장) 등이 도보로 이동 가능한 위치에 있으며, 비자림, 월정리, 다랑쉬오름, 용눈이오름, 레일바이크, 메이즈랜드, 만장굴 등이 차량 20분 이내 거리에 있어서 제주 여행을 하는데 무척 편리할 겁니다.
			</h6>
		</div>
	</div>
	<div class="room_details_introduce">
		<div class="sub_title_wrap m-t-60">
			<h3 class="sub_title m-b-0">숙소 상세 정보</h3>
		</div>
		<div class="introduce1">
			<h4 class="m-b-0">부가시설 및 서비스</h4>
			<div class="room_service">
				<ul class="room_service_list">
					<li>
						<h5>공용시설</h5>
						<ul class="chk_list">
							<li><i class="fas fa-check"></i>&nbsp;Wifi</li>
							<li><i class="fas fa-check"></i>&nbsp;헤어드라이기</li>
							<li><i class="fas fa-check"></i>&nbsp;전자렌지</li>
							<li><i class="fas fa-check"></i>&nbsp;주차가능 - 숙소 앞 길거리 주차(무료)</li>
							<li><i class="fas fa-check"></i>&nbsp;게스트 부엌</li>
							<li><i class="fas fa-check"></i>&nbsp;토스트기</li>
							<li><i class="fas fa-check"></i>&nbsp;휴게실</li>
							<li><i class="fas fa-check"></i>&nbsp;공용PC</li>
							<li><i class="fas fa-check"></i>&nbsp;프린터 사용</li>
							<li><i class="fas fa-check"></i>&nbsp;정원</li>
						</ul>
					</li>
					<li>
						<h5>욕실</h5>
						<ul class="chk_list">
							<li><i class="fas fa-check"></i>&nbsp;화장실(6개)</li>
							<li><i class="fas fa-check"></i>&nbsp;샤워실(4개)</li>
							<li><i class="fas fa-check"></i>&nbsp;수건</li>
							<li><i class="fas fa-check"></i>&nbsp;비누</li>
							<li><i class="fas fa-check"></i>&nbsp;치약</li>
							<li><i class="fas fa-check"></i>&nbsp;샴푸</li>
							<li><i class="fas fa-check"></i>&nbsp;린스</li>
							<li>바디샴푸</li>
						</ul>
					</li>
					<li>
						<h5>기타서비스</h5>
						<ul class="chk_list">
							<li><i class="fas fa-check"></i>&nbsp;짐 보관 서비스</li>
							<li><i class="fas fa-check"></i>&nbsp;신용카드 결제가능</li>
							<li><i class="fas fa-check"></i>&nbsp;유아 숙박불가</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="room_review_wrap p-b-60">
		<div class="sub_title_wrap m-t-60">
			<h3 class="sub_title m-b-0">리뷰</h3>
		</div>
		<div class="room_review">
			<div class="sub_contents">
				<div class="sub_contents_txt">리뷰의 신뢰도를 위해 실제로 숙박하신 분들만 작성 가능합니다.</div>
			</div>
			<div class="column_left">
				<div class="review_list">
					<div class="review_ditails">
						<div class="user_review_wrap">
							<div class="meta">
								<div class="user">사랑하리</div>
								<div class="date">2020.07.30</div>
							</div>
							<p class="txt">사장님이 친절하시고 숙소도 깔끔해서 편히 쉬다 가요! 주변에 교통도 괜찮은 편이라 어디든 버스타고 다녔네요. 감사합니다 :-)</p>
						</div>
					</div>
				</div>
				
				<!--  -->
				<div class="review_list">
					<div class="review_ditails">
						<div class="user_review_wrap">
							<div class="meta">
								<div class="user">카리타스</div>
								<div class="date">2017.07.08</div>
							</div>
							<p class="txt">서비스가 훌륭했습니다. 여행하면서 피로 풀기에 좋았네요.</p>
						</div>
					</div>
				</div>
				<div class="review_list">
					<div class="review_ditails">
						<div class="user_review_wrap">
							<div class="meta">
								<div class="user">윤블리현</div>
								<div class="date">2016.01.25</div>
							</div>
							<p class="txt">저희가 간 날이 바람이 엄청 부는 날씨였는데 바다옆에 위치한 숙소여서 더 바람을 맞을 수 있어서 위치 부문에서 별은 하나 뺐습니다. 하지만 여름에 숙박하게된다면 정말 너무 좋을 것 같습니다. 시설도 너무 좋고 인테리어도 잘되어있고 장판도 하나씩 구비해주셔서 따듯하게 지낼 수 있었습니다. 게하 스탭은 무척 친절하시고 낯가려서 말도 못하는 저희에게 먼저 말걸어주시고 장난도 쳐주셔서 편하게 있을 수 있었습니다. 정말 여름에 다시 한 번 꼭 와서 숙박 하고 싶을 정도 입니다! 정말 강력히 추천합니다!</p>
						</div>
					</div>
				</div>
				<!--  -->
				
				<div style="width:100%; text-align:center;" class="m-t-50 m-b-30">
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
			</div>
			<div class="column_right">
				<textarea style="margin-top: 0px; margin-bottom: 0px; width: 300px; height: 292px;" class="review_w">리뷰를 등록해주세요.</textarea>
			</div>
		</div>
	</div>
</div>