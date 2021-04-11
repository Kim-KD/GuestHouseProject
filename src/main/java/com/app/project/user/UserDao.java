package com.app.project.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	// 유저 아이디 중복체크
	public int user_id_chk(String user_id) {
		return sql.selectOne("User_Mapper.user_id_chk", user_id);
	}
	
	// 닉네임 중복체크
	public int nickname_chk(String nickname) {
		return sql.selectOne("User_Mapper.nickname_chk", nickname);
	}
	
	// 파트너명 중복체크
	public int partner_name_chk(String partner_name) {
		return sql.selectOne("User_Mapper.partner_name_chk", partner_name);
	}
	
	// 유저 회원가입
	public int user_join(UserBean userBean) {
		return sql.insert("User_Mapper.user_join", userBean);
	}
	
	// 파트너 회원가입
	public int partner_join(UserBean userBean) {
		return sql.insert("User_Mapper.partner_join", userBean);
	}
	
	// 로그인
	public UserBean login(UserBean userBean) {
		return sql.selectOne("User_Mapper.login", userBean);
	}
	
	// 내정보 수정
	public int info_update(UserBean userBean) {
		return sql.update("User_Mapper.info_update", userBean);
	}

}
