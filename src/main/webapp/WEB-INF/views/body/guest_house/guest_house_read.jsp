<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>
<script src="resources/data-components/guest_house/guest_house_read.js"></script>

<style>
	.property-header {
		text-align: center;
	}
</style>

<script>
function roomData(gno, room, price) {
	var html = "";
	
	$("#gno_data").remove();
	$("#room_data").remove();
	$("#pay_data").remove();
	html += "<input type='hidden' id='gno_data' name='gno' value='" + gno + "'>";
	html += "<input type='hidden' id='room_data' name='room' value='" + room + "'>";
	html += "<input type='hidden' id='pay_data' name='pay' value='" + price + "'>";
	$(html).appendTo("#formData");
}
</script>

<!-- Single Property Section end -->
<section class="single-property-section spad">
	<div class="container">
		<input type="hidden" id="views" name="views" value="${gh_details.views}">
		<div class="row">
			<div class="col-lg-7">
				<div class="single-property">
					<div class="sp-image">
						<img src="resources/assets/img/property/big.jpg" style="width: 600px;">
					</div>
					
					<form class="row" action="reserve_page" method="post" id="formData">
						<input type="hidden" id="user_id" name="user_id" value="${user_id}">
						<input type="hidden" id="no" name="no" value="${gh_details.no}">
						<input type="hidden" id="name" name="name" value="${gh_details.name}">
						
						<div class="col-lg-10">
							<input type="text" id="check_in" name="check_in" readonly/> ~ 
							<input type="text" id="check_out" name="check_out" readonly/>
						</div>
						<div class="col-lg-2">
							<select style="width: 10px;" id="personel" name="personel">
								<option value="1" selected>1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
							</select>
						</div>
						
						<div class="col-lg-12">
						<div class="property-info-bar" style="padding-top:30px; padding-bottom:30px;">
							<div class="row" style="border: solid 1px #eeeeee;">
								<div class="col-lg-4 pi-meta" onclick="return room_info(this)" id="room"><h4>도미토리룸</h4></div>
								<div class="col-lg-4 pi-meta" onclick="return room_info(this)" id="room"><h4>더블룸</h4></div>
								<div class="col-lg-4 pi-meta" onclick="return room_info(this)" id="room"><h4>트윈룸</h4></div>
							</div>
						</div>
						</div>
						
						<div class="col-lg-2">
							<div class="property-header" id="hroom">
								<h4>방</h4>
							</div>
						</div>
						<div class="col-lg-2">
							<div class="property-header" id="hgender">
								<h4>남 / 여</h4>
							</div>
						</div>
						<div class="col-lg-2">
							<div class="property-header" id="hroom_people">
								<h4>인원(?/?)</h4>
							</div>
						</div>
						<div class="col-lg-2">
							<div class="property-header" id="hprice">
								<h4>가격</h4>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="property-header" id="hprice">
								<h4>예약</h4>
							</div>
						</div>
						
						<div class="row" id="roomList">
							
						</div>
					<hr>
					</form>
					
					<script>
						$(function() {
							$("#check_in, #check_out").datepicker({
								language : "ko",
								format : "yyyy/mm/dd",
								autoclose : true,
								startDate : '0d',
								todayHighlight : true
							});
						});
					</script>
					
					<hr>
					<div class="property-text">
						<h4 style="position: absolute;">${gh_details.title}</h4>
						<div style="text-align: right;">
							<a class="btn px-4 btn-success text-white" style="position: relative" onclick="border_like()">추천 ${gh_details.likes}</a>
							조회수 ${gh_details.views}
						</div>
						<p>${gh_details.content}</p>
						<c:if test="${gh_details.user_id == sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}">
							<a href="guest_house_modify?no=${gh_details.no}" class="btn px-4 btn-success text-white">수정</a>&nbsp;
							<a class="btn px-4 btn-danger text-white" onclick="border_Delete()">삭제</a>
						</c:if>
					</div>
					<hr>
					<div class="property-feature">
						<div class="row">
							<div class="col-6 col-sm-4 col-md-3 col-lg-2">
								<div class="pf-box">
									<h6>입실 시간</h6>
									<p>${gh_details.check_in}</p>
								</div>
							</div>
							<div class="col-6 col-sm-4 col-md-3 col-lg-2">
								<div class="pf-box">
									<h6>퇴실 시간</h6>
									<p>${gh_details.check_out}</p>
								</div>
							</div>
							<div class="col-6 col-sm-4 col-md-3 col-lg-2">
								<div class="pf-box">
									<h6>소등 시간</h6>
									<p>${gh_details.off_time}</p>
								</div>
							</div>
							<div class="col-6 col-sm-4 col-md-3 col-lg-2">
								<div class="pf-box">
									<h6>파티 메뉴</h6>
									<p>${gh_details.party_menu}</p>
								</div>
							</div>
							<div class="col-6 col-sm-4 col-md-3 col-lg-2">
								<div class="pf-box">
									<h6>파티 시간</h6>
									<p>${gh_details.party_time}</p>
								</div>
							</div>
							<div class="col-6 col-sm-4 col-md-3 col-lg-2">
								<div class="pf-box">
									<h6>술</h6>
									<p>${gh_details.alcohol}</p>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-6 col-sm-4 col-md-3 col-lg-3">
								<div class="pf-box">
									<h6>참여 인원(남)</h6>
									<p>${gh_details.join_man}명</p>
								</div>
							</div>
							<div class="col-6 col-sm-4 col-md-3 col-lg-3">
								<div class="pf-box">
									<h6>참여 인원(여)</h6>
									<p>${gh_details.join_girl}명</p>
								</div>
							</div>
							<div class="col-6 col-sm-4 col-md-3 col-lg-2">
								<div class="pf-box">
									<h6>주차장</h6>
									<p>${gh_details.parking}</p>
								</div>
							</div>
							
							<div class="col-6 col-sm-4 col-md-3 col-lg-2">
								<div class="pf-box">
									<h6>조식</h6>
									<p>${gh_details.morning}</p>
								</div>
							</div>
							<div class="col-6 col-sm-4 col-md-3 col-lg-2">
								<div class="pf-box">
									<h6>Wi-Fi</h6>
									<p>${gh_details.wifi}</p>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-6 col-lg-3">
								<div class="pf-box">
									<h6>반려동물 출입여부</h6>
									<p>${gh_details.pet}</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 댓글 [s] -->
				<div class="loan-calculator">
					<h4>후기</h4>
					<div class="row" id="commentList">
						
					</div>
					<div class="row">
						<div class="col-md-12">
							<textarea name="content" id="content" placeholder="후기를 작성해주세요~"></textarea>
						</div>
						<div class="col-md-12">
							<div class="text-left text-sm-center">
								<button class="site-btn1 sb-big1" onclick="return comment_Add()">등록</button>
							</div>
						</div>
					</div>
				</div>
				<!-- 댓글 [e] -->
			</div>
			
			<!-- side [s] -->
			<div class="col-lg-5 col-md-8 sidebar">
				<div class="agent-widget">
					<img src="resources/assets/gh_img/unnamed.png" alt="">
					<div class="aw-text">
						<h4>${gh_details.user_name}</h4>
						<c:if test="${gh_details.name == null}">
							<h6>게스트하우스 이름 없음</h6>
						</c:if>
						<c:if test="${gh_details.name != null}">
							<h6>${gh_details.name}</h6>
						</c:if>
						<p>연락처 : ${gh_details.user_radio}</p>
						<p>이메일 : ${gh_details.user_email}</p>
						<p>주소 : ${gh_details.address}</p>
						<a href="#" class="readmore-btn">블로그 or 카페 or SNS 링크</a>
					</div>
				</div>
				
				<!-- goggleMap[s] -->
				<div class="map-widget">
					<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe>
				</div>
				<!-- goggleMap[e] -->
				
			</div>
			<!-- side [e] -->
		</div>
	</div>
</section>

<script id="roomListTemplate" type="text/handlebars-template">
{{#each rooms}}
	<div class="col-lg-2">
		<div class="property-header">
			<h4>{{room}}</h4>
		</div>
	</div>
	<div class="col-lg-2">
		<div class="property-header">
			<h4>{{genderTitle}}</h4>
		</div>
	</div>
	<div class="col-lg-2">
		<div class="property-header">
			<h4>{{room_people}}</h4>
		</div>
	</div>
	<div class="col-lg-2">
		<div class="property-header">
			<h4>{{price}}</h4>
		</div>
	</div>
	<div class="col-lg-4">
		<div class="property-header">
			<button class="btn px-4 btn-primary text-white" onclick="roomData({{gno}}, '{{room}}', {{price}})">예약하기</button>
		</div>
	</div><br><br>
{{/each}}
</script>

<script id="gh_view_comment" type="text/handlebars-template">
{{#each commentList}}
<div class="col-md-12">
	<div class="loan-cal-result">
		<h6 style="position: absolute;">작성자 : {{user_id}}</h6>
		{{#if (isEqual user_id '${user_id}')}}
			<div style="text-align: right" id="commentbtn{{re_no}}">
				<a class="btn px-4 btn-success text-white" onclick="comment_Modify_Form({{re_no}}, {{content}})">수정</a>&nbsp;
				<a class="btn px-4 btn-danger text-white" onclick="comment_Delete({{re_no}})">삭제</a>
			</div>
		{{/if}}
		<br><br>
		<h6 id="comment{{re_no}}">{{content}}</h6>
	</div>
</div>
{{/each}}
</script>