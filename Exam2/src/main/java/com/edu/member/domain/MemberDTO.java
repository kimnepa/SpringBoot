package com.edu.member.domain;


public class MemberDTO {
	private	String	userid;
	private	String	passwd;
	private	String	name;
	private int number;
	private String gender;
	private String email;
	private String address;
	
	
	
	
	public MemberDTO(String userid, String passwd, String name, int number, String gender, String email,
			String address) {
		super();
		this.userid = userid;
		this.passwd = passwd;
		this.name = name;
		this.number = number;
		this.gender = gender;
		this.email = email;
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [userid=" + userid + ", passwd=" + passwd + ", name=" + name + ", number=" + number
				+ ", gender=" + gender + ", email=" + email + ", address=" + address + "]";
	}
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	


	
	
}
