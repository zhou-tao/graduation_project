package com.wxxy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {
	
	@RequestMapping("/users")
	public String getUserList() {
		return "manager/user-list";
	}
	
	@RequestMapping("/manager")
	public String goHome() {
		return "manager/manager";
	}

}
