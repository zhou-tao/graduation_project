package com.wxxy.service;

import com.wxxy.entities.Student;

public interface StudentService {
	
	public Student getInfo(String name);
	
	public Boolean updatePwd(String name,String oldPwd,String newPwd);

}
