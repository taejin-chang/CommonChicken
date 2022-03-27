package com.commonchicken.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class UserMypageController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("user/mypage")
	public String mypage() {
		return "user_mypage/account-home";
	}
	
	@RequestMapping("user/myCommon")
	public String myCommonpage() {
		return "user_mypage/account-myads";
	}
	
	@RequestMapping("user/myBoard")
	public String myBoardpage() {
		return "user_mypage/account-myboard";
	}
	
	@RequestMapping("user/myStoreApply")
	public String myStoreApply() {
		return "user_mypage/account-store_apply";
	}
	
	@RequestMapping("user/myClose")
	public String myClose() {
		return "user_mypage/account-close";
	}
	
	
	@RequestMapping("review/write")
	public String reviewWrite() {
		return "user_mypage/review_write";
	}
	
	
}
