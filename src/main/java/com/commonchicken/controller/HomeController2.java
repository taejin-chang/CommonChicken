package com.commonchicken.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController2 {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController2.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main";
	}
	

	@RequestMapping("/store")
	public String storeMain() {
		return "store/store-main";
	}
	@RequestMapping("/payment")
	public String paymentAlert() {
		return "payment/payment_alert";
	}
	@RequestMapping("/review")
	public String review() {
		return "community/review";
	}
	@RequestMapping("/order")
	public String order() {
		return "order/order";
	}
	
	
	
}


