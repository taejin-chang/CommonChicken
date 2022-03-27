package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;

import com.commonchicken.dto.CommonDTO;
import com.commonchicken.dto.StoreDTO;
import com.commonchicken.service.CommonService;
import com.commonchicken.service.StoreService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private CommonService commonService;
	
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
	public String storeSelect(@RequestParam(defaultValue = "6656")int StoName, Model model){
		model.addAttribute("storeInfo", storeService.selectStore(StoName));
		return "store_mypage/store_info";
	}
	
	@RequestMapping(value = "store/info", method = RequestMethod.POST)
	public String storeModify(@ModelAttribute StoreDTO store) throws IllegalStateException, IOException{	
		
		if(!(store.getFile()==null)){
		
			String uploadDirectory = context.getServletContext().getRealPath("/resources/images");
			
			String originalFileName=store.getFile().getOriginalFilename();
			
			System.out.println(originalFileName);
			
			File file=new File(uploadDirectory, originalFileName);
			
			String uploadFilename=originalFileName;
			
			int i=0;
			while(file.exists()) {
				i++;
				int index=originalFileName.lastIndexOf(".");
				uploadFilename=originalFileName.substring(0, index)+"_"+i+originalFileName.substring(index);
				file=new File(uploadDirectory, uploadFilename);
			}
			
			store.getFile().transferTo(file);
			
			store.setStoOrigin(originalFileName);
			store.setStoUpload(uploadFilename);
		}else {
			store.setStoOrigin(store.getStoOrigin());
			store.setStoUpload(store.getStoUpload());	
		}
		
		logger.info("점포명 = "+ store.getStoName()+", 주소"+store.getStoZipCode()+store.getStoAdd1()+store.getStoAdd2());

		storeService.updateStore(store);
		return "redirect:/store/info";
	}
	
	@RequestMapping(value = "store/common", method = RequestMethod.GET)
	public String Common(){
		return "store_mypage/store_common";
	}
	
	@RequestMapping(value = "store/common", method = RequestMethod.POST)
	public String CommonAdd(@ModelAttribute CommonDTO common) throws ParseException{
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date Delivery = sdf.parse(common.getCmDeliveryTime());
		String cmDeliveryTime = output.format(Delivery);
		
		Date close = sdf.parse(common.getCmDeliveryTime());
		String cmClose = output.format(close);

		
		common.setStoNum("6656");
		common.setMemEmail("jmaster1020@gmail.com");
		common.setCmDeliveryTime(cmDeliveryTime);
		common.setCmClose(cmClose);
		

		logger.info(common.getCmDeliveryTime()+" "+common.getCmClose()+" "+ common.getCmGoalPeople());
		
		commonService.insertCommon(common);
		
		
		return "redirect:/store/info";
	}
}


