package com.commonchicken.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.commonchicken.exception.SearchStoreFailException;
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
	public String storeMove(@RequestParam String cmNum, @RequestParam String stoNum, Model model) throws SearchStoreFailException {
		Map<String, Object> returnMap=new HashMap<String, Object>();
		
		String stoNumm = String.valueOf(stoNum);
		returnMap.put("cmNum", cmNum);
		returnMap.put("stoNum", stoNum);
		model.addAttribute("commonStore", storeService.getCommonStore(returnMap));
		model.addAttribute("storecommonlist", storeService.getStoreCommonlist(stoNum));
		model.addAttribute("storereviewlist", reviewService.selectStoreReviewList(stoNum));
		if(storeService.selectStoreInfoReivewAvg(returnMap)==null) {
			model.addAttribute("selectStoreReviewAvg", null);
		} else {
			model.addAttribute("selectStoreReviewAvg", storeService.selectStoreInfoReivewAvg(returnMap).getReviewDTO().getRevRated());
		};
		if(storeService.selectStoreInfoReivewCount(returnMap)==null) {
			model.addAttribute("selectStoreReviewCount", null);
		} else {
			model.addAttribute("selectStoreReviewCount", storeService.selectStoreInfoReivewCount(returnMap).getReviewDTO().getRevRated());
		};
		model.addAttribute("cmNum", cmNum);
		model.addAttribute("stoNum", stoNum);
		
		return "store/store-main";
	}
	
	@ExceptionHandler(value = SearchStoreFailException.class)
	//예외처리 메소드의 매개변수에는 예외처리 관련 값(객체)를 제공받아 사용 가능하며 ViewName를 
	//반환하여 JSP 문서로 응답 처리
	public String exceptionHandler(SearchStoreFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		//model.addAttribute("userinfo", exception.getUserinfo());
		return "error/store-error";
	}
}
