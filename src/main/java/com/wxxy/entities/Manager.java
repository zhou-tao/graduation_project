package com.wxxy.entities;

public class Manager {
	
	private int id;
	
	private String name;
	
	private String tel;
	
	private String password;
	
	private int number;

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

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public Manager(String name, String tel, String password, int number) {
		super();
		this.name = name;
		this.tel = tel;
		this.password = password;
		this.number = number;
	}

	public Manager() {
		super();
	}

	@Override
	public String toString() {
		return "Manager [id=" + id + ", name=" + name + ", tel=" + tel + ", password=" + password + ", number=" + number
				+ "]";
	}

}
