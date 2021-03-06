<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="resources/data-components/my_modify/my_modify.js"></script>

<div class="w1100">
	<div class="sub_hd">
		<h2>정보 수정</h2>
	</div>
	
	<c:choose>
		<c:when test="${userData.STATUS eq 'U'}">
		<ul class="basic_step">
			<li>
				<a href="my_page1">진행중인 예약</a>
			</li>
			<li>
				<a href="my_page2">지난 예약</a>
			</li>
			<li class="active">
				<a href="my_info_modify_page">정보 수정</a>
			</li>
		</ul>
		
		<div class="term_hd m-b-0i">
			<h3 class="sub_title">정보 수정</h3>
		</div>
		</c:when>
		
		<c:when test="${userData.STATUS eq 'P'}">
		<ul class="basic_step">
			<li>
				<a href="my_page1">내가 쓴 글 보기</a>
			</li>
			<li>
				<a href="my_page2">예약 내역</a>
			</li>
			<li class="active">
				<a href="my_info_modify_page">정보 수정</a>
			</li>
		</ul>
		
		<div class="term_hd m-b-0i">
			<h3 class="sub_title">정보 수정</h3>
		</div>
		</c:when>
	</c:choose>
	
	<form class="join_frm" action="info_update" method="post">
		<input type="hidden" id="partner_validation" value="1"/>
		<input type="hidden" id="nickname_validation" value="1"/>
		<input type="hidden" name="USER_ID" value="${userData.USER_ID}">
		<input type="hidden" name ="STATUS" id="status" value="${userData.STATUS}">
		<input type="hidden" id="nickname2" value="${userData.NICKNAME}">
		<input type="hidden" id="partner_name2" value="${userData.PARTNER_NAME}">
		
		<table class="tb_frm">
			<colgroup>
				<col style="width:155px"><col>
			</colgroup>
			
			<tbody>
				<tr>
					<th>
						아이디 <b class="color_red">*</b>
					</th>
					<td>
						<p class="m-r-6 m-l-6 p-t-7 p-b-7">${userData.USER_ID}</p>
					</td>
				</tr>
				
				<tr>
					<th>
						비밀번호<b class="color_red">*</b>
					</th>
					<td>
						<input type="password" name="USER_PW" id="user_pw" class="form-control-input wid-lg m-b-10" maxlength="32" placeholder="신규 비밀번호">
						<p id="valid_password" class="form-control-p">특수문자 포함 8자이상 16자 이하로 입력해 주세요.</p><br>
						<input type="password" id="user_pwchk" class="form-control-input wid-lg" maxlength="32" placeholder="비밀번호 확인">
						<p id="valid_password2" class="form-control-p"></p>
					</td>
				</tr>
			</tbody>
		</table>
		
		<table class="tb_frm m-t-25">
			<colgroup>
				<col style="width:155px"><col>
			</colgroup>
			
			<tbody>
				<c:choose>
					<c:when test="${userData.STATUS eq 'U'}">
					<tr>
						<th>
							닉네임 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" name="NICKNAME" id="nickname" class="form-control-input wid-mid" value="${userData.NICKNAME}">
							<button type="button" class="info-manage__btn-id" onclick="return nickcheckbtn()">중복확인</button>
							<p id="valid_nickname" class="form-control-p">특수문자 없이 입력해 주세요</p>
						</td>
					</tr>
					</c:when>
					
					<c:when test="${userData.STATUS eq 'P'}">
					<tr>
						<th>
							파트너명 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" name="PARTNER_NAME" id="partner_name" class="form-control-input wid-mid" value="${userData.PARTNER_NAME}">
							<button type="button" class="info-manage__btn-id" onclick="return partnercheckbtn()">중복확인</button>
							<p id="valid_partner_name" class="form-control-p">특수문자 없이 입력해 주세요</p>
						</td>
					</tr>
					<tr>
						<th>
							사업자 번호 <b class="color_red">*</b>
						</th>
						<td>
							<input type="number" name="PARTNER_NUM" id="partner_num" class="form-control-input wid-lg" value="${userData.PARTNER_NUM}">
							<p id="valid_partner_num" class="form-control-p"></p>
						</td>
					</tr>
					</c:when>
				</c:choose>

				<tr>
					<th>
						이름 <b class="color_red">*</b>
					</th>
					<td>
						<input type="text" type="text" name="NAME" id="name" class="form-control-input wid-lg" value="${userData.NAME}">
						<p id="valid_name" class="form-control-p">특수문자 없이 입력해 주세요.</p>
					</td>
				</tr>
				
				<tr>
					<th>
						핸드폰 번호 <b class="color_red">*</b>
					</th>
					<td>
						<input type="number" name="PHONE_NUM" id="phone_num" class="form-control-input wid-lg" placeholder="예)01012345678" value="${userData.PHONE_NUM}">
						<p id="valid_phone_num" class="form-control-p"></p>
					</td>
				</tr>
				
				<c:if test="${userData.STATUS == 'P'}">
					<tr>
						<th>
							전화번호
						</th>
						<td>
							<input type="number" name="TEL_NUM" id="tel_num" class="form-control-input wid-lg" placeholder="예)01012345678" value="${userData.TEL_NUM}">
							<p id="valid_tel_num" class="form-control-p"></p>
						</td>
					</tr>
				</c:if>
				
				<tr>
					<th>
						이메일 <b class="color_red">*</b>
					</th>
					<td>
						<input type="text" name="EMAIL" id="email" class="form-control-input wid-lg" value="${userData.EMAIL}">
						<p id="valid_email" class="form-control-p"></p>
					</td>
				</tr>
				
				<tr>
					<th>
						성별 <b class="color_red">*</b>
					</th>
					<td>
						<select name="GENDER" id="gender" class="form-control-select wid-mid">
							<option value="">선택</option>
							<option value="남자">남자</option>
							<option value="여자">여자</option>
						</select>
						<p id="valid_gender" class="form-control-p"></p>
					</td>
				</tr>
				
				<c:choose>
					<c:when test="${userData.STATUS eq 'U'}">
					<tr>
						<th>
							생년월일 <b class="color_red">*</b>
						</th>
						<td>
							<input type="number" name="BIRTH" id="birth" class="form-control-input wid-lg" placeholder="19930519" value="${userData.BIRTH}">
							<p id="valid_birth" class="form-control-p"></p>
						</td>
					</tr>
					
					<tr>
						<th>
							직업 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" name="USER_JOB" id="user_job" class="form-control-input wid-mid" value="${userData.USER_JOB}">
							<p id="valid_user_job" class="form-control-p"></p>
						</td>
					</tr>
					</c:when>
					
					<c:when test="${userData.STATUS eq 'P'}">
					<tr>
						<th>
							은행명 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" name="BANK" id="bank" class="form-control-input wid-mid" value="${userData.BANK}">
							<p id="valid_bank" class="form-control-p"></p>
						</td>
					</tr>
					<tr>
						<th>
							계좌번호 <b class="color_red">*</b>
						</th>
						<td>
							<input type="number" name="ACCOUNT_NUM" id="account_num" class="form-control-input wid-mid" value="${userData.ACCOUNT_NUM}">
							<p id="valid_account_num" class="form-control-p"></p>
						</td>
					</tr>
					<tr>
						<th>
							예금주 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" name="ACCOUNT_HOLDER" id="account_holder" class="form-control-input wid-mid" value="${userData.ACCOUNT_HOLDER}">
							<p id="valid_account_holder" class="form-control-p"></p>
						</td>
					</tr>
					</c:when>
				</c:choose>
			</tbody>
		</table>
		
		<div class="text-center m-t-25 m-b-80">
			<button class="btn bg_blu btn-lg nsdow" onclick="return form_validation()">회원정보 수정</button>
		</div>
	</form>
</div>