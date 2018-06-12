package com.wxxy.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wxxy.entities.Attendance;

public interface AttendanceDao {
	
	//¼��һ��ȱ�ڼ�¼
	public void recordAttendence(Attendance attendance);
	
	//�鿴ָ��ѧ��������ȱ�ڼ�¼
	public List<Attendance> findAll(int number);
	
	public List<Attendance> findCheckedList(@Param("number")int number,@Param("status")int status);
	
	public List<Attendance> findByDate(@Param("number")int number,@Param("recordTime")Date recordTime);

}
