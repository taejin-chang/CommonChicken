package com.chicken.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	/*@Test
	public void testOrderSelect() {

		orderService.selectOrderManager(10);
		
	}*/
	@Test
	public void testOrderSelect() {
		Map<String,Object> map = new HashMap<String, Object>();

		
		map.put("ordStatus", "0");
		map.put("ordBundleNum", "1648797441247");
		
		orderService.updateOrderStatus(map);
		
	}
	 
	
//	@Test
//	public void testOrderInsert() {
//		//OrderDTO order;
//		
//		String ordBundleNum = System.currentTimeMillis()+"";
//		//order.setOrdBundleNum(ordBundleNum);
//
//		String prdCodeList[] = {"AA1", "AB2", "B1"};
//		List<String> productList = new ArrayList<String>();
//		for(String prdCode : prdCodeList) {
//			productList.add(prdCode);
//		}
//		//returnMap.put("prdCodelist", productList);
//		
//		String prdAmount[] = {"1","1","1"};
//		
//		List<String> prdAmountList = new ArrayList<String>();
//		for(String prdAM : prdAmount) {
//			prdAmountList.add(prdAM);
//		}
//		
//		for(int i=0;i<prdCodeList.length;i++) {
//			OrderDTO orderNew = new OrderDTO();
//			orderNew.setPrdCode(productList.get(i));
//			orderNew.setOrdQuantity(prdAmountList.get(i));
//			orderNew.setOrdBundleNum(ordBundleNum);
//			orderNew.setOrdDetailNum(i);
//			orderNew.setMemEmail("abc@naver.cmo");
//			orderNew.setCmNum(1);
//			orderNew.setOrdZipcode("111");
//			orderNew.setOrdAdd1("111");
//			orderNew.setOrdAdd2("111");
//			orderNew.setOrdPhone("010-22222");
//			orderNew.setOrdRequest("ㅇ자식");
//			orderNew.setOrdPayMethod(0);
//			orderNew.setOrdBundleNum(ordBundleNum);
//			orderService.insertOrder(orderNew);
//		}
//	}
}


















