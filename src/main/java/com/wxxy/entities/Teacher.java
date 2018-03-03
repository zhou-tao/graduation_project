package com.wxxy.entities;

public class Teacher {
	
	private int id;
	
	private String name;
	
	private int number;
	
	private int classNum;
	
	private String course;
	
	private String tel;
	
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

	public int getClassNum() {
		return classNum;
	}

	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Teacher(String name, int number, int classNum, String course, String tel, String password) {
		super();
		this.name = name;
		this.number = number;
		this.classNum = classNum;
		this.course = course;
		this.tel = tel;
		this.password = password;
	}

	public Teacher() {
		super();
	}

	@Override
	public String toString() {
		return "Teacher [id=" + id + ", name=" + name + ", number=" + number + ", classNum=" + classNum + ", course="
				+ course + ", tel=" + tel + ", password=" + password + "]";
	}

}
