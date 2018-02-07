package com.wxxy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@RequestParam("username")String username,
			@RequestParam("password")String password,HttpSession session) {
		session.setAttribute("username", username);
		if(username.endsWith("@student")) {
			return "student/home";
		}else if(username.endsWith("@teacher")){
			return "teacher/teacher";
		}else if(username.endsWith("@manager")){
			return "manager/manager";
		}else {
			return "login";
		}
	}

}
