<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="resources/data-components/sign_up/user_sign_up.js"></script>

<div id="container" class="container">
	<div class="w1100">
		<div class="sub_hd">
			<h2>회원가입</h2>
		</div>
		<div class="term_hd">
			<h3 class="sub_title">정보입력</h3>
		</div>
		
		<form class="join_frm" action="user_join" method="post">
			<input type="hidden" name="STATUS" value="U">
			<input type="hidden" id="id_validation" value="0"/>
			<input type="hidden" id="nickname_validation" value="0"/>
			<p class="m-t-35 m-b-15">
				<b class="color_red">*</b> 표시는 필수 입력항목입니다.
			</p>
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
							<input type="text" name="USER_ID" id="user_id" class="form-control-input wid-mid" maxlength="12">
							<button type="button" class="info-manage__btn-id" onclick="return idcheckbtn()">중복확인</button>
							<p id="valid_id" class="form-control-p">6~20자 이내로 영문 소문자, 숫자만 사용 가능합니다.</p>
						</td>
					</tr>
					
					<tr>
						<th>
							닉네임 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" name="NICKNAME" id="nickname" class="form-control-input wid-mid">
							<button type="button" class="info-manage__btn-id" onclick="return nickcheckbtn()">중복확인</button>
							<p id="valid_nickname" class="form-control-p">특수문자 없이 입력해 주세요.</p>
						</td>
					</tr>
					
					<tr>
						<th>
							이름 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" name="NAME" id="name" class="form-control-input wid-lg">
							<p id="valid_name" class="form-control-p">특수문자 없이 입력해 주세요.</p>
						</td>
					</tr>
					
					<tr>
						<th>
							비밀번호<b class="color_red">*</b>
						</th>
						<td>
							<input type="password" name="USER_PW" id="user_pw" class="form-control-input wid-lg m-b-10" maxlength="32" placeholder="비밀번호">
							<p id="valid_password" class="form-control-p">특수문자 포함 8자이상 16자 이하로 입력해 주세요.</p><br>
							<input type="password" id="user_pwchk" class="form-control-input wid-lg" maxlength="32" placeholder="비밀번호 확인">
							<p id="valid_password2" class="form-control-p"></p>
						</td>
					</tr>
					
					<tr>
						<th>
							핸드폰 번호 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" name="PHONE_NUM" id="phone_num" class="form-control-input wid-mid" placeholder="예) 01012345678">
							<p id="valid_phone_num" class="form-control-p"></p>
						</td>
					</tr>
					
					<tr>
						<th>
							이메일 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" id="email1" class="form-control-input wid-mid"> 
							<span class="form-control-static">@</span>
							<input type="text" id="email2" class="form-control-input wid-mid">
							<input type="hidden" name="EMAIL" id="email">
							<p id="valid_email" class="form-control-p"></p>
						</td>
					</tr>
					
					<tr>
						<th>
							성별 <b class="color_red">*</b>
						</th>
						<td>
							<select class="form-control-select wid-mid" name="GENDER" id="gender">
								<option value="">선택</option>
								<option value="남자">남자</option>
								<option value="여자">여자</option>
							</select>
							<p id="valid_gender" class="form-control-p"></p>
						</td>
					</tr>
					
					<tr>
						<th>
							생년월일 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" id="birth1" class="form-control-input wid-sm" placeholder="ex) 1991">
							<span class="form-control-static">년</span> 
							<input type="text" id="birth2" class="form-control-input wid-sm m-l-10" placeholder="03">
							<span class="form-control-static">월</span> 
							<input type="text" id="birth3" class="form-control-input wid-sm m-l-10" placeholder="02">
							<span class="form-control-static">일</span>
							<input type="hidden" name="BIRTH" id="birth">
							<p id="valid_birth" class="form-control-p"></p>
						</td>
					</tr>
					
					<tr>
						<th>
							직업 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" name="USER_JOB" id="user_job" class="form-control-input wid-mid">
							<p id="valid_user_job" class="form-control-p"></p>
						</td>
					</tr>
				</tbody>
			</table>
			
			<div class="text-center m-t-25">
				<button class="btn bg_blu btn-lg nsdow" onclick="return form_validation();">회원가입</button>
				<button class="btn bg_dark_grey btn-lg m-l-5 nsdow">취소</button>
			</div>
		</form>
	</div>
</div>