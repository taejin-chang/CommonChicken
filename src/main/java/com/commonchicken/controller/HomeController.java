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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;

import com.commonchicken.dto.CommonDTO;
import com.commonchicken.dto.MemberDTO;
import com.commonchicken.dto.StoreDTO;
import com.commonchicken.service.CommonService;
import com.commonchicken.service.MemberService;
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
	
	@Autowired
	private MemberService memberSerivce;
	
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
	
	//main 페이지 
	@RequestMapping("/index")
	public String tiles() {
		return "main";
	}
	
	//상세 페이지
	@RequestMapping("/listing")
	public String listing(Model model) {
		model.addAttribute("listing","listing_value");
		return "search/listing";
	}
	
	//관리자 정보 페이지
	@RequestMapping(value = "store/owner", method = RequestMethod.GET)
	public String storeSelect(@RequestParam(defaultValue = "nolang@naver.com") String memEmail, Model model){
		model.addAttribute("storeOwner", memberSerivce.selectMember(memEmail));
		return "store_mypage/store_owner_info";
	}
	
	@RequestMapping(value = "store/owner", method = RequestMethod.POST)
	public String storeModify(@ModelAttribute MemberDTO member) throws IllegalStateException, IOException, StringIndexOutOfBoundsException{
		System.out.println("하이유~!!");

		if(!(member.getFile().isEmpty())){
		
			String uploadDirectory = context.getServletContext().getRealPath("/resources/images");
			
			String originalFileName=member.getFile().getOriginalFilename();
			
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
			
			member.getFile().transferTo(file);
			
			member.setMemOrigin(originalFileName);
			member.setMemUpload(uploadFilename);
		}else {
			member.setMemOrigin(member.getMemOrigin());
			member.setMemUpload(member.getMemUpload());	
		}
		System.out.println("하이유~!!");
		
		logger.info(member.getMemAdd1()+member.getMemAdd2()+ member.getMemEmail() + member.getMemBirthday());

		memberSerivce.updateMember(member);
		return "redirect:/store/owner";
	}
	
	
	
	//점포 관리 페이지 
	@RequestMapping(value = "store/info", method = RequestMethod.GET)
	public String storeSelect(@RequestParam(defaultValue = "6656")int StoName, Model model){
		model.addAttribute("storeInfo", storeService.selectStore(StoName));
		return "store_mypage/store_info";
	}
	
	@RequestMapping(value = "store/info", method = RequestMethod.POST)
	public String storeModify(@ModelAttribute StoreDTO store) throws IllegalStateException, IOException{	
		
		if(!(store.getFile().isEmpty())){
		
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
		
	
	
	
	//커먼 페이지 
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
		common.setMemEmail("nolang@naver.com");
		common.setCmDeliveryTime(cmDeliveryTime);
		common.setCmClose(cmClose);
		

		logger.info(common.getCmDeliveryTime()+" "+common.getCmClose()+" "+ common.getCmGoalPeople());
		
		commonService.insertCommon(common);
		
		
		return "redirect:/store/commonlist";
	}
	
	
	
	//커먼 리스트
	@RequestMapping(value = "store/commonlist", method = RequestMethod.GET)
	public String CommonList(Model model) {
		
		model.addAttribute("commonList", commonService.selectCommonList());
		
		return "store_mypage/store_common_list";
	}
	
	
	//커먼 삭제
	@RequestMapping(value="/store/deleteCommon/{cmNum}", method = RequestMethod.GET)
	public String deleteommon(@PathVariable int cmNum) {
		System.out.println("헤이 !!! ");
		System.out.println(cmNum);
		
		commonService.deleteCommon(cmNum);		
		return "redirect:/store/commonlist";
	}
	
	//공지사항 
	@RequestMapping(value = "admin/notice", method = RequestMethod.GET)
	public String selectNotice(){
//			model.addAttribute("storeInfo", storeService.selectStore(StoName));
		return "admin/admin_notice";
	}
}





