<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="w1100">
	<div class="sub_hd">
		<h2>정보 수정</h2>
	</div>
	
	<ul class="basic_step">
		<li>
			<a href="my_reservation">진행중인 예약</a>
		</li>
		<li>
			<a href="my_past">지난 예약</a>
		</li>
		<li class="active">
			<a href="my_modify">정보 수정</a>
		</li>
	</ul>
	
	<div class="term_hd m-b-0i">
		<h3 class="sub_title">정보 수정</h3>
	</div>

	<form class="join_frm">
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
						<input type="text" class="form-control-input wid-lg" maxlength="12">
						<p class="form-control-p">4~12자 이내로 영문 소문자, 숫자만 사용 가능합니다</p>
					</td>
				</tr>
				
				<tr>
					<th>
						닉네임 <b class="color_red">*</b>
					</th>
					<td>
						<input type="text" class="form-control-input wid-lg">
						<p class="form-control-p">특수문자 없이 입력해 주세요</p>
					</td>
				</tr>
				
				<tr>
					<th>
						이름 <b class="color_red">*</b>
					</th>
					<td>
						<input type="text" class="form-control-input wid-lg">
						<p class="form-control-p">특수문자 없이 입력해 주세요</p>
					</td>
				</tr>
				
				<tr>
					<th>
						비밀번호<b class="color_red">*</b>
					</th>
					<td>
						<input type="password" class="form-control-input wid-lg m-b-10" maxlength="32" placeholder="비밀번호">
						<p class="form-control-p">8~32자 이내로 입력해 주세요</p><br>
						<input type="password" class="form-control-input wid-lg" maxlength="32" placeholder="비밀번호 확인">
					</td>
				</tr>
				
				<tr>
					<th>
						핸드폰 번호 <b class="color_red">*</b>
					</th>
					<td>
						<input type="text" class="form-control-input wid-mid" placeholder="예)01012345678">
					</td>
				</tr>
				
				<tr>
					<th>
						이메일 <b class="color_red">*</b>
					</th>
					<td>
						<input type="text" class="form-control-input wid-mid"> 
						<span>@</span>
						<input type="text" class="form-control-input wid-mid">
					</td>
				</tr>
				
				<tr>
					<th>
						전화번호
					</th>
					<td>
						<input type="text" class="form-control-input wid-mid" placeholder="예)01012345678">
					</td>
				</tr>
				
				<tr>
					<th>
						성별 <b class="color_red">*</b>
					</th>
					<td>
						<select class="form-control wid-mid">
							<option>남자</option>
							<option>여자</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<th>
						생년월일 <b class="color_red">*</b>
					</th>
					<td>
						<input type="text" class="form-control-input wid-sm m-r-5">년 
						<input type="text" class="form-control-input wid-sm m-l-10 m-r-5">월 
						<input type="text" class="form-control-input wid-sm m-l-10 m-r-5">일
					</td>
				</tr>
				
				<tr>
					<th>
						직업 <b class="color_red">*</b>
					</th>
					<td>
						<input type="text" class="form-control-input wid-mid">
					</td>
				</tr>
			</tbody>
		</table>
		
		<div class="text-center m-t-25 m-b-80">
			<button class="btn bg_blu btn-lg nsdow">회원정보 수정</button>
		</div>
	</form>
</div>