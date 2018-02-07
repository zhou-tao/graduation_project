package com.wxxy.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {
	
	@RequestMapping("/student/{option}")
	public String iframe(@PathVariable("option")String option,Map<String,Object> map) {
		map.put("option", option);
		return "student/home";
	}
	
	@RequestMapping("/home")
	public String home() {
		return "student/home";
	}
	
	@RequestMapping("/record")
	public String record() {
		return "student/record";
	}
	
	@RequestMapping("/leave")
	public String leave() {
		return "student/leave";
	}
	
	@RequestMapping("/message")
	public String message() {
		return "student/message";
	}
	
	@RequestMapping("/settings")
	public String changepwd() {
		return "student/settings";
	}
	
	@RequestMapping("/news")
	public String news() {
		return "student/news";
	}
	
}
