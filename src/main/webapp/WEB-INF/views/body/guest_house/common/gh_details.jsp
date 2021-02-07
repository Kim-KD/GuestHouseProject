<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
					<h4 class="additional_title">공용시설</h4>
					<div style="height: 170px;">
						<h6 class="additional_contents">
							Wifi, 헤어드라이기, 전자렌지, 주차가능, 게스트 부엌, 토스트기, 휴게실, 공용PC, 프린터 사용, 정원
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
	<div class="gh_details_introduce">
		<div class="sub_title_wrap m-t-60">
			<h3 class="sub_title m-b-0">숙소 상세 정보</h3>
		</div>
		<div class="introduce1">
			<h4 class="m-b-0 p-t-0i">부가시설 및 서비스</h4>
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
							<li class="disabled"><i class="fas fa-check"></i>&nbsp;바디샴푸</li>
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
		<div class="introduce2">
			<h4 class="m-b-0">식사 및 간식</h4>
			<h4 class="m-b-0" style="margin-left: -4px;">숙소 이용규칙</h4>
			<div class="border_box">
				<div class="meal_info">
					<dl>
						<dt>조식</dt>
						<dd>아침</dd>
					</dl>
					<dl>
						<dt>석식</dt>
						<dd>점심</dd>
					</dl>
					<dl>
						<dt>석식</dt>
						<dd>저녁</dd>
					</dl>
				</div>
				<div class="house_rules">
					<dl>
						<dt>체크인</dt>
						<dd>15:00</dd>
					</dl>
					<dl>
						<dt>체크아웃</dt>
						<dd>14:00</dd>
					</dl>
					<dl>
						<dt>소등시간</dt>
						<dd>23:00</dd>
					</dl>
				</div>
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
				
				<div class="comment_box">
					<div class="left-area">
						<h3>리뷰를 <br>작성해주세요!</h3>
					</div>
					<div class="right-area">
						<div class="cmt_edit">
							<textarea class="form-control" placeholder="리뷰를 입력해주세요."></textarea>
							<button type="submit" onclick="">리뷰작성</button>
						</div>
					</div>
				</div>
				
				<div style="width:100%; text-align:center;" class="text-center m-t-30 m-b-60">
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
		</div>
	</div>
</div>