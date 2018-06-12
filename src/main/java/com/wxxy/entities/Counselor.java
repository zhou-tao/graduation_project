package com.wxxy.entities;
/**
 * ¸¨µ¼Ô±±í
 * @author lenovo
 *
 */
public class Counselor {
	
	private int number;
	
	private String name;
	
	private String profession;

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

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public Counselor(int number, String name, String profession) {
		super();
		this.number = number;
		this.name = name;
		this.profession = profession;
	}

	@Override
	public String toString() {
		return "Counselor [number=" + number + ", name=" + name + ", profession=" + profession + "]";
	}

	public Counselor() {
		super();
	}

}
