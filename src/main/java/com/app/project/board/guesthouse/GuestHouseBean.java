package com.app.project.board.guesthouse;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GuestHouseBean {
	private int NO;						// 게시글 번호
	private String USER_ID;				// 아이디
	private String PARTNER_NAME;		// 파트너명
	private String POST_CODE;			// 우편번호
	private String ADDR;				// 주소
	private String DETAIL_ADDR;			// 상세주소
	private String INTRODUCE;			// 숙소 소개
	private int VIEWS;					// 조회수
	private int LIKES;					// 추천수
	private String WRITE_DATE;			// 작성일
	private String THUMBNAIL;			// 썸네일
	private String SLIDER_IMG;			// 슬라이더 이미지
	private String CHECK_IN;			// 체크인
	private String CHECK_OUT;			// 체크아웃
	private String LIGHTS_OUT_TIME;		// 소등시간
	private String PUBLIC_FACILITY;		// 공용시설
	private String ETC;					// 기타서비스
	private String BATHROOM;			// 욕실
}