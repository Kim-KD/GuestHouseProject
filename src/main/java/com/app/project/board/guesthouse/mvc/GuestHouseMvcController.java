package com.app.project.board.guesthouse.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.app.project.board.guesthouse.GuestHouseBean;
import com.app.project.board.guesthouse.GuestHouseRoomBean;
import com.app.project.board.guesthouse.GuestHouseService;
import com.app.project.user.UserBean;

@Controller
@SessionAttributes("userData")
public class GuestHouseMvcController {
	
	@Autowired
	private GuestHouseService svc;
	private ModelAndView mav;
	
	// 게하 리스트 page
	@GetMapping("/gh_list_page")
	public ModelAndView gh_list_page(HttpSession session) {
		mav = new ModelAndView();
		int list_total = svc.gh_list_total();
		mav.addObject("total", list_total);
		mav.setViewName("guest_house/common/gh_list");
		
		return mav;
	}
	
	// 게하 상세보기 page
	@GetMapping("/gh_details_page")
	public String gh_details_page() {
		return "guest_house/common/gh_details";
	}
	
	// 게하 게시글 작성 page
	@GetMapping("/gh_write_page")
	public String gh_write_page(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserBean userBean = (UserBean)session.getAttribute("userData");
		
		if(userBean != null) {
			if(userBean.getSTATUS().equals("P")) {
				return "guest_house/common/gh_write/gh_write";
			} else {
				return "main/index/index";
			}
		} else {
			return "main/index/index";
		}
	}
	
	// 게하 게시글 수정 page
	@GetMapping("/gh_modify_page")
	public String gh_modify_page(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserBean userBean = (UserBean)session.getAttribute("userData");
		
		if(userBean != null) {
			if(userBean.getSTATUS().equals("P")) {
				return "guest_house/common/gh_write/gh_modify";
			} else {
				return "main/index/index";
			}
		} else {
			return "main/index/index";
		}
	}
	
	// 게하 게시글 작성
	@PostMapping("/gh_write") //THUMBNAIL
	public String gh_write(GuestHouseBean ghBean, GuestHouseRoomBean roomBean, 
							@RequestParam("ROOMS_IMG") MultipartFile[] files, @RequestParam("THUMBNAIL") MultipartFile file) throws Exception {
		svc.gh_write(ghBean, roomBean, files, file);
		
		return "main/index/index";
	}
}