package com.chicken.controller;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.commonchicken.service.ReviewService;
import com.commonchicken.util.Pager;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class ReviewServiceTest {	
	public static final Logger logger=LoggerFactory.getLogger(ReviewServiceTest.class);
	
	@Autowired
	private ReviewService reviewService;
	
//	@Test 
//	public void testReviewInfo() {
//		reviewService.selectStoreReviewList("6656");
//	}
//	
//	@Test 
//	public void testReviewListInfo() {
//		
//		int pageNum =1;
//		int totalBoard=reviewService.getReviewCount("");
//		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
//		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
//		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
//		Map<String, Object> pagerMap=new HashMap<String, Object>();
//		pagerMap.put("startRow", pager.getStartRow());
//		pagerMap.put("endRow", pager.getEndRow());
//		
//		reviewService.selectPagerReview(pagerMap);
//	}
	@Test 
	public void testReviewListInfo() {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("stoNum", "6656");
		map.put("startRow", 1);
		map.put("endRow", 5);
		
		reviewService.selectReviewReply(map);
	}
//	@Test 
//	public void testReviewCount() {
//
//		
//	int count =	reviewService.selectStoreReviewMng("6656");
//	System.out.println(count);
//	}
	

}

