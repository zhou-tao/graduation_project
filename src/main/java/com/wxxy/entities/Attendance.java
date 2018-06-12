package com.wxxy.entities;

/**
 * È±ÇÚ¼ÇÂ¼±í
 * @author lenovo
 *
 */
public class Attendance {
	
	private int id;
	
	private int number;
	
	private String name;
	
	private String recordDesc;
	
	private String recordTime;
	
	private String recordName;
	
	public Attendance(int number, String name, String recordDesc, String recordTime, String recordName) {
		super();
		this.number = number;
		this.name = name;
		this.recordDesc = recordDesc;
		this.recordTime = recordTime;
		this.recordName = recordName;
	}

	@Override
	public String toString() {
		return "Attendance [id=" + id + ", number=" + number + ", name=" + name + ", recordDesc=" + recordDesc + ", recordTime="
				+ recordTime + ", recordName=" + recordName + "]";
	}

	public Attendance() {
		super();
	}

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

	public String getrecordDesc() {
		return recordDesc;
	}

	public void setrecordDesc(String recordDesc) {
		this.recordDesc = recordDesc;
	}

	public String getRecordTime() {
		return recordTime;
	}

	public void setRecordTime(String recordTime) {
		this.recordTime = recordTime;
	}

	public String getRecordName() {
		return recordName;
	}

	public void setRecordName(String recordName) {
		this.recordName = recordName;
	}


	
	
}
