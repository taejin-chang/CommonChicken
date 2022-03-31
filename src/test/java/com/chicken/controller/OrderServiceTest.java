package com.chicken.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.commonchicken.dto.OrderDTO;
import com.commonchicken.service.OrderService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class OrderServiceTest {
	
	@Autowired
	private OrderService orderService;
	
//	@Test
//	public void testOrderService() {
//		OrderDTO order = new OrderDTO();
//		order.setCmNum(1);
//		order.setMemEmail("nolang@naver.com");
//		order.setOrdAdd1("수원시권중로110");
//		order.setOrdAdd2("611_703");
//		order.setOrdBundleNum("1");
//		order.setOrdDetailNum(1);
//		order.setOrdPayMethod(0);
//		order.setOrdPhone("010-2222-3333");
//		order.setOrdQuantity("2");
//		order.setOrdRequest("얼른와라 좀");
//		order.setOrdStatus(0);
//		order.setOrdZipcode("12123");
//		order.setPrdCode("AA1");
//		
//		orderService.insertOrder(order);
//		
//
//	}
	@Test
	public void testOrderSelect() {

		orderService.selectOrderManager(10);
		
		
	}
}
