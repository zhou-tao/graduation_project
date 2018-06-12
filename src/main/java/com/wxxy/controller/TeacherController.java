package com.wxxy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wxxy.entities.Attendance;
import com.wxxy.entities.Leave;
import com.wxxy.entities.Message;
import com.wxxy.service.TeacherService;

@Controller
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping("/teacher/{path}")
	public String toMenuPage(@PathVariable("path")String path) {
		if(path.equals("home")) {
			return "teacher/teacher";
		}
		return "teacher/"+path;
	}
	
	@ResponseBody
	@RequestMapping("/teacher/attendance")
	public Message attendance(Attendance attendance) {
		System.out.println("进入后台==========");
		System.out.println(attendance);
		teacherService.recordAttendance(attendance);
		return Message.success();
	}
	
	@ResponseBody
	@RequestMapping("/teacher/findLeaveList")
	public Message findAllLeave() {
		List<Leave> StuLeaveList = teacherService.findAllStuLeave();
		return Message.success().add("list", StuLeaveList);
	}
	
	@ResponseBody
	@RequestMapping("/teacher/checkLeave")
	public Message checkLeave(@RequestParam("id")int id,
									@RequestParam("status")String status) {
		teacherService.checkLeave(id, status);
		return Message.success();
	}
	
	@ResponseBody
	@RequestMapping("/teacher/findAttendance")
	public Message findAttendance(@RequestParam("number")int number) {
		List<Attendance> list = teacherService.findAtuAdRecord(number);
		return Message.success().add("list", list);
	}

}
