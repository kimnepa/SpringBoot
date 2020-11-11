package com.edu.member.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.edu.member.domain.MemberDTO;
import com.edu.member.service.MemberService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/member/*") // MemberController에서 공통적으로 사용될 url mapping
public class MemberController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(MemberController.class);
	
	// 컨트롤러 => 서비스 => Mapper 순서로!!
	//@Resource(name="com.edu.service.MemberService")
	@Inject
	MemberService memberService;
	
	// 회원가입 GET : 회원가입 화면을 보려고 요청이 들어오면
	// 웹 브라우저에서 http://localhost:8070/member/register으로 호출한다.
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String getRegister() throws Exception {
		LOGGER.info("MemberController getRegister().....");
		return "/member/register"; // => WEB-INF/views/member/register.jsp
	}
	
	// 회원가입 POST : 회원가입에 필요한 자료를 가지고 회원가입 요청이 들어오면
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String postRegister(MemberDTO memberDTO, Model model) throws Exception {
		LOGGER.info("MemberController postRegister().....");
		
		// 회원아이디가 존재하는지 검사한다.
		// 데이터가 존재하면 1을 리턴하고 아니면 0을 리턴하는 idCheck메서드를 MemberService에 만든다.
		int result = memberService.idCheck(memberDTO);
		LOGGER.info("MemberController Return Count[" + result + "].....");
		
		if(result >= 1) {
			return "/member/register";
		} else {
			memberService.insertMember(memberDTO);
		}
		
		return "redirect:/member/login";
	}	

	//게시글 삭제
	//삭제할 게시번호를 받아서 서비스한테 게시번호를 주고 삭제작업을 의뢰한다.
//	@RequestMapping("/delete")
//	public String delete(@RequestParam("b_no") int b_no) throws Exception {
//		System.out.println("Controller delete Before");
//		boardService.boardDelete(b_no);
//		return "redirect:/board/list";
//	}
	


} // End - public class BoardController













