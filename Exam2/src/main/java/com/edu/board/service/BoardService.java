package com.edu.board.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.edu.board.domain.BoardDTO;
import com.edu.board.mapper.BoardMapper;

@Service("com.edu.board.service.BoardService")
public class BoardService {

	@Resource(name="com.edu.board.mapper.BoardMapper")
	BoardMapper mBoardMapper;
	
	public int boardInsertService(BoardDTO board) throws Exception {
		
		return mBoardMapper.boardInsert(board);
	}
	
}
