package com.app.project.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class UserService {
	
	@Autowired
	private UserDao dao;
	private ModelAndView mav;
	
	// 아이디 중복체크
	public int user_id_chk(String user_id) {
		return dao.user_id_chk(user_id);
	}
	
	// 닉네임 중복체크
	public int nickname_chk(String nickname) {
		return dao.nickname_chk(nickname);
	}
	
	// 회원가입
	public void join(UserBean userBean) {
		dao.join(userBean);
	}
	
	// 로그인
	
	
}
