package com.app.project.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	// 로그인
	public UserBean login(UserBean userBean) {
		return sql.selectOne("User_Mapper.login", userBean);
	}

}
