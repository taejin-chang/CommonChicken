package com.commonchicken.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.commonchicken.dto.SearchStoreVO;
import com.commonchicken.service.SearchStoreService;

@Controller
public class SearchStoreController {
	
	@Autowired
	private SearchStoreService searchStoreService;
	
	//메인페이지에서 헤더메뉴를 통해 들어온 상세페이지
	@GetMapping("/listing")
	public String searchMain() {
		return "search/listing";
	}
	
	//메인페이지에서 검색을 통해 들어온 상세페이지
	@PostMapping("/listing_search")
	public String searchMain(@RequestParam Map<String, Object> map, Model model) throws ParseException {
		SearchStoreVO searchStoreVO = new SearchStoreVO();
		Map<String, Object> returnMap = new HashMap<String, Object>();
		SimpleDateFormat input_format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		//String juso = (String)map.get("juso");
		//String deliveryTime1 = (String)map.get("deliveryTime");
		//Date deliveryTime = input_format.parse(deliveryTime1);
		model.addAttribute("mainSearchList", searchStoreService.getMainSearch(map));
		model.addAttribute("deliveryTime", map.get("deliveryTime"));
		model.addAttribute("juso", map.get("juso"));
		
		//returnMap.put("juso", searchStoreVO.geta);
		//returnMap.put("deliveryTime", searchStoreVO.getCmDeliveryTime());
		//returnMap.put("juso", searchStoreService.getMainSearch(returnMap));
		//returnMap.put("mainSearchList", searchStoreService.getMainSearch(returnMap));
		return "search/listing";
	}	
	
	@PostMapping("/listing_searchdetail")
	@ResponseBody
	public String searchDetail(@RequestBody Map<String, Object> map, Model model) {
		model.addAttribute("detailSearchList", searchStoreService.getDetailSearch(map));	
		//searchStoreService.getDetailSearch(map);
		return "success";
	}
}
