package com.app.project.board.guesthouse;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GuestHouseReviewBean {
	private int REVIEW_NO;		// 댓글 번호
	private int NO;				// 게시글 번호
	private String USER_ID;		// 아이디
	private String NICKNAME;	// 닉네임
	private String CONTENTS;	// 내용
	private String WRITE_DATE;	// 작성일
}