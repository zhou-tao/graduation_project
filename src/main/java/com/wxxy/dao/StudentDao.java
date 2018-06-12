package com.wxxy.dao;

import java.util.List;

import com.wxxy.entities.Student;

public interface StudentDao {
	
	public List<Student> findAllStudent();
	
	public void add(Student student);
	
	public Student findByNumber(int number);
	
	public Student findById(int id);
	
	public Student findByName(String name);
	
	public String findPwdByName(String name);
	
	public void update(Student student);
	
	public void deleteById(int id);
	
	public String getPassword(int number);
	
	public String findNameByNum(int number);
	
	public int findCountByNumber(int number);
	
}
