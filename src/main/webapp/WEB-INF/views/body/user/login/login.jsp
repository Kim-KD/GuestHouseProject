<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- <script src="resources/data-components/user/login.js"></script> -->


<style>
	#container {
		padding-top: 50px;
		padding-bottom: 50px;
		clear: both;
	}
	
	.wcenter {
		position: relative;
		max-width: 50%;
		margin: 0 auto;
		padding: 0;
	}
	
	.login_bx {
		margin: 90px auto 90px;
		border: 1px solid #eee;
		padding: 30px 0;
	}
	
	.login_form {
		padding: 0px 85px;
	}
	
	.form-control-basic {
		display: block;
		width: 100%;
		height: 60px;
		padding: 8px 29px;
		border: 1px solid #eee;
		border-radius: 4px;
		color: #858585;
	}
	
	.bg_blu { background-color: #349eff; color: white;}
	
	.login_form > form > .btn {
		display: block;
		width: 100%;
		padding: 18px 25px;
		font-size: 22px;
	}
	
	.login_logo {
		text-align: center;
		display: block;
	}
	
	.txt_right { text-align: right; }
	
</style>

<div class="container" id="container">
	<div class="wcenter">
		<div class="login_bx">
			<a href="index" class="login_logo m-t-10 m-b-40"><img src="resources/assets/main/img/import/img/logo.png"></a>
			<div class="login_form">
				<form>
					<input type="text" class="form-control-basic" placeholder="아이디를 입력하세요">
					<input type="text" class="form-control-basic m-t-10 m-b-10" placeholder="비밀번호를 입력하세요">
					<div class="txt_right m-b-10">
						<a href="#" class="txt1-1">비밀번호 찾기</a>&nbsp;|&nbsp;
						<a href="user_sign_up_page" class="txt1-1">개인 회원가입</a>&nbsp;|&nbsp;
						<a href="cpn_sign_up_page" class="txt1-1">기업 회원가입</a>
					</div>
					<button type="submit" class="btn bg_blu btn-lg">로그인</button>
				</form>
			</div>
		</div>
	</div>
</div>