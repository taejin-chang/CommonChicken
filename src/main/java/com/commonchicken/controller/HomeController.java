package com.commonchicken.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;

import com.commonchicken.dto.StoreDTO;
import com.commonchicken.service.StoreService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private StoreService storeService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main";
	}
	
	@RequestMapping("/index")
	public String tiles() {
		return "main";
	}
	
	@RequestMapping("/listing")
	public String listing(Model model) {
		model.addAttribute("listing","listing_value");
		return "search/listing";
	}
	
	@RequestMapping(value = "store/owner", method = RequestMethod.GET)
	public String storeOwnerInfo(@RequestParam(defaultValue = "6656")int StoName, Model model){
		model.addAttribute("storeOwner", storeService.selectStore(StoName));
		return "store_mypage/store_owner_info";
	}
	
	@RequestMapping(value = "store/info", method = RequestMethod.GET)
	public String storeInfo(@RequestParam(defaultValue = "6656")int StoName, Model model){
		model.addAttribute("storeInfo", storeService.selectStore(StoName));
		return "store_mypage/store_info";
	}
}


