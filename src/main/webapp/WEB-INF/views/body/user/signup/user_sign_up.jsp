<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
// 아이디 중복체크[s]
function idcheckbtn() {
	var user_id = $("#user_id").val();
	var regExp_id = /^[a-z]+[a-z0-9]{5,19}$/g;
	
	if(!regExp_id.test(user_id)) {
		$("#valid_id").css("color", "#f30c43").addClass("fas fa-times").text(" 아이디는 6~20자 영어 또는 숫자로 입력하세요.");
		$("#valid_id").val("");
		$("#user_id").focus();
		return false;
	} else {
		$.ajax({
			url : "user_id_chk",
			type : "POST",
			dataType : "json",
			data : {"user_id" : user_id},
			success : function(result) {
				if(result == 1) {
					$("#valid_id").css("color", "#f30c43").addClass("fas fa-times").text(" 해당 아이디가 이미 존재합니다.");
					$("#valid_id").val("");
					$("#user_id").focus();
				} else {
					$("#valid_id").removeClass();
					$("#valid_id").css("color", "#57c1be").addClass("form-control-p fa fa-check").text(" 사용 가능한 아이디 입니다.");
					$("#id_validation").val("1");
				}
			}
		});
	}
}
// 아이디 중복체크[e]

// 닉네임 중복체크[s]
function nickcheckbtn() {
	var nickname = $("#nickname").val();
	var regExp_nickname = /[~!@#$%^&*()_+|<>?:{}]/;
	
	if(regExp_nickname.test(nickname)) {
		$("#valid_nickname").css("color", "#f30c43").addClass("fas fa-times").text(" 특수문자 없이 입력해 주세요.");
		$("#valid_nickname").val("");
		$("#nickname").focus();
		return false;
	} else {
		$.ajax({
			url : "nickname_chk",
			type : "POST",
			dataType : "json",
			data : {"nickname" : nickname},
			success : function(result) {
				if(result == 1) {
					$("#valid_nickname").css("color", "#f30c43").addClass("fas fa-times").text(" 해당 닉네임이 이미 존재합니다.");
					$("#valid_nickname").val("");
					$("#nickname").focus();
				} else {
					$("#valid_nickname").removeClass();
					$("#valid_nickname").css("color", "#57c1be").addClass("form-control-p fa fa-check").text(" 사용 가능한 닉네임 입니다.");
					$("#nickname_validation").val("1");
				}
			}
		});
	}
	
}
// 닉네임 중복체크[e]

// 회원등록 폼 검증[s]
function form_validation() {
	$("#email").val($("#email1").val() + "@" + $("#email2").val());
	$("#birth").val($("#birth1").val() + $("#birth2").val() + $("#birth3").val());
	
	var user_id = $("#user_id").val();
	var nickname = $("#nickname").val();
	var name = $("#name").val();
	var user_pw = $("#user_pw").val();
	var user_pwchk = $("#user_pwchk").val();
	var phone_num = $("#phone_num").val();
	var email = $("#email").val();
	var gender = $("#gender").val();
	var birth = $("#birth").val();
	var user_job = $("#user_job").val();
	var id_validation = $("#id_validation").val();
	var nickname_validation = $("#nickname_validation").val();
	
	// 정규식
	var regExp_id = /^[a-z]+[a-z0-9]{5,19}$/g;
	var regExp_pw = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{8,16}$/;
	var regExp_nickname = /[~!@#$%^&*()_+|<>?:{}]/;
	var regExp_name = /^[가-힣]{2,4}$/;
	var regExp_phone_num = /^\d{3}\d{3,4}\d{4}$/;
	var regExp_email = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var regExp_birth = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
	/* var regExp_tel_num = /^\d{2,3}-\d{3,4}-\d{4}$/; */
	
	if(!regExp_id.test(user_id)) {
		$("#valid_id").css("color", "#f30c43").addClass("fas fa-times").text(" 아이디는 6~20자 영어 또는 숫자로 입력하세요.");
		$("#valid_id").val("");
		$("#user_id").focus();
		return false;
	} else if(id_validation == "0") {
		$("#valid_id").css("color", "#f30c43").addClass("fas fa-times").text(" 아이디 중복확인은 필수입니다.");
		$("#user_id").focus();
		return false;
	} else if(regExp_nickname.test(nickname)) {
		$("#valid_nickname").css("color", "#f30c43").addClass("fas fa-times").text(" 특수문자 없이 입력해 주세요.");
		$("#valid_nickname").val("");
		$("#nickname").focus();
		return false;
	} else if(nickname.length == 0) {
		$("#valid_nickname").css("color", "#f30c43").addClass("fas fa-times").text(" 닉네임을 입력해주세요.");
		$("#valid_nickname").val("");
		$("#nickname").focus();
		return false;
	} else if(nickname_validation == "0") {
		$("#valid_nickname").css("color", "#f30c43").addClass("fas fa-times").text(" 닉네임 중복확인은 필수입니다.");
		$("#nickname").focus();
		return false;
	} else if(!regExp_name.test(name)) {
		$("#valid_name").css("color", "#f30c43").addClass("fas fa-times").text(" 이름을 확인해주세요.");
		$("#valid_name").val("");
		$("#name").focus();
		return false;
	} else if(!regExp_pw.test(user_pw)) {
		$("#valid_password").css("color", "#f30c43").addClass("fas fa-times").text(" 특수문자 포함 8자이상 16자 이하로 입력하세요.");
		$("#valid_password").val("");
		$("#user_pw").focus();
		return false;
	} else if(user_pwchk == 0) {
		$("#valid_password2").css("color", "#f30c43").addClass("fas fa-times").text(" 비밀번호를 입력해주세요.");
		$("#valid_password2").val("");
		$("#user_pwchk").focus();
		return false;
	} else if(user_pw != user_pwchk) {
		$("#valid_password2").css("color", "#f30c43").addClass("fas fa-times").text(" 비밀번호가 동일하지 않습니다.");
		$("#valid_password2").val("");
		$("#user_pwchk").focus();
		return false;
	} else if(!regExp_phone_num.test(phone_num)) {
		$("#valid_phone_num").css("color", "#f30c43").addClass("fas fa-times").text(" 잘못된 핸드폰 번호입니다.");
		$("#valid_phone_num").val("");
		$("#phone_num").focus();
		return false;
	} else if(!regExp_email.test(email)) {
		$("#valid_email").css("color", "#f30c43").addClass("fas fa-times").text(" 이메일을 다시 입력해주세요.");
		$("#valid_email").val("");
		$("#email1").focus();
		return false;
	} else if(gender == "") {
		$("#valid_gender").css("color", "#f30c43").addClass("fas fa-times").text(" 성별을 선택해주세요.");
		$("#valid_gender").val("");
		$("#gender").focus();
		return false;
	} else if(!regExp_birth.test(birth)) {
		$("#valid_birth").css("color", "#f30c43").addClass("fas fa-times").text(" 생년월일을 입력해주세요.");
		$("#birth1").val("");
		$("#birth2").val("");
		$("#birth3").val("");
		$("#birth1").focus();
		return false;
	} else if(birth == "") {
		$("#valid_birth").css("color", "#f30c43").addClass("fas fa-times").text(" 생년월일을 입력해주세요.");
		$("#birth1").val("");
		$("#birth1").focus();
		return false;
	} else if(user_job == "") {
		$("#valid_user_job").css("color", "#f30c43").addClass("fas fa-times").text(" 직업을 입력해주세요.");
		$("#valid_user_job").val("");
		$("#user_job").focus();
		return false;
	}
}
// 회원등록 폼 검증[e]

// focusout [s]
$(function() {
	$("#user_id").focusout(function(){
		if($("#user_id").val().length == 0) {
			$("#valid_id").removeClass();
			$("#valid_id").css("color", "#7A838B").addClass("form-control-p").text(" 6~20자 이내로 영문 소문자, 숫자만 사용 가능합니다.");
			$("#id_validation").val("0");
		} else {
			return;
		}
	});
	
	$("#nickname").focusout(function(){
		if($("#nickname").val().length == 0) {
			$("#valid_nickname").removeClass();
			$("#valid_nickname").css("color", "#7A838B").addClass("form-control-p").text(" 특수문자 없이 입력해 주세요.");
			$("#nickname_validation").val("0");
		} else {
			return;
		}
	});
});
//focusout [e]

// keyup, keydown 되었을때, 메세지 제거 [s]
$(function(){
	var regExp_pw = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{8,16}$/;
	$("#user_pw").on("keyup keydown", function() {
		if(!regExp_pw.test($("#user_pw").val())) {
			$("#valid_password").css("color", "#f30c43").addClass("fas fa-times").text(" 특수문자 포함 8자이상 16자 이하로 입력하세요.");
		} else {
			$("#valid_password").removeClass();
			$("#valid_password").css("color", "#57c1be").addClass("form-control-p fa fa-check").text(" 사용 가능한 비밀번호 입니다.");
		}
	});
	$("#user_pwchk").on("keyup keydown", function() {
		if($("#user_pw").val() != $("#user_pwchk").val()) {
			$("#valid_password2").css("color", "#f30c43").addClass("fas fa-times").text(" 비밀번호가 동일하지 않습니다.");
		} else {
			$("#valid_password2").removeClass();
			$("#valid_password2").css("color", "#57c1be").addClass("form-control-p fa fa-check").text(" 비밀번호가 동일합니다.");
		}
	});
	$("#user_pw").on("keyup keydown", function() {
		if($("#user_pw").val().length == 0) {
			$("#valid_password").removeClass();
			$("#valid_password").css("color", "#7A838B").addClass("form-control-p").text(" 8~32자 이내로 입력해 주세요.");
		}
	});
	$("#user_pwchk").on("keyup keydown", function() {
		if($("#user_pwchk").val().length == 0) {
			$("#valid_password2").empty().removeClass();
			$("#valid_password2").addClass("form-control-p");
		}
	});
	
	$("#user_id").on("keyup keydown", function() {
		if($("#user_id").val().length > 0) {
			$("#valid_id").removeClass();
			$("#id_validation").val("0");
			$("#valid_id").css("color", "#7A838B").addClass("form-control-p").text(" 6~20자 이내로 영문 소문자, 숫자만 사용 가능합니다.");
		}
	});
	
	$("#nickname").on("keyup keydown", function() {
		if($("#nickname").val().length > 0) {
			$("#valid_nickname").removeClass();
			$("#nickname_validation").val("0");
			$("#valid_nickname").css("color", "#7A838B").addClass("form-control-p").text(" 특수문자 없이 입력해 주세요.");
		}
	});
	
	$("#name").on("keyup keydown", function() {
		if($("#name").val().length > 0) {
			$("#valid_name").removeClass();
			$("#valid_name").css("color", "#7A838B").addClass("form-control-p").text(" 특수문자 없이 입력해 주세요.");
		}
	});
	
	$("#phone_num").on("keyup keydown", function() {
		if($("#phone_num").val().length > 0) {
			$("#valid_phone_num").empty().removeClass();
			$("#valid_phone_num").addClass("form-control-p");
		}
	});
	
	$("#email1").on("keyup keydown", function() {
		if($("#email1").val().length > 0 || $("#email2").val().length > 0) {
			$("#valid_email").empty().removeClass();
			$("#valid_email").addClass("form-control-p");
		}
	});
	$("#email2").on("keyup keydown", function() {
		if($("#email2").val().length > 0) {
			$("#valid_email").empty().removeClass();
			$("#valid_email").addClass("form-control-p");
		}
	});
	
	$("#gender").on("click", function() {
		$("#valid_gender").empty().removeClass();
		$("#valid_gender").css("color", "#7A838B").addClass("form-control-p");
	});
	
	$("#birth1").on("keyup keydown", function() {
		if($("#birth1").val().length > 0) {
			$("#valid_birth").empty().removeClass();
			$("#valid_birth").addClass("form-control-p");
		}
	});
	$("#birth2").on("keyup keydown", function() {
		if($("#birth2").val().length > 0) {
			$("#valid_birth").empty().removeClass();
		}
	});
	$("#birth3").on("keyup keydown", function() {
		if($("#birth3").val().length > 0) {
			$("#valid_birth").empty().removeClass();
		}
	});
	
	$("#user_job").on("keyup keydown", function() {
		if($("#user_job").val().length > 0) {
			$("#valid_user_job").empty().removeClass();
		}
	});
});
// keyup, keydown 되었을때, 메세지 제거 [e]

</script>

<div id="container" class="container">
	<div class="w1100">
		<div class="sub_hd">
			<h2>회원가입</h2>
		</div>
		<div class="term_hd">
			<h3 class="sub_title">정보입력</h3>
		</div>
		
		<form class="join_frm" action="join" method="post">
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
							<p id="valid_password" class="form-control-p">8~32자 이내로 입력해 주세요.</p><br>
							<input type="password" id="user_pwchk" class="form-control-input wid-lg" maxlength="32" placeholder="비밀번호 확인">
							<p id="valid_password2" class="form-control-p"></p>
						</td>
					</tr>
					
					<tr>
						<th>
							핸드폰 번호 <b class="color_red">*</b>
						</th>
						<td>
							<input type="text" name="PHONE_NUM" id="phone_num" class="form-control-input wid-mid" placeholder="예)01012345678">
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