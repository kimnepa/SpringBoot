package com.edu.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MainController {
	
	@RequestMapping("/")
 public String mainController() {
	 
	 return "/member/main";
 }
}
