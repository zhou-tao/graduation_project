package com.wxxy.dao;

public interface ManagerDao {
	
	public String getPassword(int number);
	
	public String findNameByNum(int number);
	
	public int findCountByNumber(int number);

}
