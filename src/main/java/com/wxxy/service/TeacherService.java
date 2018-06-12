package com.wxxy.service;

import java.util.List;

import com.wxxy.entities.Attendance;
import com.wxxy.entities.Leave;

public interface TeacherService {
	
	public void recordAttendance(Attendance attendance);
	
	//查询指定学生缺勤记录
	public List<Attendance> findAtuAdRecord(int number);
	
	public List<Leave> findAllStuLeave();
	
	//审批请假条
	public void checkLeave(int id,String status);

}
