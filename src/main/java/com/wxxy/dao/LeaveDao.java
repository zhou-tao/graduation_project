package com.wxxy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wxxy.entities.Leave;

public interface LeaveDao {
	
	//提交请假申请
	public void sendLeave(Leave leave);
	
	//显示请假列表
	public List<Leave> findAll();
	
	public List<Leave> findCheckedList(int number);
	
	//老师审批修改状态
	public void updateLeaveStatus(@Param("id")int id,@Param("status")String status);

}
