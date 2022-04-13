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

import com.commonchicken.dto.StoreDTO;
import com.commonchicken.service.StoreService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class StoreServiceTest {
	
	public static final Logger logger=LoggerFactory.getLogger(StoreServiceTest.class);
	
	@Autowired
	private StoreService storeService;
	
//	STO_NUM          NOT NULL VARCHAR2(50)   
//	MEM_EMAIL        NOT NULL VARCHAR2(50)   
//	STO_CODE         NOT NULL VARCHAR2(50)   
//	STO_NAME         NOT NULL VARCHAR2(50)   
//	STO_CEO          NOT NULL VARCHAR2(50)   
//	STO_CONDITION    NOT NULL VARCHAR2(50)   
//	STO_SECTOR       NOT NULL VARCHAR2(50)   
//	STO_ZIP_CODE     NOT NULL VARCHAR2(50)   
//	STO_ADD1         NOT NULL VARCHAR2(50)   
//	STO_ADD2         NOT NULL VARCHAR2(50)   
//	STO_PHONE        NOT NULL VARCHAR2(50)   
//	STO_STATUS       NOT NULL NUMBER(1)      
//	STO_OPENNING              VARCHAR2(50)   
//	STO_MINORDER              VARCHAR2(50)   
//	STO_PAYMENT               VARCHAR2(50)   
//	STO_BONE_ORG              VARCHAR2(50)   
//	STO_BONELESS_ORG          VARCHAR2(50)   
//	STO_MESSAGE               VARCHAR2(1000) 
//	@Test 
//	public void testUpdateStoreUserInfo() {
//		StoreDTO store = new StoreDTO();
//		store.setStoNum("6656");
//		store.setMemEmail("nolang@naver.com");
//		store.setStoCode(123);
//		store.setStoName("교촌치킨 일산점");
//		store.setStoCeo("정현우님");
//		store.setStoCondition("1");
//		store.setStoSector("1");
//		store.setStoZipCode("1");
//		store.setStoAdd1("서울시 테헤란로 98");
//		store.setStoAdd2("현우빌딩 34호");
//		store.setStoPhone("010-1111-111");
//		store.setStoStatus(1);
//		store.setStoOpenning("1");
//		store.setStoMinorder("10000");
//		store.setStoPayment("현금");
//		store.setStoBoneOrg("국내산");
//		store.setStoBonelessOrg("국내산");
//		store.setStoMessage("많이 오세요");
//		store.setStoOrigin("12");
//		store.setStoUpload("12");
//		
//		logger.info("점포명 = "+ store.getStoName()+", 주소"+store.getStoZipCode()+store.getStoAdd1()+store.getStoAdd2());
//
//	
//		storeService.updateStore(store);
//		
//	}
	
//	@Test
//	public void testSelectStoreUserInfo() {
//		StoreDTO store =storeService.selectStore(6656);
//		
//		logger.info("점포명 = "+ store.getStoName()+", 주소"+store.getStoZipCode()+store.getStoAdd1()+store.getStoAdd2());
//	}
	
//	@Test
//	public void testSelectEamil() {
//		storeService.selectStoreEmail("nolang@naver.com");
//	}
//	@Test
//	public void testDelete() {
//		storeService.deleteStore("999");
//	}
//	]
	
//	@Test
//	public void testSelectStore() {
//		Map<String,Object> map = new HashMap<String, Object>();
//		map.put("startRow", 1);
//		map.put("endRow", 5);
//		storeService.selectStoreList(map);
//	}
	@Test
	public void testSelectCount() {
		
		Map<String,Object>map = new HashMap<String, Object>();
		map.put("stoNum", "10000");
		map.put("stoStatus", 1);
		storeService.updateStoStatus(map);
	}

}

