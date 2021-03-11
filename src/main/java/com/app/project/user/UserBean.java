package com.app.project.user;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserBean {
	
	private String USER_ID;			// 유저 아이디
	private String STATUS;			// 유저 구분
	private String USER_PW;			// 비밀번호
	private String NICKNAME;		// 닉네임
	private String NAME;			// 이름
	private String PHONE_NUM;		// 핸드폰 번호
	private String EMAIL;			// 이메일
	private String GENDER;			// 성별
	private String BIRTH;			// 생년월일
	private String USER_JOB;		// 직업
	private String CREATE_DATE;		// 가입일
	private String EMAIL_STATUS;	// 이메일 인증
	private String SECESSION;		// 회원 탈퇴 여부

	private String PARTNER_NAME;	// 파트너명
	private String TEL_NUM;			// 전화번호
	private String BANK;			// 은행명
	private String ACCOUNT_NUM;		// 계좌번호
	private String ACCOUNT_HOLDER;	// 예금주
	
	
	
//	public UserBean(String USER_ID, String USER_PW) {
//		this.USER_ID = USER_ID;
//		this.USER_PW = USER_PW;
//	}
}
