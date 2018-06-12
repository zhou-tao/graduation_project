package com.wxxy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wxxy.entities.Leave;

public interface LeaveDao {
	
	//�ύ�������
	public void sendLeave(Leave leave);
	
	//��ʾ����б�
	public List<Leave> findAll();
	
	public List<Leave> findCheckedList(int number);
	
	//��ʦ�����޸�״̬
	public void updateLeaveStatus(@Param("id")int id,@Param("status")String status);

}
