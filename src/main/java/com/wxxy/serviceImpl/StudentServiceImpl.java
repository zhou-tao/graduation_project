package com.wxxy.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wxxy.dao.StudentDao;
import com.wxxy.entities.Student;
import com.wxxy.service.StudentService;

@Service("studentService")
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDao studentDao;

	@Override
	public Student getInfo(String name) {
		return studentDao.findByName(name);
	}

	@Override
	public Boolean updatePwd(String name, String oldPwd, String newPwd) {
		if(name == null || name.trim() == null) {	
			return false;
		}
		Student student = studentDao.findByName(name);
		student.setPassword(newPwd);
		if(studentDao.findPwdByName(name).equals(oldPwd)) {
			studentDao.update(student);
			return true;
		}else {
			return false;
		}
	}


}
