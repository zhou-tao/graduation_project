package com.wxxy.service;

import java.util.List;

import com.wxxy.entities.Attendance;
import com.wxxy.entities.Leave;

public interface TeacherService {
	
	public void recordAttendance(Attendance attendance);
	
	//��ѯָ��ѧ��ȱ�ڼ�¼
	public List<Attendance> findAtuAdRecord(int number);
	
	public List<Leave> findAllStuLeave();
	
	//���������
	public void checkLeave(int id,String status);

}
