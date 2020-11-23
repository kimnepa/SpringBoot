package com.edu.member.domain;

import lombok.Data;

@Data
public class MemberDTO {

	private	String id;
	private	String passwd;
	private	String name;
	private String tel;
	private String address;
	
	public MemberDTO() {}
}
