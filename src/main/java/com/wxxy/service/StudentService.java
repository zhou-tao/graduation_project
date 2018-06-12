package com.wxxy.service;

import java.util.Date;
import java.util.List;

import com.wxxy.entities.Attendance;
import com.wxxy.entities.Leave;
import com.wxxy.entities.Student;

public interface StudentService {
	
	public Student getInfo(String name);
	
	public Boolean updatePwd(String name,String oldPwd,String newPwd);
	
	public void sendLeave(Leave leave);
	
	public List<Leave> findCheckedList(int number);
	
	public List<Attendance> findAdRecord(int number);
	
	public List<Attendance> findRecordByDate(int number,Date date);
	
    public String findSendName(int number);

}
