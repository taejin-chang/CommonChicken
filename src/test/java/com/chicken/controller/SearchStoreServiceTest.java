package com.chicken.controller;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.commonchicken.dto.SearchStoreVO;
import com.commonchicken.service.SearchStoreService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class SearchStoreServiceTest {
	public static final Logger logger=LoggerFactory.getLogger(SearchStoreServiceTest.class);

	@Autowired
	private SearchStoreService searchStoreService;
	
	@Test
	public void testSearchStoreService() {
		/*
		Map<String, Object> returnMap1 = new HashMap<String, Object>();
		returnMap1.put("deliveryTime", "2022/03/09");
		returnMap1.put("juso", "서울시 테헤란로 111");
		
		List<SearchStoreVO> searchstorelist1 = searchStoreService.getMainSearch(returnMap1);
		
		for(SearchStoreVO search1:searchstorelist1) {
			logger.info(search1.toString());
		}
		*/
	}
		
		
		@Test
		public void testDetailSearchStoreService() throws ParseException {
			Map<String, Object> returnMap2 = new HashMap<String, Object>();
			
			int[] rated = {1,2};
			List<Integer> ratelist = new ArrayList<>();
			for(int element : rated) {
				ratelist.add(element);
			}
			
			SimpleDateFormat input_format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			
			returnMap2.put("deliveryTime", (Date)input_format.parse("2022-03-09 15:00:00"));
			returnMap2.put("juso", "서울시 테헤란로");
			returnMap2.put("deliveryTime2", (Date)input_format.parse("2022-03-09 12:00:00"));
			returnMap2.put("cmClose", (Date)input_format.parse("2022-03-09 14:45:39"));
			returnMap2.put("ratelist", ratelist);
			
			List<SearchStoreVO> searchstorelist2 = searchStoreService.getDetailSearch(returnMap2);
			
			for(SearchStoreVO search2:searchstorelist2) {
				
				logger.info(search2.toString());
			}
		}
	
}
