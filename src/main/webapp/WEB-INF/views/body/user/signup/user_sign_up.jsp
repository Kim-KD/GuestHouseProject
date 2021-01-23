<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#container {
		padding-top: 50px;
		padding-bottom: 50px;
		clear: both;
	}
	
	table {
		color: #888;
		font-weight: 400;
		border-spacing: 0;
	}
	
	.w1100 {
		position: relative;
		max-width: 1100px;
		margin: 0 auto;
		padding: 0;
	}
	
	.sub_hd {
		position: relative;
	}
	
	.sub_hd > h2 {
		margin: 1em;
		font-size: 44px;
		text-align: center;
		color: #454443;
	}
	
	.term_hd {
		margin-bottom: 10px;
		border-bottom: 2px solid #5b5b5b;
	}
	
	.sub_title {
		padding: 2.5em 0 1.1em;
		font-size: 22px;
		color: #000;
	}
	
	.tb_frm > tbody tr:first-child th,
	.tb_frm > tbody tr:first-child td {
		border-top: 2px solid #5b5b5b;
	}
	
	.tb_frm > tbody tr:first-child th,
	.tb_frm > tbody tr:first-child td {
		border-top-width: 1px;
	}
	
	.tb_frm > tbody tr:last-child > * {
		border-bottom: 1px solid #b3b3b3;
	}
	
	.tb_frm > tbody th {
		width: 14%;
	}
	
	.tb_frm th {
		background: #f7f7f7;
		color: #484848;
	}
	
	.tb_frm tr > * {
		padding: 10px;
		border: 1px solid #edeceb;
	}
	
	.form-control-input {
		width: 100%;
		height: 38px;
		padding: 6px 15px;
		border: 1px solid #ccc;
		border-radius: 4px;
		color: #333;
	}
	
	.wid-lg {
		display: inline-block;
		width: 355px;
	}
	
	.form-control-p {
		display: inline-block;
	    margin: 0 0 0 10px;
		padding-top: 7px;
	    padding-bottom: 7px;
	    margin-bottom: 0;
	    min-height: 34px;
	}

	.text-center { text-align: center; }
	
	.wid-mid { width: 255px; }
	.wid-sm { width: 115px; }
	
	.color_red { color: #e93d3d; }
	
	.bg_dark_grey { background-color: #484848; color: white; }
	.bg_blu { background-color: #349eff; color: white;}
	.nsdow:focus { box-shadow: none; }
</style>

<div id="container" class="container">
	<div class="w1100">
		<div class="sub_hd">
			<h2>회원가입</h2>
		</div>
		<div class="term_hd">
			<h3 class="sub_title">정보입력</h3>
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
							직업 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" class="form-control-input wid-mid">
						</td>
					</tr>
				</tbody>
			</table>
			
			<div class="text-center m-t-25">
				<button class="btn bg_blu btn-lg nsdow">회원가입</button>
				<button class="btn bg_dark_grey btn-lg m-l-5 nsdow">취소</button>
			</div>
		</form>
	</div>
</div>