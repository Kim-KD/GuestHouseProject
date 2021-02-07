<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="container" class="container">
	<div class="w1100">
		<div class="sub_hd">
			<h2>정보 수정</h2>
		</div>
		<div class="term_hd">
			<h3 class="sub_title">정보 수정</h3>
		</div>
		
		<form class="join_frm">
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
							<input type="text" class="form-control-input wid-lg" maxlength="12" placeholder="아이디">
							<p class="form-control-p">4~12자 이내로 영문 소문자, 숫자만 사용 가능합니다</p>
						</td>
					</tr>
					
					<tr>
						<th>
							이름 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" class="form-control-input wid-lg" placeholder="이름">
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
			
			<div class="text-center m-t-25">
				<button class="btn bg_blu btn-lg nsdow">회원정보 수정</button>
			</div>
		</form>
	</div>
</div>