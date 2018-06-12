package com.wxxy.service;

import java.util.List;

import com.wxxy.entities.Student;
import com.wxxy.entities.Teacher;

public interface ManagerService {
	
	public void registerStudent(Student student);
	
	public void registerTeacher(Teacher teacher);
	
	public List<Student> getStudentList();
	
	public List<Teacher> getTeacherList();
	
	public void removeStudent(int id);
	
	public void removeTeacher(int id);
	
	public void updateStudent(Student student);
	
	public void updateTeacher(Teacher teacher);
	
}
