package com.wxxy.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wxxy.dao.ManagerDao;
import com.wxxy.dao.StudentDao;
import com.wxxy.dao.TeacherDao;
import com.wxxy.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private StudentDao studentDao;
	
	@Autowired
	private TeacherDao teacherDao;
	
	@Autowired
	private ManagerDao managerDao;
	
	@Override
	public String loginPass(int number) {
		if(number >= 2014010000) {
			return studentDao.getPassword(number);
		}else if(number < 2014010000 && number > 9999) {
			return teacherDao.getPassword(number);
		}else if(number <= 9999) {
			return managerDao.getPassword(number);
		}else {			
			return null;
		}
	}
	
	@Override
	public String loginType(int number) {
		if(number >= 2014010000) {
			return "student";
		}else if(number < 2014010000 && number > 9999) {
			return "teacher";
		}else if(number <= 9999) {
			return "manager";
		}else {			
			return null;
		}
	}

	@Override
	public String loginName(int number) {
		if(number >= 2014010000) {
			return studentDao.findNameByNum(number);
		}else if(number < 2014010000 && number > 9999) {
			return teacherDao.findNameByNum(number);
		}else if(number <= 9999) {
			return managerDao.findNameByNum(number);
		}else {			
			return null;
		}
	}

	@Override
	public Boolean loginExits(int number) {
		int student = studentDao.findCountByNumber(number);
		int teacher = teacherDao.findCountByNumber(number);
		int manager = managerDao.findCountByNumber(number);
		int count = student + teacher + manager;
		if(count > 0) {
			return true;
		}else {			
			return false;
		}
	}

}
