package com.app.project.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	// 아이디 중복체크
	public int user_id_chk(String user_id) {
		return sql.selectOne("User_Mapper.user_id_chk", user_id);
	}
	
	// 닉네임 중복체크
	public int nickname_chk(String nickname) {
		return sql.selectOne("User_Mapper.nickname_chk", nickname);
	}
	
	// 회원가입
	public int join(UserBean userBean) {
		return sql.insert("User_Mapper.join", userBean);
	}
	

}
