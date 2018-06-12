package com.wxxy.serviceImpl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wxxy.dao.AttendanceDao;
import com.wxxy.dao.CounselorDao;
import com.wxxy.dao.LeaveDao;
import com.wxxy.dao.StudentDao;
import com.wxxy.entities.Attendance;
import com.wxxy.entities.Leave;
import com.wxxy.entities.Student;
import com.wxxy.service.StudentService;

@Service("studentService")
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDao studentDao;
	
	@Autowired
	private LeaveDao leaveDao;
	
	@Autowired
	private AttendanceDao attendanceDao;
	
	@Autowired
	private CounselorDao counselorDao;

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

	@Override
	public void sendLeave(Leave leave) {
		leaveDao.sendLeave(leave);
	}

	@Override
	public List<Attendance> findAdRecord(int number) {
		return attendanceDao.findAll(number);
	}

	@Override
	public List<Attendance> findRecordByDate(int number, Date date) {
		return attendanceDao.findByDate(number, date);
	}

	@Override
	public String findSendName(int number) {
		Student student = studentDao.findByNumber(number);
		return counselorDao.findCounByPro(student.getProfession());
	}

	@Override
	public List<Leave> findCheckedList(int number) {
		return leaveDao.findCheckedList(number);
	}


}
