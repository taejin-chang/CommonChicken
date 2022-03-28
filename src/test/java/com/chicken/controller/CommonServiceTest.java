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

import com.commonchicken.dto.CommonDTO;
import com.commonchicken.service.CommonService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class CommonServiceTest {
	
	SimpleDateFormat date_format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	public static final Logger logger=LoggerFactory.getLogger(CommonServiceTest.class);
	
	@Autowired
	private CommonService commonService;
	
//	CM_NUM           NOT NULL NUMBER(10)   
//	CM_DELIVERY_TIME          DATE         
//	CM_CLOSE                  DATE         
//	CM_GOAL_PEOPLE   NOT NULL NUMBER(10)   
//	CM_REGDATE                DATE         
//	CM_STATUS                 NUMBER(1)    
//	CM_SALES         NOT NULL NUMBER(10)   
//	STO_NUM          NOT NULL VARCHAR2(50) 
//	MEM_EMAIL        NOT NULL VARCHAR2(50) 
	

	@Test 
	public void testUpdateStoreUserInfo() {
		CommonDTO common = new CommonDTO();
		common.setCmDeliveryTime("2020-03-27 22-00-00");
		common.setCmClose("2020-03-27 22-00-00");
		common.setCmGoalPeople(20);
		common.setStoNum("6656");
		common.setMemEmail("nolang@naver.com");
		
//		logger.info(common.getCmDeliveryTime()+common.getCmClose()+common.getCmGoalPeople()+common.getCmSales()+
//				common.getStoNum()+common.getMemEmail());

		commonService.insertCommon(common);		
	}
}

