package com.chicken.controller;

import java.text.SimpleDateFormat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.commonchicken.dto.BoardDTO;
import com.commonchicken.service.BoardService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class BoardServiceTest {
	
	SimpleDateFormat date_format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	public static final Logger logger=LoggerFactory.getLogger(BoardServiceTest.class);
	
	@Autowired
	private BoardService boardService;
	
//	BRD_NUM      NOT NULL NUMBER(20)     
//	MEM_EMAIL    NOT NULL VARCHAR2(50)   
//	BRD_TITLE    NOT NULL VARCHAR2(50)   
//	BRD_CONTENT  NOT NULL VARCHAR2(2000) 
//	BRD_IMG               VARCHAR2(100)  
//	BRD_DATE     NOT NULL DATE           
//	BRD_VIEWS    NOT NULL NUMBER         
//	BRD_CATEGORY NOT NULL NUMBER(1)      
//	BRD_STATUS   NOT NULL NUMBER(1)   

//	@Test 
//	public void testInsertBoard() {
//		BoardDTO board = new BoardDTO();
//		board.setMemEmail("nolang@naver.com");
//		board.setBrdTitle("제목2");
//		board.setBrdContent("내용2");
//		board.setBrdImg("이미지2");
//		board.setBrdCategory(1);
//		
//
//		boardService.insertBoard(board);		
//	}
	
	@Test 
	public void testSelectBoard() {
		
		boardService.selectBoardList(1);		
	}
}

