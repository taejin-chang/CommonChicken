package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;

import com.commonchicken.dto.StoreDTO;
import com.commonchicken.service.StoreService;

@Controller
public class UserMypageController {

	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private StoreService storeService;
	
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
	
	@RequestMapping(value = "/store_apply", method = RequestMethod.POST)
	public String storeApply(@ModelAttribute StoreDTO store) throws IllegalStateException, IOException {
		
		if(!(store.getFile()==null)){
			
			String uploadDirectory = context.getServletContext().getRealPath("/resources/storeImg");
			
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
		
		storeService.insertStore(store);
		System.out.println("점포 등록 완료");
		
		return "user_mypage/account-home";
	}
	
	
}
