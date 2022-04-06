package com.chicken.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.commonchicken.service.ReviewService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class ReviewServiceTest {	
	public static final Logger logger=LoggerFactory.getLogger(ReviewServiceTest.class);
	
	@Autowired
	private ReviewService reviewService;
	
	@Test 
	public void testReviewInfo() {
		reviewService.selectStoreReviewList("6656");
	}
	

}

