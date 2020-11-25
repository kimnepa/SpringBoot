package com.edu.board.domain;

import java.util.Date;

public class BoardDTO {

	private		int		bno;		//게시글 일련번호
	private		String	subject;	//게시글 제목
	private		String	content;	//게시글 내용
	private		String	writer;		//게시글 작성자
	private		Date	reg_date;	//게시글 작성일시
	
	
	
	
	public BoardDTO(int bno, String subject, String content, String writer, Date reg_date) {
		super();
		this.bno = bno;
		this.subject = subject;
		this.content = content;
		this.writer = writer;
		this.reg_date = reg_date;
	}


	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", subject=" + subject + ", content=" + content + ", writer=" + writer
				+ ", reg_date=" + reg_date + "]";
	}
	
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
