<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	.w1100 {
		position: relative;
		max-width: 1100px;
		margin: 0 auto;
		padding: 0;
	}
	
	.logo-img {
		padding-top: 50px;
	}

	.join_basic_bx {
		width: 570px;
		margin: 100px auto 100px;
		padding: 80px 94px;
		border: 1px solid #c5c5c5;
	}
	.join_basic_bx > h2 {
		font-size: 40px;
		font-weight: 400;
		color: #484848;
		text-align: center;
		padding-bottom: 27px;
	}
	
	.join_btn > h3 {
		font-size: 17px;
		color: #888;
		font-weight: 300;
		margin: 48px 0 20px;
	}
	
	.join_btn > a {
		display: block;
		padding: 17px 0 17px 127px;
		color: #fff;
		position: relative;
		width: 100%;
		font-size: 17px;
		font-weight: 400;
		text-align: left;
		border-radius: 4px;
		margin-bottom: 10px;
	}
	
	.join_btn > .btn-gehamo {
		background-color: #ff4a52;
	}
	
	.join_btn > .btn-partner {
		background-color: #5db2ff;
	}
	
	.icon > i {
		width: 33px;
		height: 28px;
		position: absolute;
		top: 15px;
		left: 12px;
		font-size: xx-large;
	}
	
	.nhover:hover {
		color: #ffffff !important;
	}
	
</style>

<div class="container w1100">
	<div class="join_basic_bx">
		<h2>회원가입</h2>
		
		<div class="join_btn">
			<h3>여행자로 가입하기</h3>
			<a href="user_sign_up_page" class="icon btn-gehamo nhover">
				<i class="fas fa-home"></i>
				게하모 회원가입
			</a>
			
			<h3>파트너로 가입하기</h3>
			<a href="cpn_sign_up_page" class="icon btn-partner nhover">
				<i class="fas fa-handshake"></i>
				파트너 회원가입
			</a>
		</div>
	</div>
</div>