package com.app.project.user.mvc;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.project.user.UserBean;
import com.app.project.user.UserService;

@Controller
public class UserMvcController {
	
	@Autowired
	private UserService svc;
	private ModelAndView mav;
	
	// 로그인 page
	@GetMapping("/login_page")
	public String login_page() {
		return "user/login/login";
	}
	
	// 회원가입 선택 page
	@GetMapping("/choice_sign_up")
	public String choice_sign_up() {
		return "user/signup/choice_sign_up";
	}
	
	// 일반 회원가입 page
	@GetMapping("/user_sign_up_page") 
	public String user_sign_up_page() {
		return "user/signup/user_sign_up";
	}
	
	// 기업 회원가입 page
	@GetMapping("/cpn_sign_up_page")
	public String cpn_sign_up_page() {
		return "user/signup/cpn_sign_up";
	}
	
	// 회원가입
	@GetMapping("/join")
	public String join(UserBean userBean) {
		svc.join(userBean);
		return "/";
	}
	
	// 내정보
	@GetMapping("/my_page")
	public String my_page() {
		
		return "user/mypage/mypage";
	}
	
	// 아이디/비밀번호 찾기
	@GetMapping("/find_info_page")
	public String find_info_page() {
		
		return "user/find/find_info";
	}
	
	// 로그인
	@PostMapping("/login")
	public ModelAndView login(@RequestParam("user_id") String user_id,
								@RequestParam("user_pwd") String user_pwd) {
		mav = svc.login(user_id, user_pwd);
		return mav;
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}