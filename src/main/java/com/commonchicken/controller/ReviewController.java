package com.commonchicken.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.commonchicken.service.ReviewService;

@Controller

public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//전체리뷰페이지에 들어왔을때 모든 리뷰를 가져오도록 처리.
	@RequestMapping("/review")
	public String showReviewList(Model model) {
		
		model.addAttribute("reviewList",reviewService.selectAllReview());
		
		return "community/review";
	}
	
}
