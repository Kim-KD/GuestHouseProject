package com.app.project.board.guesthouse;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class GuestHouseRoomBean {
	private int ROOM_NO;			// 방 번호
	private int NO;					// 게시글 번호
	private String ROOMS;			// 객실
	private String PRICE;			// 1박 단가
	private String ROOM_GENDER;		// 남/여 구분
	private String PERSONNEL;		// 정원
	private String ROOMS_IMG;		// 객실 사진
}