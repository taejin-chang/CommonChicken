package com.chicken.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.commonchicken.dto.MemberDTO;
import com.commonchicken.service.MemberService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class MemberServiceTest {	
	public static final Logger logger=LoggerFactory.getLogger(MemberServiceTest.class);
	
	@Autowired
	private MemberService memberService;
	
	@Test 
	public void testSelectMemberInfo() {
	MemberDTO member = new MemberDTO();
	member = memberService.selectMember("nolang@naver.com");
	
	logger.info(member.getMemAdd1()+member.getMemAdd2());
		
	}
}

