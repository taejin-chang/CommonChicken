package com.chicken.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.commonchicken.service.ReplyService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class ReplyServiceTest {	
	public static final Logger logger=LoggerFactory.getLogger(ReplyServiceTest.class);
	
	@Autowired
	private ReplyService replyService;
	
	@Test 
	public void testReply() {
		replyService.selectReplyList("6656");
		System.out.println("하이");
	}
	

}

