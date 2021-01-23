<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#container { 
		background-color: #edf0f5;
		padding: 60px 0 50px;
		min-height: 748px;
	}
		
	.tit {
		color: #8c929c;
		font-size: 30px;
		font-weight: 500;
		line-height: 1.2em;
		margin: 37px 0 16px 0;
		float: left;
	}
	
	.tit-split {
		float: left;
		font-size: 24px;
		color: #8c929c;
		position: relative;
		margin: 47px 0 0 14px;
		padding-left: 14px;
	}
	
	.tit-split:before {
		content: '';
		display: inline-block;
		position: absolute;
		left: 0;
		top: -2px;
		bottom: -3px;
		width: 1px;
		background-color: #b7c8d2;
	}
	
	.tit-wrap:after {
		content: '';
		clear: both;
		display: block;
	}
	
	.tit-wrap { position: relative; }
	.tit-wrap:first-child .tit { margin-top: 0; }
	.tit-wrap:first-child .tit-split { margin-top: 5px; }
	.tit-wrap .tit { margin-bottom: 10px; }
	
	.sub-tit {
		color: #8c929c;
		font-size: 15px;
		font-weight: 500;
		margin: 40px 0 15px 10px;
		float: left;
	}
	
	.tit-right {
		position: absolute;
		right: 0;
		bottom: 7px;
	}
	
	.p-txt {
		color: #8c929c;
		font-size: 13px;
		font-weight: 300;
	}
	
	.table-list {
	    width: 100%;
		padding: 0 0 0 0;
		background-color: #fff;
		box-shadow: 2px 2px 2px rgba(220, 225, 232, 0.28);
		overflow: hidden;
	}
	
	.table-body { background-color: #fff; }
	.table-row:not(:last-child) { border-bottom: 1px solid #eee; }
	.table-row { width: 100%; }
	
	.table-col {
		vertical-align: middle;
		color: #333;
		padding: 15px 20px 15px 20px;
		height: 70px;
		width: 432px;
	}

	.table-col-tit {
		font-size: 13px;
		color: #888;
		width: 123px;
		letter-spacing: -0.15em;
		padding: 15px 10px 15px 20px;
		vertical-align: middle;
	}
	
	.input-wrap {
		width: 100%;
		border: #ddd solid 1px;
		border-radius: 3px;
		display: inline-block;
		vertical-align: middle;
		position: relative;
		background-color: #fafafa;
	}
	
		
	.input-wrap > input {
		border: 0;
		background-color: transparent;
		box-shadow: none;
		color: #333;
		font-size: 15px;
		font-weight: 400;
		box-sizing: border-box;
		display: block;
		width: 100%;
		padding: 0 13px;
    }
	
	.input-wrap input[type=text], 
	.input-wrap input[type=password] {
		height: 38px;
	}
	
	
	.input-group__id {
		display: table;
		border-spacing: 5px 0;
		width: calc(100% + 10px);
	}

	.info-manage__btn-id {
		width: 92px;
		text-align: center;
		background-color: #8c929c;
		line-height: 1em;
		font-size: 13px;
		font-weight: 400;
		padding: 13px 12px;
		color: #fff;
		letter-spacing: -0.06em;
		margin-left: 5px;
		border-radius: 3px;
	}
	
	.input-group__id > .input-wrap { width: 295px; }
	.color_red { color: #e93d3d; }
	.bg_dark_grey { background-color: #484848; color: white; }
	.bg_blu { background-color: #349eff; color: white;}
	.nsdow:focus { box-shadow: none; }
	
	/*  */
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
	
	.room_service_list > li > .chk_list > .disabled {
		text-decoration: line-through;
	   	color: #e0e0e0;
	}
	
	.chk_list > .disabled > i {
		color: #e0e0e0;
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
	
	.chk_list > li > label { margin-bottom: 0; }
	
	/* input[type="checkbox"] { display:none; } */
	
</style>

<div id="container">
	<div id="contents" class="container">
    	<div class="">
    		<div class="tit-wrap">
    			<h2 class="tit">게스트하우스</h2>
	    		<h3 class="tit-split">정보 입력</h3>
    		</div>
    		
    		<form>
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
	    							<input type="text">
    							</span>
    						</td>
    						<th class="table-col table-col-tit"></th>
    						<td class="table-col">
    						</td>
    					</tr>
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">지역주소&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-group input-group__id">
    								<span class="input-wrap">
		    							<input type="text">
    								</span>
    								<button class="info-manage__btn-id">주소 찾기</button>
    							</span>
    						</td>
    						
    						
    						<th class="table-col table-col-tit">상세주소&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    					</tr>
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">숙소 소개</th>
    						<td class="table-col" colspan="3">
    							<textarea class="input-wrap" style="height:200px; font-size:12px; padding: 5px;" placeholder="숙소를 소개해주세요."></textarea>
    						</td>
    					</tr>
    				</tbody>
    			</table>
    			
    			<div class="tit-wrap">
    				<h4 class="sub-tit">객실 정보</h4>
    			</div>
    			
    			<table class="table-list">
    				<tbody class="table-body">
    					<tr class="table-row">
    						<th class="table-col table-col-tit">객실&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    						<th class="table-col table-col-tit">1박 단가&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    					</tr>
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">남&nbsp;&nbsp;/&nbsp;&nbsp;여&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    						<th class="table-col table-col-tit">정원&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
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
										<input type="checkbox">
										<label>Wifi</label>
									</li>
									<li>
										<input type="checkbox">
										<label>헤어드라이기</label>
									</li>
									<li>
										<input type="checkbox">
										<label>전자렌지</label>
									</li>
									<li>
										<input type="checkbox">
										<label>커피포트</label>
									</li>
									<li>
										<input type="checkbox">
										<label>주차가능 - 숙소 앞 길거리 주차(무료)</label>
									</li>
									<li>
										<input type="checkbox">
										<label>게스트 부엌</label>
									</li>
									<li>
										<input type="checkbox">
										<label>토스트기</label>
									</li>
									<li>
										<input type="checkbox">
										<label>TV</label>
									</li>
									<li>
										<input type="checkbox">
										<label>엘리베이터</label>
									</li>
									<li>
										<input type="checkbox">
										<label>다리미</label>
									</li>
									<li>
										<input type="checkbox">
										<label>휴게실</label>
									</li>
									<li>
										<input type="checkbox">
										<label>공용PC</label>
									</li>
									<li>
										<input type="checkbox">
										<label>프린터 사용</label>
									</li>
									<li>
										<input type="checkbox">
										<label>정원</label>
									</li>
								</ul>
							</li>
							<li>
								<ul class="chk_list m-t-45">
									<li>
										<input type="checkbox">
										<label>바베큐시설</label>
									</li>
									<li>
										<input type="checkbox">
										<label>수영장</label>
									</li>
									<li>
										<input type="checkbox">
										<label>레스토랑</label>
									</li>
									<li>
										<input type="checkbox">
										<label>카페</label>
									</li>
									<li>
										<input type="checkbox">
										<label>헬스시설</label>
									</li>
									<li>
										<input type="checkbox">
										<label>팩스 사용</label>
									</li>
									<li>
										<input type="checkbox">
										<label>스파시설</label>
									</li>
								</ul>
							</li>
							<li>
								<h5>욕실</h5>
								<ul class="chk_list">
									<li>
										<input type="checkbox">
										<label>화장실(6개)</label>
									</li>
									<li>
										<input type="checkbox"><label>샤워실(4개)</label>
									</li>
									<li>
										<input type="checkbox">
										<label>수건</label>
									</li>
									<li>
										<input type="checkbox">
										<label>비누</label>
									</li>
									<li>
										<input type="checkbox">
										<label>치약</label>
									</li>
									<li>
										<input type="checkbox">
										<label>샴푸</label>
									</li>
									<li>
										<input type="checkbox">
										<label>린스</label>
									</li>
									<li>
										<input type="checkbox">
										<label>바디샴푸</label>
									</li>
									<li>
									<input type="checkbox"><label>1회용 칫솔</label>
									</li>
								</ul>
							</li>
							<li>
								<h5>기타서비스</h5>
								<ul class="chk_list">
									<li>
										<input type="checkbox">
										<label>공항픽업</label>
									</li>
									<li>
										<input type="checkbox">
										<label>짐 보관 서비스</label>
									</li>
									<li>
										<input type="checkbox">
										<label>자전거 대여</label>
									</li>
									<li>
										<input type="checkbox">
										<label>24시간 출입자유</label>
									</li>
									<li>
										<input type="checkbox">
										<label>여행투어 제공</label>
									</li>
									<li>
										<input type="checkbox">
										<label>신용카드 결제가능</label>
									</li>
									<li>
										<input type="checkbox">
										<label>세탁</label>
									</li>
									<li>
										<input type="checkbox">
										<label>키보증금</label>
									</li>
									<li>
										<input type="checkbox">
										<label>흡연가능</label>
									</li>
									<li>
										<input type="checkbox">
										<label>외국인 숙박불가</label>
									</li>
									<li>
										<input type="checkbox">
										<label>유아 숙박불가</label>
									</li>								
									<li>
										<input type="checkbox">
										<label>어린이 숙박불가</label>
									</li>
									<li>
										<input type="checkbox">
										<label>애완동물 동반가능</label>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
    			
    			<div class="text-center m-t-40">
					<button class="btn bg_blu btn-lg nsdow">등록</button>
					<button class="btn bg_dark_grey btn-lg m-l-5 nsdow">취소</button>
				</div>
	    	</form>
    	</div>
    </div>
</div>