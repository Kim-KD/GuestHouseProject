package com.app.project.board.servicecenter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.project.user.UserService;

@Controller
public class ServiceCenterMvcController {
	
	@Autowired
	private UserService svc;
	private ModelAndView mav;
	
	// 공지사항 page
	@GetMapping("/notice_page")
	public String notice_page() {
		return "service_center/notice/notice";
	}
}
