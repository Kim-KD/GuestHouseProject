<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 헤더 [s] -->
<header>
	<div id="top-sticky-header" class="top-main-header-area d-none d-md-block">
		<div class="top-container-fluid">
			<div class="header_bottom_border">
				<div class="row align-items-center">
					<div class="col-md-12 d-none d-md-block">
						<div class="social_wrap d-flex align-items-center justify-content-end">
							<c:if test="${userData.USER_ID != null}">
								<div class="top-a-tag">
									<span class="top_user_id">${userData.USER_ID}</span>님 반갑습니다.
								</div>
								<a href="my_reservation_page" class="top-a-tag">내정보</a>
								<a href="logout" class="top-a-tag">로그아웃</a>
								<a href="notice_page" class="top-a-tag">고객센터</a>
							</c:if>
							<c:if test="${userData.USER_ID == null}">
								<a href="login_page" class="top-a-tag sp_active">로그인</a>
								<a href="choice_sign_up" class="top-a-tag">회원가입</a>
								<a href="notice_page" class="top-a-tag">고객센터</a>
							</c:if>
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
    
<!-- 검색 area [s]  -->
<div class="newletter_area overlay">
	<form action="search" method="get">
		<div class="container">
			<div class="row justify-content-left">
				<div class="col-lg-6 d-md-block"> <!-- d-none -->
					<div class="section_title text-left mb_70">
						<a href="javascript:void(0);" class="searchTag sp_active">숙소</a>
						<a href="javascript:void(0);" class="searchTag">관광</a>
						<a href="javascript:void(0);" class="searchTag">지역</a>
					</div>
				</div>
			</div>
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-12">
					<div class="row align-items-center">
						<div class="col-lg-12">
							<div class="mail_form">
								<div class="row no-gutters">
									<div class="col-lg-10 col-md-10">
										<div class="newsletter_field">
											<input type="hidden" id="search_type" name="search_type" >
											<input type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요." >
										</div>
									</div>
									<div class="col-lg-2 col-md-2">
										<div class="newsletter_btn">
											<button class="boxed-btn4 " onclick="return S_search()">검색</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
<!-- 검색 area [e]  -->