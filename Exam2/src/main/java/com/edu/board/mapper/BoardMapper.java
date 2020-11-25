package com.edu.board.mapper;

import org.springframework.stereotype.Repository;

import com.edu.board.domain.BoardDTO;

@Repository("com.edu.board.mapper.BoardMapper")
public interface BoardMapper {

	public int boardCount() throws Exception;
	
	public int boardInsert(BoardDTO board) throws Exception;
}
