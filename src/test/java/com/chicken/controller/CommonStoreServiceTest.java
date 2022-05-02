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
import com.commonchicken.exception.SearchStoreFailException;
import com.commonchicken.service.StoreService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class CommonStoreServiceTest {
	public static final Logger logger=LoggerFactory.getLogger(CommonStoreServiceTest.class);

	@Autowired
	private StoreService storeService;
	
	@Test
	public void testCommonStoreService() throws ParseException, SearchStoreFailException {
		
		Map<String, Object> returnMap1 = new HashMap<String, Object>();
		//SimpleDateFormat input_format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		//returnMap1.put("deliveryTime", (Date)input_format.parse("2022-03-09 15:00:00"));
		//returnMap1.put("juso", "서울시 테헤란로 111");
		returnMap1.put("cmNum", "1");
		returnMap1.put("stoNum", "6656");
		
		List<CommonStoreVO> commonstorelist1 = storeService.getCommonStore(returnMap1);
		
		for(CommonStoreVO commonstore:commonstorelist1) {
			logger.info(commonstore.toString());
		}
		
	}
		
	
}
