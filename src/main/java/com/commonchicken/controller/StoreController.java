package com.commonchicken.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.commonchicken.service.ReviewService;
import com.commonchicken.service.StoreService;

@Controller
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private ReviewService reviewService;
	//검색 상세페이지에서 점포 이름을 눌러서 들어온 점포페이지
	@GetMapping("/store")
	public String storeMove(@RequestParam String cmNum, int stoNum, Model model) {
		Map<String, Object> returnMap=new HashMap<String, Object>();
		
		String stoNumm = String.valueOf(stoNum);
		returnMap.put("cmNum", cmNum);
		returnMap.put("stoNum", stoNum);
		model.addAttribute("commonStore", storeService.getCommonStore(returnMap));
		model.addAttribute("storecommonlist", storeService.getStoreCommonlist(stoNum));
		model.addAttribute("storereviewlist", reviewService.selectStoreReviewList(stoNumm));
		model.addAttribute("selectStoreInfo", storeService.selectStoreInfoReivew(returnMap));
		model.addAttribute("cmNum", cmNum);
		model.addAttribute("stoNum", stoNum);
		
		
		return "store/store-main";
	}
}
