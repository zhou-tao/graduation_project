package com.wxxy.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wxxy.dao.AttendanceDao;
import com.wxxy.dao.LeaveDao;
import com.wxxy.entities.Attendance;
import com.wxxy.entities.Leave;
import com.wxxy.service.TeacherService;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService{
	
	@Autowired
	private AttendanceDao attendanceDao;
	
	@Autowired
	private LeaveDao leaveDao;

	@Override
	public void recordAttendance(Attendance attendance) {
		attendanceDao.recordAttendence(attendance);
	}

	@Override
	public List<Attendance> findAtuAdRecord(int number) {
		return attendanceDao.findAll(number);
	}

	@Override
	public List<Leave> findAllStuLeave() {
		return leaveDao.findAll();
	}

	@Override
	public void checkLeave(int id, String status) {
		leaveDao.updateLeaveStatus(id, status);
	}
	
	

}
