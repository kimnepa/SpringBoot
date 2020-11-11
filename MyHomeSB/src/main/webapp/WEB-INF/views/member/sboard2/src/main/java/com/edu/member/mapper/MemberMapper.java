package com.edu.member.mapper;

import org.springframework.stereotype.*;

import com.edu.member.domain.MemberDTO;

@Repository("com.edu.member.mapper.MemberMapper")
public interface MemberMapper {
	
	// 아이디 중복 체크
	public int idCheck(MemberDTO memberDTO) throws Exception;

	// 멤버 등록
	public int memberInsert(MemberDTO memberDTO) throws Exception;
	
	// 멤버 삭제
	public int 	memberDelete(String id)	throws Exception;

	

}
