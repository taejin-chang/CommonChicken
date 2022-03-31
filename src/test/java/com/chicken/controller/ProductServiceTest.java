package com.chicken.controller;

import java.util.ArrayList;
import java.util.Arrays;
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

import com.commonchicken.dto.SearchProductVO;
import com.commonchicken.service.ProductService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class ProductServiceTest {
	public static final Logger logger=LoggerFactory.getLogger(ProductServiceTest.class);
	
	@Autowired
	private ProductService productService;

	@Test
	public void testsearchProductService() {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		String prdCodeList1[] = {"B2","AA1","AB2","C1"};
		List<String> prdCodelist = new ArrayList<String>();
		for(String prdCode : prdCodeList1) {
			prdCodelist.add(prdCode);
		}
		
		System.out.println(prdCodelist);
		returnMap.put("prdCodelist", prdCodelist);
		
		List<SearchProductVO> searchProductlist = productService.getProduct(returnMap);
		
		for(SearchProductVO search:searchProductlist) {
			logger.info(search.toString());

		}
	}
}
