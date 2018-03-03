package com.wxxy.service;

import com.wxxy.entities.Student;
import com.wxxy.entities.Teacher;

public interface ManagerService {
	
	public void registerStudent(Student student);
	
	public void registerTeacher(Teacher teacher);

}
