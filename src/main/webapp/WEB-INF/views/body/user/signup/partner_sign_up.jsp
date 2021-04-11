<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="resources/data-components/sign_up/partner_sign_up.js"></script>

<div id="container_wrap">
	<div id="contents" class="container">
   		<div class="tit-wrap">
   			<h2 class="tit">회원가입</h2>
    		<h3 class="tit-split">정보 입력</h3>
   		</div>
   		
   		<form action="partner_join" method="post">
   			<input type="hidden" name="STATUS" value="P">
   			<input type="hidden" id="id_validation" value="0"/>
			<input type="hidden" id="partner_validation" value="0"/>
   			<div class="tit-wrap">
   				<h4 class="sub-tit">기본 정보</h4>
   				<div class="tit-right">
    				<p class="p-txt"><b class="color_red">*</b>필수입력표시는 필수 입력 정보입니다. 반드시 입력해주세요.</p>
   				</div>
   			</div>
   			
   			<table class="table-list">
   				<tbody class="table-body">
   					<tr class="table-row">
   						<th class="table-col table-col-tit">파트너명  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<span class="input-group input-group__id">
   								<span class="input-wrap">
	    							<input type="text" name="PARTNER_NAME" id="partner_name" placeholder="회사명, 숙소명등 대표되는 이름을 작성해 주세요.">
   								</span>
   								<button type="button" class="info-manage__btn-id" onclick="return partnercheckbtn()">중복확인</button>
   							</span>
   							<p id="valid_partner_name" class="warning_msg"></p>
   						</td>
   						<th class="table-col table-col-tit">사업자등록번호  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<span class="input-wrap">
    							<input type="number" name="PARTNER_NUM" id="partner_num">
   							</span>
   							<p id="valid_partner_num" class="warning_msg"></p>
   						</td>
   					</tr>
   					
   					<tr class="table-row">
   						<th class="table-col table-col-tit">아이디  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<span class="input-group input-group__id">
   								<span class="input-wrap">
	    							<input type="text" name="USER_ID" id="user_id">
   								</span>
   								<button type="button" class="info-manage__btn-id" onclick="return idcheckbtn()">중복확인</button>
   							</span>
   							<p id="valid_id" class="warning_msg"></p>
   						</td>
   						
   						
   						<th class="table-col table-col-tit">대표자명  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<span class="input-wrap">
    							<input type="text" name="NAME" id="name">
   							</span>
   							<p id="valid_name" class="warning_msg"></p>
   						</td>
   					</tr>
   					
   					<tr class="table-row">
   						<th class="table-col table-col-tit">비밀번호  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<span class="input-wrap">
    							<input type="password" name="USER_PW" id="user_pw" placeholder="특수문자 포함 8자이상 16자 이하로 입력해 주세요.">
   							</span>
   							<p id="valid_password" class="warning_msg"></p>
   						</td>
   						<th class="table-col table-col-tit">비밀번호 확인  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<span class="input-wrap">
    							<input type="password" id="user_pwchk" placeholder="특수문자 포함 8자이상 16자 이하로 입력해 주세요.">
   							</span>
   							<p id="valid_password2" class="warning_msg"></p>
   						</td>
   					</tr>
   					
   					<tr class="table-row">
   						<th class="table-col table-col-tit">이메일  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<span class="input-wrap">
    							<input type="text" name="EMAIL" id="email">
   							</span>
   							<p id="valid_email" class="warning_msg"></p>
   						</td>
   						<th class="table-col table-col-tit">성별  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<select class="form-control-select2" name="GENDER" id="gender">
   								<option value="">선택</option>
								<option value="남자">남자</option>
								<option value="여자">여자</option>
   							</select>
   							<p id="valid_gender" class="warning_msg"></p>
   						</td>
   					</tr>
   					
   					<tr class="table-row">
   						<th class="table-col table-col-tit">핸드폰 번호  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<span class="input-wrap">
    							<input type="number" name="PHONE_NUM" id="phone_num" placeholder="예) 01012345678">
   							</span>
   							<p id="valid_phone_num" class="warning_msg"></p>
   						</td>
   						<th class="table-col table-col-tit">전화번호</th>
   						<td class="table-col">
   							<span class="input-wrap">
    							<input type="number" name="TEL_NUM" id="tel_num" placeholder="예) 021234567">
   							</span>
   							<p id="valid_tel_num" class="warning_msg"></p>
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
    							<input type="text" name="BANK" id="bank">
   							</span>
   							<p id="valid_bank" class="warning_msg"></p>
   						</td>
   						<th class="table-col table-col-tit">계좌번호  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<span class="input-wrap">
    							<input type="number" name="ACCOUNT_NUM" id="account_num">
   							</span>
   							<p id="valid_account_num" class="warning_msg"></p>
   						</td>
   					</tr>
   					
   					<tr class="table-row">
   						<th class="table-col table-col-tit">예금주  <b class="color_red">*</b></th>
   						<td class="table-col">
   							<span class="input-wrap">
    							<input type="text" name="ACCOUNT_HOLDER" id="account_holder">
   							</span>
   							<p id="valid_account_holder" class="warning_msg"></p>
   						</td>
   					</tr>
   				</tbody>
   			</table>
   			
   			<div class="text-center m-t-40">
				<button class="btn bg_blu btn-lg nsdow" onclick="return form_validation();">회원가입</button>
				<button class="btn bg_dark_grey btn-lg m-l-5 nsdow">취소</button>
			</div>
    	</form>
    </div>
</div>