<%@ page import="org.springframework.util.ObjectUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="resources/data-components/common/common.js"></script>

<!-- 헤더 [s] -->
<header>
	<div id="top-sticky-header" class="top-main-header-area d-none d-md-block">
		<div class="top-container-fluid">
			<div class="header_bottom_border">
				<div class="row align-items-center">
					<div class="col-md-12 d-none d-md-block">
						<div class="social_wrap d-flex align-items-center justify-content-end">
							<%-- <c:if test="${login_member.member_id! = null }">
								<a href="user_list" id="adminBtn" class="register">관리자 페이지로</a>&nbsp;&nbsp;&nbsp;
								<a href="profile">${loginId}님 환영합니다.</a>&nbsp;&nbsp;&nbsp;
								<a href="javascript:void(0);" id="logoutBtn" class="register">로그아웃</a>
							</c:if>
							<c:if test="${login_member.member_id! = null }">
								<a href="profile">${loginId}님 환영합니다.</a>&nbsp;&nbsp;&nbsp;
								<a href="javascript:void(0);" id="logoutBtn" class="register">로그아웃</a>
							</c:if>
							<c:if test="${login_member.member_id! = null }">
								<a href="login" class="top-a-tag sp_active">로그인</a>
								<a href="sign_up" class="top-a-tag">회원가입</a>
							</c:if> --%>
							<a href="login_page" class="top-a-tag sp_active">로그인</a>
							<a href="my_page" class="top-a-tag">내정보</a>
							<a href="choice_sign_up" class="top-a-tag">회원가입</a>
							<a href="notice_page" class="top-a-tag">고객센터</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="header-area ">
		<div id="sticky-header" class="main-header-area">
			<div class="container-fluid" id="mid-nav-wd">
				<div class="header_bottom_border">
					<div class="row align-items-center">
						<div class="col-xl-2 col-lg-2">
							<div class="logo">
								<a href="index">
									<img src="resources/assets/main/img/import/img/logo.png" alt="게하모 로고" class="bg_logo">
								</a>
							</div>
						</div>
						<div class="col-xl-10 col-lg-10">
							<div class="main-menu  d-none d-lg-block">
								<nav>
									<ul id="navigation">
										<li><a href="gh_list_page">숙소</a></li>
										<li><a href="#">트립</a></li>
										<li><a href="#">정보</a></li>
										<li><a href="#">교통</a></li>
										<li><a href="#">할인&이벤트</a></li>
										<li><a href="#">커뮤니티</a></li>
									</ul>
								</nav>
							</div>
						</div>
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- 헤더 [e] -->