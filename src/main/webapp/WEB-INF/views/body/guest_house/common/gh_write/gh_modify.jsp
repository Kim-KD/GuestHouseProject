<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="container_wrap">
	<div id="contents" class="container">
    	<div class="">
    		<div class="tit-wrap">
    			<h2 class="tit">게스트하우스</h2>
	    		<h3 class="tit-split">정보 수정</h3>
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
    						<th class="table-col table-col-tit">숙소 소개&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col" colspan="3">
    							<textarea class="input-wrap" rows="10" style="font-size:12px; padding: 5px;" placeholder="숙소를 소개해주세요."></textarea>
    						</td>
    					</tr>
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">체크인&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    						
    						<th class="table-col table-col-tit">체크아웃&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    					</tr>
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">소등시간&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
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
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">객실 사진&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-group input-group__id">
    								<span class="input-wrap">
		    							<input type="text" readonly>
    								</span>
    								<button class="info-manage__btn-id">파일 선택</button>
    							</span>
    						</td>
    						<th class="table-col table-col-tit"></th>
    						<td class="table-col">
    						</td>
    					</tr>
    					
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
    					
    					<!--  -->
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
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">객실 사진&nbsp;&nbsp;<b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-group input-group__id">
    								<span class="input-wrap">
		    							<input type="text" readonly>
    								</span>
    								<button class="info-manage__btn-id">파일 선택</button>
    							</span>
    						</td>
    						<th class="table-col table-col-tit"></th>
    						<td class="table-col">
    						</td>
    					</tr>
    					<!--  -->
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
										<label>화장실</label>
									</li>
									<li>
										<input type="checkbox">
										<label>샤워실</label>
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
										<input type="checkbox">
										<label>1회용 칫솔</label>
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