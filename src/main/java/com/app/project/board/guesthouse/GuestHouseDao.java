package com.app.project.board.guesthouse;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GuestHouseDao {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	// 게하 게시글 총 수
	public int gh_list_total() {
		return sql.selectOne("GH_Mapper.gh_list_total");
	}
	
	// 게하 정보
	public int gh_info_insert(GuestHouseBean ghBean) {
		return sql.insert("GH_Mapper.gh_info_insert", ghBean);
	}
	
	// 게하 방 정보
	public int gh_room_info_insert(List<GuestHouseRoomBean> roomList) {
		return sql.insert("GH_Mapper.gh_room_info_insert", roomList);
	}
	
	// 게하 서비스 정보
	public int gh_service_info(GuestHouseBean ghBean) {
		return sql.insert("GH_Mapper.gh_service_info", ghBean);
	}

}