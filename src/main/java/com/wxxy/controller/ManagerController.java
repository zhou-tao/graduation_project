package com.wxxy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wxxy.entities.Message;
import com.wxxy.entities.Student;
import com.wxxy.entities.Teacher;
import com.wxxy.service.ManagerService;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	
	@RequestMapping("/users")
	public String getUserList() {
		return "manager/user-list";
	}
	
	@RequestMapping("/manager")
	public String goHome() {
		return "manager/manager";
	}
	
	@ResponseBody
	@RequestMapping("/student")
	public Message addStudent(Student student) {
		managerService.registerStudent(student);
		return Message.success();
	}
	
	@ResponseBody
	@RequestMapping("/teacher")
	public Message addTeacher(Teacher teacher) {
		managerService.registerTeacher(teacher);
		return Message.success();
	}

}
