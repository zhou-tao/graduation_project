package com.wxxy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TeacherController {
	
	@RequestMapping("/teacher/{path}")
	public String toMenuPage(@PathVariable("path")String path) {
		if(path.equals("home")) {
			return "teacher/teacher";
		}
		return "teacher/"+path;
	}

}
