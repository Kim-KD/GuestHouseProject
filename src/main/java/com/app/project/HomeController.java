package com.app.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("userData")
public class HomeController {
	
	@GetMapping({"/", "/index"})
	public String home() {
		return "main/index/index";
	}
}
