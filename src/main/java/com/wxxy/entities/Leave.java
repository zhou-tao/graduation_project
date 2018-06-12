package com.wxxy.entities;
/**
 * 请假表
 * @author lenovo
 *
 */

public class Leave {
	
	private int id;
	
	private int number;


	private String name;
	
	private String leaveType;
	
	//请假开始时间
	private String startTime;
	
	//结束时间
	private String endTime;
	
	private String leaveDesc;
	
	private String sendName;
	
	//审批进度
	private String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLeaveType() {
		return leaveType;
	}

	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getLeaveDesc() {
		return leaveDesc;
	}

	public void setLeaveDesc(String leaveDesc) {
		this.leaveDesc = leaveDesc;
	}

	public String getSendName() {
		return sendName;
	}

	public void setSendName(String sendName) {
		this.sendName = sendName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Leave(int number, String name, String leaveType, String startTime, String endTime, String leaveDesc,
			String sendName, String status) {
		super();
		this.number = number;
		this.name = name;
		this.leaveType = leaveType;
		this.startTime = startTime;
		this.endTime = endTime;
		this.leaveDesc = leaveDesc;
		this.sendName = sendName;
		this.status = status;
	}

	public Leave() {
		super();
	}
	
}