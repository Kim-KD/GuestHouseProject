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
	
	// 내정보 수정
	@GetMapping("/my_modify")
	public String my_modify() {
		
		return "user/mypage/my_modify";
	}
	
	// 숙소 예약 내역
	@GetMapping("/my_reservation")
	public String my_reservation() {
		
		return "user/mypage/my_reservation";
	}
	
	// 지난 예약 내역
	@GetMapping("/my_past")
	public String my_past() {
		
		return "user/mypage/my_past";
	}
	
	// 회원가입
	@PostMapping("/join")
	public String join(UserBean userBean) {
		svc.join(userBean);
		return "user/login/login";
	}
	
	// 아이디/비밀번호 찾기
	@GetMapping("/find_info_page")
	public String find_info_page() {
		
		return "user/find/find_info";
	}
	
	// 로그인
	@PostMapping("/login")
	public ModelAndView login() {
		
		return mav;
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}