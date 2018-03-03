package com.wxxy.service;

public interface LoginService {
	
	public String loginPass(int number);
	
	public String loginType(int number);
	
	public String loginName(int number);
	
	public Boolean loginExits(int number);
	
}
