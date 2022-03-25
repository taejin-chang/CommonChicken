package com.commonchicken.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityController {

	@RequestMapping("/community")
	public String login() {
		return "community/common-notice";
	}
	
}
