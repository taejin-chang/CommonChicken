package com.commonchicken.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class OrderController {
	
	
	//메인페이지에서 헤더메뉴를 통해 들어온 상세페이지
	@PostMapping("/order")
	public String orderMain(Model model) {
		return "order/order";
	}
}
