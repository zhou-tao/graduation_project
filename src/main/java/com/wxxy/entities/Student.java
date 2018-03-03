package com.wxxy.entities;

public class Student {
	
	private int id;
	
	private String name;
	
	private int number;
	
	private String department;
	
	private String profession;
	
	private int classNum;
	
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public int getClassNum() {
		return classNum;
	}

	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Student(String name, int number, String department, String profession, int classNum, String password) {
		super();
		this.name = name;
		this.number = number;
		this.department = department;
		this.profession = profession;
		this.classNum = classNum;
		this.password = password;
	}

	public Student() {
		super();
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", number=" + number + ", department=" + department
				+ ", profession=" + profession + ", classNum=" + classNum + ", password=" + password + "]";
	}

}
