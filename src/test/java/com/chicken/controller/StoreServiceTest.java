package com.chicken.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.commonchicken.dto.StoreDTO;
import com.commonchicken.service.StoreService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/CommonChicken/**/*.xml"})
public class StoreServiceTest {
	
	private static final Logger logger=LoggerFactory.getLogger(StoreServiceTest.class);
	
	@Autowired
	private StoreService storeService;
	
	@Test
	public void testSelectStoreUserInfo() {
		StoreDTO store =storeService.selectStore(6656);
		
		logger.info("점포명 = "+ store.getStoName()+", 주소"+store.getStoZipCode()+store.getStoAdd1()+store.getStoAdd2());

	}

}



