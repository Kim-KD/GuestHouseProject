<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="resources/data-components/user/sign_up.js"></script>

<div id="container_wrap">
	<div id="contents" class="container">
    	<div class="">
    		<div class="tit-wrap">
    			<h2 class="tit">회원가입</h2>
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
    						<th class="table-col table-col-tit">회사명  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    						<th class="table-col table-col-tit">사업자등록번호  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    					</tr>
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">아이디  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-group input-group__id">
    								<span class="input-wrap">
		    							<input type="text">
    								</span>
    								<button class="info-manage__btn-id">중복확인</button>
    							</span>
    						</td>
    						
    						
    						<th class="table-col table-col-tit">대표자명  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    					</tr>
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">비밀번호  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="password">
    							</span>
    						</td>
    						<th class="table-col table-col-tit">비밀번호 확인  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="password">
    							</span>
    						</td>
    					</tr>
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">이메일  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    						<th class="table-col table-col-tit">성별  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    					</tr>
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">핸드폰 번호  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    						<th class="table-col table-col-tit">전화번호</th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    					</tr>
    				</tbody>
    			</table>
    			
    			<div class="tit-wrap">
    				<h4 class="sub-tit">입금계좌 정보 (예약 취소/환불시 입금되는 계좌)</h4>
    			</div>
    			
    			<table class="table-list">
    				<tbody class="table-body">
    					<tr class="table-row">
    						<th class="table-col table-col-tit">은행명  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    						<th class="table-col table-col-tit">계좌번호  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    					</tr>
    					
    					<tr class="table-row">
    						<th class="table-col table-col-tit">예금주  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
    							</span>
    						</td>
    					</tr>
    				</tbody>
    			</table>
    			
    			<div class="text-center m-t-40">
					<button class="btn bg_blu btn-lg nsdow">회원가입</button>
					<button class="btn bg_dark_grey btn-lg m-l-5 nsdow">취소</button>
				</div>
	    	</form>
    	</div>
    	
    </div>
</div>