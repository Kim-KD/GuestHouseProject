package com.app.project.user.mvc;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.app.project.user.UserBean;
import com.app.project.user.UserService;

@Controller
@SessionAttributes("userData")
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
	@GetMapping("/partner_sign_up_page")
	public String partner_sign_up_page() {
		return "user/signup/partner_sign_up";
	}
	
	// 유저 회원가입
	@PostMapping("/user_join")
	public String user_join(UserBean userBean) {
		svc.user_join(userBean);
		return "user/login/login";
	}
	
	// 파트너 회원가입
	@PostMapping("/partner_join")
	public String partner_join(UserBean userBean) {
		svc.partner_join(userBean);
		return "user/login/login";
	}
	
	// 로그인
	@PostMapping("/login")
	public ModelAndView login(@RequestParam("user_id") String user_id, 
								@RequestParam("user_pw") String user_pw) {
		mav = svc.login(user_id, user_pw);
		return mav;
	}
	
	// 내정보 수정 페이지
	@GetMapping("/my_info_modify_page")
	public ModelAndView my_info_modify_page(HttpSession session) {
		mav = new ModelAndView();
		if(session.getAttribute("userData") != null) {
			mav.addObject("userData", session.getAttribute("userData"));
			mav.setViewName("user/mypage/my_info_modify");
			return mav;
		} else {
			mav.setViewName("main/index/index");
			return mav;
		}
	}
	
	// 숙소 예약 내역 페이지
	@GetMapping("/my_page1")
	public ModelAndView my_page1(HttpSession session) {
		mav = new ModelAndView();
		if(session.getAttribute("userData") != null) {
			mav.addObject("userData", session.getAttribute("userData"));
			mav.setViewName("user/mypage/my_page1");
			return mav;
		} else {
			mav.setViewName("main/index/index");
			return mav;
		}
	}
	
	// 지난 예약 내역 페이지
	@GetMapping("/my_page2")
	public ModelAndView my_page2(HttpSession session) {
		mav = new ModelAndView();
		if(session.getAttribute("userData") != null) {
			mav.addObject("userData", session.getAttribute("userData"));
			mav.setViewName("user/mypage/my_page2");
			return mav;
		} else {
			mav.setViewName("main/index/index");
			return mav;
		}
	}
	
	// 내정보 수정
	@PostMapping("/info_update")
	public String my_info_modify(UserBean userBean, SessionStatus sessionStatus) {
		svc.info_update(userBean);
		sessionStatus.setComplete();
		return "redirect:/";
	}
	
	
	
	
	
	
	// 아이디/비밀번호 찾기
	@GetMapping("/find_info_page")
	public String find_info_page() {
		
		return "user/find/find_info";
	}
	
}