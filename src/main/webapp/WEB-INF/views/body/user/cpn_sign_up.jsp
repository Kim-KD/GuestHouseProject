<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="resources/data-components/user/sign_up.js"></script>

<style>
	#container { background-color: #edf0f5; }
	
	.join {
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
		font-weight: 300;
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
	
</style>

<div id="container">
	<div id="contents" class="container">
    	<div class="join">
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
	    							<input type="text">
    							</span>
    						</td>
    						<th class="table-col table-col-tit">비밀번호 확인  <b class="color_red">*</b></th>
    						<td class="table-col">
    							<span class="input-wrap">
	    							<input type="text">
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
    			
    			<div class="text-center m-t-25">
					<button class="btn bg_blu btn-lg">회원가입</button>
					<button class="btn bg_dark_grey btn-lg ml5">취소</button>
				</div>
	    	</form>
    	</div>
    	
    </div>
</div>