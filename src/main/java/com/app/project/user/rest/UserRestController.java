package com.app.project.user.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.app.project.user.UserService;

@RestController
public class UserRestController {
	
	@Autowired
	private UserService usvc;
	
	// 아이디 중복체크
	@PostMapping("/user_id_chk")
	public int user_id_chk(@RequestParam String user_id) {
		return usvc.user_id_chk(user_id);
	}
	
	// 닉네임 중복체크
	@PostMapping("/nickname_chk")
	public int nickname_chk(@RequestParam String nickname) {
		return usvc.nickname_chk(nickname);
	}
	 
	// 파트너명 중복체크
	@PostMapping("/partner_name_chk")
	public int partner_name_chk(@RequestParam String partner_name) {
		return usvc.partner_name_chk(partner_name);
	}
	
	
	
}