package com.chicken.controller;

import java.text.ParseException;
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

import com.commonchicken.dto.CommonStoreVO;
import com.commonchicken.service.StoreService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class CommonStoreServiceTest {
	public static final Logger logger=LoggerFactory.getLogger(CommonStoreServiceTest.class);

	@Autowired
	private StoreService storeService;
	
	@Test
	public void testCommonStoreService() throws ParseException {
		
		Map<String, Object> returnMap1 = new HashMap<String, Object>();
		returnMap1.put("cmNum", "2");
		returnMap1.put("stoNum", "7841");
		
		List<CommonStoreVO> commonstorelist1 = storeService.getCommonStore(returnMap1);
		
		for(CommonStoreVO commonstore:commonstorelist1) {
			logger.info(commonstore.toString());
		}
		
	}
		
	
}
