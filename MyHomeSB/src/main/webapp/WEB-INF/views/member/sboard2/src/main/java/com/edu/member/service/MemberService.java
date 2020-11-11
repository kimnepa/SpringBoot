package com.edu.member.service;

import java.util.List;

import javax.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;

import com.edu.member.controller.MemberController;
import com.edu.member.domain.MemberDTO;
import com.edu.member.mapper.MemberMapper;

@Service("com.edu.service.MemberService")
public class MemberService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(MemberController.class);

	@Resource(name="com.edu.member.mapper.MemberMapper")
	MemberMapper memberMapper;
	
	//아이디 중복 검사
	public int idCheck(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberService idCheck().....");
		
		int result = memberMapper.idCheck(memberDTO);		
				
		return result;
	}	
	
	public int insertMember(MemberDTO memberDTO) throws Exception {
		LOGGER.info("Service insertMember : " + memberDTO);
		return memberMapper.memberInsert(memberDTO);
	}
	
	public int deleteMember(String mid)	throws Exception {
		return memberMapper.memberDelete(mid);
	}

	

}




