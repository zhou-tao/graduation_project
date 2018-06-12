package com.wxxy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
	@RequestMapping("/manager/student")
	public Message addStudent(Student student) {
		managerService.registerStudent(student);
		return Message.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/manager/teacher",method=RequestMethod.POST)
	public Message addTeacher(Teacher teacher) {
		managerService.registerTeacher(teacher);
		return Message.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/manager/student-list",method=RequestMethod.GET)
	public Message studentList(@RequestParam(value="pn",defaultValue="1")Integer pn) {
		PageHelper.startPage(pn, 10);
		List<Student> studentList = managerService.getStudentList();
		PageInfo<Student> page = new PageInfo<>(studentList,5);
		return Message.success().add("pageInfo", page);
	}
	
	@ResponseBody
	@RequestMapping("/manager/teacher-list")
	public Message teacherList(@RequestParam(value="pn",defaultValue="1")Integer pn) {
		PageHelper.startPage(pn, 10);
		List<Teacher> teacherList = managerService.getTeacherList();
		PageInfo<Teacher> page = new PageInfo<>(teacherList,5);
		return Message.success().add("pageInfo", page);
	}
	
	@ResponseBody
	@RequestMapping(value="/manager/student-list/{id}",method=RequestMethod.DELETE)
	public Message deleteStudent(@PathVariable("id")Integer id) {
		managerService.removeStudent(id);
		return Message.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/manager/teacher-list/{id}",method=RequestMethod.DELETE)
	public Message deleteTeacher(@PathVariable("id")Integer id) {
		managerService.removeTeacher(id);
		return Message.success();
	}
	
	@ResponseBody
	@RequestMapping(value="manager/student",method=RequestMethod.PUT)
	public Message updateStudent(Student student) {
		managerService.updateStudent(student);
		return Message.success();
	}
	
	@ResponseBody
	@RequestMapping(value="manager/teacher",method=RequestMethod.PUT)
	public Message updateTeacher(Teacher teacher) {
		System.out.println(teacher);
		managerService.updateTeacher(teacher);
		return Message.success();
	}

}
