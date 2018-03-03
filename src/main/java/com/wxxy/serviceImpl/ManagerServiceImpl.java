package com.wxxy.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wxxy.dao.StudentDao;
import com.wxxy.dao.TeacherDao;
import com.wxxy.entities.Student;
import com.wxxy.entities.Teacher;
import com.wxxy.service.ManagerService;

@Service("ManagerService")
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	private StudentDao studentDao;
	
	@Autowired
	private TeacherDao teacherDao;
	
	@Override
	public void registerStudent(Student student) {
		studentDao.add(student);
	}

	@Override
	public void registerTeacher(Teacher teacher) {
		teacherDao.add(teacher);
	}

}
