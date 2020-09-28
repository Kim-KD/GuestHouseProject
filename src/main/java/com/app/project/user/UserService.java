package com.app.project.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class UserService {
	
	@Autowired
	private UserDao dao;
	private ModelAndView mav;
	
	// 회원가입
	public void join(UserBean userBean) {
		
	}
	
	// 로그인
	public ModelAndView login(String user_id, String user_pwd) {
		UserBean userBean = new UserBean(user_id, user_pwd);
		UserBean loginData = dao.login(userBean);
		mav = new ModelAndView();
		
		if(loginData != null) {
			mav.addObject("loginData", loginData);
			mav.setViewName("main/index");
			return mav;
		} else {
			mav.setViewName("user/login");
			return mav;
		}
	}
}
