<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="resources/data-components/guest_house/gh_write.js"></script>
<script src="resources/data-components/guest_house/common.js"></script>

<div id="container_wrap">
	<div id="contents" class="container">
		<div class="">
			<div class="tit-wrap">
				<h2 class="tit">게스트하우스</h2>
				<h3 class="tit-split">정보 입력</h3>
			</div>
    		
			<form action="gh_write" method="post" enctype="multipart/form-data">
				<input type="hidden" name="USER_ID" id="user_id" value="${userData.USER_ID}">
				 
				<div class="tit-wrap">
					<h4 class="sub-tit">기본 정보</h4>
					<div class="tit-right">
						<p class="p-txt"><b class="color_red">*</b>필수입력표시는 필수 입력 정보입니다. 반드시 입력해주세요.</p>
					</div>
				</div>
    			
				<table class="table-list">
					<tbody class="table-body">
						<tr class="table-row">
							<th class="table-col table-col-tit">숙소명&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-wrap">
									<input type="text" name="PARTNER_NAME" id="partner_name">
								</span>
								<p class="text_alert" id="warning_partner_name"><i class="warning_partner_name"></i></p>
							</td>
							
							<th class="table-col table-col-tit">우편번호&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-group input-group__id">
									<span class="input-wrap">
										<input type="text" name="POST_CODE" id="post_code" readonly>
									</span>
									<button type="button" class="info-manage__btn-id" id="test" onclick="search_Postcode()">주소 찾기</button>
								</span>
								<p class="text_alert" id="warning_post_code"></p>
							</td>
						</tr>
						
						<tr class="table-row">
							<th class="table-col table-col-tit">주소&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-wrap">
									<input type="text" name="ADDR" id="addr" readonly>
								</span>
								<p class="text_alert" id="warning_addr"></p>
							</td>
							
							<th class="table-col table-col-tit">상세주소&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-wrap">
									<input type="text" name="DETAIL_ADDR" id="detail_addr">
								</span>
								<p class="text_alert" id="warning_detail_addr"></p>
							</td>
						</tr>
						
						<tr class="table-row">
							<th class="table-col table-col-tit">숙소 소개&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col" colspan="3">
								<textarea class="input-wrap" rows="10" name="INTRODUCE" id="introduce" style="font-size:12px; padding: 5px;" placeholder="숙소를 소개해주세요."></textarea>
								<p class="text_alert" id="warning_introduce"></p>
							</td>
						</tr>
						
						<tr class="table-row">
							<th class="table-col table-col-tit">체크인&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-wrap">
									<input type="text" name="CHECK_IN" id="check_in">
								</span>
								<p class="text_alert" id="warning_check_in"></p>
							</td>
							
							<th class="table-col table-col-tit">체크아웃&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-wrap">
									<input type="text" name="CHECK_OUT" id="check_out">
								</span>
								<p class="text_alert" id="warning_check_out"></p>
							</td>
						</tr>
						
						<tr class="table-row">
							<th class="table-col table-col-tit">소등시간&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-wrap">
									<input type="text" name="LIGHTS_OUT_TIME" id="lights_out_time">
								</span>
								<p class="text_alert" id="warning_lights_out_time"></p>
							</td>
							
							<th class="table-col table-col-tit">썸네일 및 외부사진&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-group input-group__id">
									<span class="input-wrap">
										<input type="file" name="THUMBNAIL" id="thumbnail" style="display: none">
										<input type="text" id="thumbnail_name" value="" readonly>
									</span>
									<label class="info-manage__btn-id" for="thumbnail" style="margin-bottom: 0">파일 선택</label>
								</span>
							</td>
						</tr>
					</tbody>
				</table>
				
				<div class="tit-wrap">
					<h4 class="sub-tit">객실 정보</h4>
					<a class="add_del" onclick="del_Room_info()">삭제</a>
					<a class="add_del" onclick="add_Room_info()">추가</a>
				</div>
    			
				<table class="table-list">
					<tbody class="table-body" id="room_info">
						<tr class="table-row" id="room_info1">
							<th class="table-col table-col-tit">객실&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-wrap">
									<input type="text" name="ROOMS" id="rooms1" onkeydown="keyevent(this.id);">
								</span>
								<p class="text_alert" id="warning_rooms1"></p>
							</td>
							<th class="table-col table-col-tit">1박 단가&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-wrap">
									<input type="text" name="PRICE" id="price1" onkeydown="keyevent(this.id);">
								</span>
								<p class="text_alert" id="warning_price1"></p>
							</td>
						</tr>
						
						<tr class="table-row" id="room_info2">
							<th class="table-col table-col-tit">남&nbsp;&nbsp;/&nbsp;&nbsp;여&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-wrap">
									<input type="text" name="ROOM_GENDER" id="room_gender1" onkeydown="keyevent(this.id);">
								</span>
								<p class="text_alert" id="warning_room_gender1"></p>
							</td>
							<th class="table-col table-col-tit">정원&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-wrap">
									<input type="text" name="PERSONNEL" id="personnel1" onkeydown="keyevent(this.id);">
								</span>
								<p class="text_alert" id="warning_personnel1"></p>
							</td>
						</tr>
						
						<tr class="table-row" id="room_info3">
							<th class="table-col table-col-tit">객실 사진&nbsp;&nbsp;<b class="color_red">*</b></th>
							<td class="table-col">
								<span class="input-group input-group__id">
									<span class="input-wrap">
										<input type="file" name="ROOMS_IMG" id="room_img1" onclick="btn_click(this)" style="display: none">
										<input type="text" id="room_img_name1" value="" readonly>
									</span>
									<label class="info-manage__btn-id" for="room_img1" style="margin-bottom: 0">파일 선택</label>
								</span>
							</td>
						</tr>
					</tbody>
				</table>
				
				<div class="tit-wrap">
					<h4 class="sub-tit">부가시설 및 서비스</h4>
				</div>
				<div class="table-list introduce1">
					<div class="room_service">
						<ul class="room_service_list">
							<li>
								<h5>공용시설</h5>
								<ul class="chk_list">
									<li>
										<label id="test" for="chk_box1">
											<input type="checkbox" id="chk_box1">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk1" value="N">
											Wifi
										</label>
									</li>
									<li>
										<label id="test" for="chk_box2">
											<input type="checkbox" id="chk_box2">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk2" value="N">
											헤어드라이기
										</label>
									</li>
									<li>
										<label id="test" for="chk_box3">
											<input type="checkbox" id="chk_box3">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk3" value="N">
											전자렌지
										</label>
									</li>
									<li>
										<label id="test" for="chk_box4">
											<input type="checkbox" id="chk_box4">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk4" value="N">
											커피포트
										</label>
									</li>
									<li>
										<label id="test" for="chk_box5">
											<input type="checkbox" id="chk_box5">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk5" value="N">
											주차가능 - 숙소 앞 길거리 주차(무료)
										</label>
									</li>
									<li>
										<label id="test" for="chk_box6">
											<input type="checkbox" id="chk_box6">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk6" value="N">
										게스트 부엌
										</label>
									</li>
									<li>
										<label id="test" for="chk_box7">
											<input type="checkbox" id="chk_box7">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk7" value="N">
											토스트기
										</label>
									</li>
									<li>
										<label id="test" for="chk_box8">
											<input type="checkbox" id="chk_box8">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk8" value="N">
											TV
										</label>
									</li>
									<li>
										<label id="test" for="chk_box9">
											<input type="checkbox" id="chk_box9">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk9" value="N">
											엘리베이터
										</label>
									</li>
									<li>
										<label id="test" for="chk_box10">
											<input type="checkbox" id="chk_box10">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk10" value="N">
											다리미
										</label>
									</li>
									<li>
										<label id="test" for="chk_box11">
											<input type="checkbox" id="chk_box11">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk11" value="N">
											휴게실
										</label>
									</li>
									<li>
										<label id="test" for="chk_box12">
											<input type="checkbox" id="chk_box12">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk12" value="N">
											공용PC
										</label>
									</li>
									<li>
										<label id="test" for="chk_box13">
											<input type="checkbox" id="chk_box13">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk13" value="N">
											프린터 사용
										</label>
									</li>
									<li>
										<label id="test" for="chk_box14">
											<input type="checkbox" id="chk_box14">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk14" value="N">
											정원
										</label>
									</li>
								</ul>
							</li>
							<li>
								<ul class="chk_list m-t-45">
									<li>
										<label id="test" for="chk_box15">
											<input type="checkbox" id="chk_box15">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk15" value="N">
											바베큐시설
										</label>
									</li>
									<li>
										<label id="test" for="chk_box16">
											<input type="checkbox" id="chk_box16">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk16" value="N">
											수영장
										</label>
									</li>
									<li>
										<label id="test" for="chk_box17">
											<input type="checkbox" id="chk_box17">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk17" value="N">
											레스토랑
										</label>
									</li>
									<li>
										<label id="test" for="chk_box18">
											<input type="checkbox" id="chk_box18">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk18" value="N">
											카페
										</label>
									</li>
									<li>
										<label id="test" for="chk_box19">
											<input type="checkbox" id="chk_box19">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk19" value="N">
											헬스시설
										</label>
									</li>
									<li>
										<label id="test" for="chk_box20">
											<input type="checkbox" id="chk_box20">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk20" value="N">
											팩스 사용
										</label>
									</li>
									<li>
										<label id="test" for="chk_box21">
											<input type="checkbox" id="chk_box21">
											<input type="hidden" name="PUBLIC_FACILITY" id="chk21" value="N">
											스파시설
										</label>
									</li>
								</ul>
							</li>
							<li>
								<h5>욕실</h5>
								<ul class="chk_list">
									<li>
										<label id="test" for="chk_box22">
											<input type="checkbox" id="chk_box22">
											<input type="hidden" name="BATHROOM" id="chk22" value="N">
											화장실
										</label>
									</li>
									<li>
										<label id="test" for="chk_box23">
											<input type="checkbox" id="chk_box23">
											<input type="hidden" name="BATHROOM" id="chk23" value="N">
											샤워실
										</label>
									</li>
									<li>
										<label id="test" for="chk_box24">
											<input type="checkbox" id="chk_box24">
											<input type="hidden" name="BATHROOM" id="chk24" value="N">
											수건
										</label>
									</li>
									<li>
										<label id="test" for="chk_box25">
											<input type="checkbox" id="chk_box25">
											<input type="hidden" name="BATHROOM" id="chk25" value="N">
											비누
										</label>
									</li>
									<li>
										<label id="test" for="chk_box26">
											<input type="checkbox" id="chk_box26">
											<input type="hidden" name="BATHROOM" id="chk26" value="N">
											치약
										</label>
									</li>
									<li>
										<label id="test" for="chk_box27">
											<input type="checkbox" id="chk_box27">
											<input type="hidden" name="BATHROOM" id="chk27" value="N">
											샴푸
										</label>
									</li>
									<li>
										<label id="test" for="chk_box28">
											<input type="checkbox" id="chk_box28">
											<input type="hidden" name="BATHROOM" id="chk28" value="N">
											린스
										</label>
									</li>
									<li>
										<label id="test" for="chk_box29">
											<input type="checkbox" id="chk_box29">
											<input type="hidden" name="BATHROOM" id="chk29" value="N">
											바디샴푸
										</label>
									</li>
									<li>
										<label id="test" for="chk_box30">
											<input type="checkbox" id="chk_box30">
											<input type="hidden" name="BATHROOM" id="chk30" value="N">
											1회용 칫솔
										</label>
									</li>
								</ul>
							</li>
							<li>
								<h5>기타서비스</h5>
								<ul class="chk_list">
									<li>
										<label id="test" for="chk_box31">
											<input type="checkbox" id="chk_box31">
											<input type="hidden" name="ETC" id="chk31" value="N">
											공항픽업
										</label>
									</li>
									<li>
										<label id="test" for="chk_box32">
											<input type="checkbox" id="chk_box32">
											<input type="hidden" name="ETC" id="chk32" value="N">
											짐 보관 서비스
										</label>
									</li>
									<li>
										<label id="test" for="chk_box33">
											<input type="checkbox" id="chk_box33">
											<input type="hidden" name="ETC" id="chk33" value="N">
											자전거 대여
										</label>
									</li>
									<li>
										<label id="test" for="chk_box34">
											<input type="checkbox" id="chk_box34">
											<input type="hidden" name="ETC" id="chk34" value="N">
											24시간 출입자유
										</label>
									</li>
									<li>
										<label id="test" for="chk_box35">
											<input type="checkbox" id="chk_box35">
											<input type="hidden" name="ETC" id="chk35" value="N">
											여행투어 제공
										</label>
									</li>
									<li>
										<label id="test" for="chk_box36">
											<input type="checkbox" id="chk_box36">
											<input type="hidden" name="ETC" id="chk36" value="N">
											신용카드 결제가능
										</label>
									</li>
									<li>
										<label id="test" for="chk_box37">
											<input type="checkbox" id="chk_box37">
											<input type="hidden" name="ETC" id="chk37" value="N">
											세탁
										</label>
									</li>
									<li>
										<label id="test" for="chk_box38">
											<input type="checkbox" id="chk_box38">
											<input type="hidden" name="ETC" id="chk38" value="N">
											키보증금
										</label>
									</li>
									<li>
										<label id="test" for="chk_box39">
											<input type="checkbox" id="chk_box39">
											<input type="hidden" name="ETC" id="chk39" value="N">
											흡연가능
										</label>
									</li>
									<li>
										<label id="test" for="chk_box40">
											<input type="checkbox" id="chk_box40">
											<input type="hidden" name="ETC" id="chk40" value="N">
											외국인 숙박불가
										</label>
									</li>
									<li>
										<label id="test" for="chk_box41">
											<input type="checkbox" id="chk_box41">
											<input type="hidden" name="ETC" id="chk41" value="N">
											유아 숙박불가
										</label>
									</li>								
									<li>
										<label id="test" for="chk_box42">
											<input type="checkbox" id="chk_box42">
											<input type="hidden" name="ETC" id="chk42" value="N">
											어린이 숙박불가
										</label>
									</li>
									<li>
										<label id="test" for="chk_box43">
											<input type="checkbox" id="chk_box43">
											<input type="hidden" name="ETC" id="chk43" value="N">
											애완동물 동반가능
										</label>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
    			
    			<div class="text-center m-t-40">
					<button class="btn bg_blu btn-lg nsdow" onclick="return form_validation();">등록</button>
					<button class="btn bg_dark_grey btn-lg m-l-5 nsdow">취소</button>
				</div>
	    	</form>
    	</div>
	</div>
</div>