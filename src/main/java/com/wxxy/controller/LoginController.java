package com.wxxy.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.wxxy.entities.Message;
import com.wxxy.serviceImpl.LoginServiceImpl;

@Controller
public class LoginController {
	
	@Autowired
	private LoginServiceImpl loginService;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@RequestParam("number")int number,
			@RequestParam("password")String password,HttpSession session,
			Map<String,Object> map) {
		if(loginService.loginExits(number) == false) {
			return "errorLogin";
		}
		if(loginService.loginPass(number).equals(password)) {
			session.setAttribute("username", loginService.loginName(number));
			session.setAttribute("number", number);
			if(loginService.loginType(number).equals("student")) {
				return "student/home";
			}else if(loginService.loginType(number).equals("teacher")) {
				return "teacher/teacher";
			}else {
				return "manager/manager";
			}
		}else {
			return "errorLogin";
		}
	}
	
	@ResponseBody
	@RequestMapping("/loginNumber")
	public Message validNumber(@RequestParam("number")int number) {
		logger.debug("��ʼ��֤�û����Ƿ����...");
		if(loginService.loginExits(number) == false) {
			logger.debug("�û���������...");
			return Message.failed().add("errorNumMsg", "�û���������Ŷ~");
		}
		logger.debug("�û���������ȷ...");
		return Message.success();
	}
	
	@ResponseBody
	@RequestMapping("/loginPassword")
	public Message validPassword(@RequestParam("number")int number,
			@RequestParam("password")String password) {
		if(!loginService.loginPass(number).equals(password)) {
			return Message.success().add("errorPassMsg", "�������~");
		}
		return Message.success();
	}
	
}
