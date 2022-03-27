package com.commonchicken.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String searchMain(@RequestParam Map<String, Object> map, Model model) {
	
	model.addAttribute("mainSearchList", searchStoreService.getMainSearch(map));	
		
	//returnMap.put("juso", searchStoreService.getMainSearch(returnMap));
	
	
	//returnMap.put("mainSearchList", searchStoreService.getMainSearch(returnMap));
		
	return "search/listing";
	}	
}
