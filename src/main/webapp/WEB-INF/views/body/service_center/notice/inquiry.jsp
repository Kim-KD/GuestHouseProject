<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="w1100">
	<div class="sub_hd">
		<h2>고객센터</h2>
	</div>
	
	<ul class="basic_step m-b-50">
		<li>
			<a href="notice_page">공지사항</a>
		</li>
		<li>
			<a href="questions_page">자주하는 질문</a>
		</li>
		<li class="active">
			<a href="inquiry_page">고객센터 문의</a>
		</li>
	</ul>
	
	<div>
		<h3 class="sub_title">고객센터 문의하기</h3>
		<form>
			<table class="tb tb_frm">
				<tbody>
					<tr>
						<th>서비스</th>
						<td>
							<input class="no_style" type="text">
						</td>
					</tr>
					<tr>
						<th>분류</th>
						<td>
							<input class="no_style" type="text">
						</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>
							<input class="no_style" readonly value="이름">
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>
							<input class="no_style" type="text" placeholder="제목을 입력해주세요.">
						</td>
					</tr>
					<tr>
						<th>문의내용</th>
						<td>
							<textarea class="no_style" rows="10" placeholder="내용을 입력해주세요."></textarea>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="text-center m-t-25 m-b-80">
				<button class="btn bg_blu btn-lg nsdow">등록</button>
				<button class="btn bg_dark_grey btn-lg m-l-5 nsdow">취소</button>
			</div>
		</form>
	</div>
</div>