package com.app.project.board.guesthouse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GuestHouseDao {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int gh_list_total() {
		return sql.selectOne("GH_Mapper.gh_list_total");
	}

}