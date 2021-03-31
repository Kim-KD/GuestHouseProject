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
	
	// 파트너명 중복체크
	public int partner_name_chk(String partner_name) {
		return dao.partner_name_chk(partner_name);
	}
	
	// 유저 회원가입
	public void user_join(UserBean userBean) {
		dao.user_join(userBean);
	}
	
	// 파트너 회원가입
	public void partner_join(UserBean userBean) {
		dao.partner_join(userBean);
	}
	
	// 로그인
	public ModelAndView login(String USER_ID, String USER_PW) {
		mav = new ModelAndView();
		UserBean userBean = new UserBean(USER_ID, USER_PW);
		UserBean userData = dao.login(userBean);

		if(userData != null) {
			mav.addObject("userData", userData);
			mav.setViewName("main/index/index");
			return mav;
		} else {
			mav.addObject("msg", "아이디나 비밀번호를 확인하세요.");
			mav.setViewName("user/login/login");
			return mav;
		}
	}
}
