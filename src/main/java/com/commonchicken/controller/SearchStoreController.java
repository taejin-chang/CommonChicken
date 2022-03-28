package com.commonchicken.controller;

import java.text.ParseException;
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
		model.addAttribute("mainSearchList", searchStoreService.getMainSearch(map));
		model.addAttribute("deliveryTime", map.get("deliveryTime"));
		model.addAttribute("juso", map.get("juso"));
		
		return "search/listing";
	}	
	
	//상세페이지에서 REST 방식의 비동기식 검색
	@PostMapping("/listing_searchdetail")
	@ResponseBody
	public Map<String, Object> searchDetail(@RequestBody Map<String, Object> map, Model model) {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		returnMap.put("detailSearchList", searchStoreService.getDetailSearch(map));
		return returnMap;
	}
	
	
	
}
