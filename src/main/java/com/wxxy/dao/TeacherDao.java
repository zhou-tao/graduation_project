package com.wxxy.dao;

import java.util.List;

import com.wxxy.entities.Teacher;

public interface TeacherDao {
	
	public List<Teacher> getAllTeacher();
	
	public Teacher findById(int id);
	
	public void add(Teacher teacher);
	
	public void update(Teacher teacher);
	
	public void deleteById(int id);
	
	public String getPassword(int number);
	
	public String findNameByNum(int number);
	
	public int findCountByNumber(int number);

}
