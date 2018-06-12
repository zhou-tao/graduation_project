package com.wxxy.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wxxy.entities.Attendance;
import com.wxxy.entities.Leave;
import com.wxxy.entities.Message;
import com.wxxy.entities.Student;
import com.wxxy.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
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
	
	@ResponseBody
	@RequestMapping("/student_info")
	public Message getInfo(@RequestParam("name")String name) {
		Student student = studentService.getInfo(name);
		return Message.success().add("info", student);
	}
	
	@ResponseBody
	@RequestMapping("/changePwd")
	public Message changePwd(@RequestParam("name")String name,
			@RequestParam("oldPwd")String oldPwd,@RequestParam("newPwd")String newPwd) {
		Boolean ok = studentService.updatePwd(name, oldPwd, newPwd);
		if(ok) {
			return Message.success();
		}else {
			return Message.success().add("msg", "–ﬁ∏ƒ ß∞‹,‘≠√‹¬ÎÃÓ–¥¥ÌŒÛ! «Î÷ÿ–¬ ‰»Î");
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/student/sendLeave",method=RequestMethod.POST)
	public Message sendLeave(Leave leave) {
		System.out.println(leave);
		studentService.sendLeave(leave);
		return Message.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/findAdReocrd",method=RequestMethod.POST)
	public Message findAdRecord(@RequestParam("number")int number) {
		List<Attendance> AdRecord = studentService.findAdRecord(number);
		return Message.success().add("list", AdRecord);
	}
	
	@ResponseBody
	@RequestMapping(value="/findCheckedLeave",method=RequestMethod.POST)
	public Message findCheckedLeave(@RequestParam("number")int number) {
		List<Leave> list = studentService.findCheckedList(number);
		return Message.success().add("list", list);
	}
	
}
