package com.wxxy.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wxxy.entities.Attendance;

public interface AttendanceDao {
	
	//录入一条缺勤记录
	public void recordAttendence(Attendance attendance);
	
	//查看指定学生的所有缺勤记录
	public List<Attendance> findAll(int number);
	
	public List<Attendance> findCheckedList(@Param("number")int number,@Param("status")int status);
	
	public List<Attendance> findByDate(@Param("number")int number,@Param("recordTime")Date recordTime);

}
