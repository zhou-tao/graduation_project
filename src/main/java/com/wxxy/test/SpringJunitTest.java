package com.wxxy.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wxxy.service.StudentService;
import com.wxxy.serviceImpl.LoginServiceImpl;

@ContextConfiguration(locations={"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class SpringJunitTest {
	
	@Autowired
	private LoginServiceImpl loginService;
	
	@Autowired
	private StudentService studentService;
	
	@Test
	public void test() {
		Boolean loginExits = loginService.loginExits(2014013852);
		System.out.println(loginExits);
		
//		String password = loginService.loginPass(2014013852);
//		System.out.println(password);
	}
	
	@Test
	public void testUpdatePwd() {
		System.out.println(studentService.updatePwd("ะกร๗", "12345", "2014013821"));
	}

}
