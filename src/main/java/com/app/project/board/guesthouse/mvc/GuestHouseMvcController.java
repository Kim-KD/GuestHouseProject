package com.app.project.board.guesthouse.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.project.user.UserService;

@Controller
public class GuestHouseMvcController {
	
	@Autowired
	private UserService svc;
	private ModelAndView mav;
	
	// 게하 리스트 page
	@GetMapping("/gh_list_page")
	public String gh_list_page() {
		return "guest_house/guest_house_list";
	}
	
	
}
