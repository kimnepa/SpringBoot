package com.edu.board.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.edu.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Resource(name="com.edu.board.service.BoardService")
	BoardService mBoardService;
	
	@RequestMapping("/insert")
	private String boardInsertForm() {
		System.out.println("Controller insert....");
		
		return "/board/insert";
	}
	
	@RequestMapping("/insertProc")
	private String boardInsertProc(HttpServletRequest request, 
			@RequestPart MultipartFile files) throws Exception {
		
		board.setSubject(request.getParameter("subject"));
		board.setContent(request.getParameter("content"));
		board.setWriter (request.getParameter("writer"));
		
		if(files.isEmpty()) {
			mBoardService.boardInsertService(board);
		} else {
			String fileName = files.getOriginalFilename();
			String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
			File destinationFile;
			String	destinationFileName;
			String	fileUrl = "C:/workspaceSP/sboard/src/main/webapp/WEB-INF/uploadFiles/";
			
			do {
				destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
				destinationFile     = new File(fileUrl + destinationFileName);
			} while(destinationFile.exists());
			
			destinationFile.boardInsertService(board);
			files.transferTo(destinationFile);
			
			file.setBno(board.getBno());
			file.setFileName(destinationFileName);
			file.setFileOriName(fileName);
			file.setFileUrl(fileUrl);
			
			mBoardService.fileInsertService(file);
		}
		
		
		return "redirect:/board/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
