package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;

import com.commonchicken.dto.OrderVO;
import com.commonchicken.dto.ReviewDTO;
import com.commonchicken.dto.ReviewVO;
import com.commonchicken.dto.StoreDTO;
import com.commonchicken.service.ReviewService;
import com.commonchicken.service.StoreService;
import com.commonchicken.service.UserOrderService;
import com.commonchicken.util.Pager;


@Controller
public class UserMypageController {

	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private UserOrderService userOrderService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("user/mypage")
	public String mypage() {
		return "user_mypage/account-home";
	}
	
	@RequestMapping("user/myCommon")
	public String myCommonpage(@RequestParam(defaultValue="1") int pageNum,Model model,HttpSession session) {
		System.out.println("메소드작동전");
		int totalBoard=userOrderService.getOrderCount((String)session.getAttribute("loginId"));
		int pageSize=5;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		System.out.println(totalBoard);
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("memEmail", (String)session.getAttribute("loginId"));
		
		model.addAttribute("orderPagerList",userOrderService.selectPagerOrderList(pagerMap));
		model.addAttribute("pager",pager);
		System.out.println("메소드작동후");
		
		return "user_mypage/account-myads";
		
	}
	
	@RequestMapping("user/myBoard")
	public String myBoardpage(@RequestParam(defaultValue="1") int pageNum,Model model,HttpSession session) {
		int totalBoard=reviewService.getReviewCount((String)session.getAttribute("loginId"));
		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("memEmail", (String)session.getAttribute("loginId"));
		
		model.addAttribute("reviewPagerList",reviewService.selectPagerReview(pagerMap));
		model.addAttribute("pager",pager);
		
		return "user_mypage/account-myboard";
	}
	
	
	
	
	
	
	
	
	@RequestMapping("user/myStoreApply")
	public String myStoreApply() {
		return "user_mypage/account-store_apply";
	}
	
	@RequestMapping("user/myClose")
	public String myClose(HttpSession session) {
		session.invalidate();
		return "user_mypage/account-close";
	}
	
	
	//리뷰작성하러들어가는 페이지
	@RequestMapping("review/write")
	public String reviewWrite(@RequestParam int ordDetailNum,int cmNum,Model model) {
		String ordDetailNum1=Integer.toString(ordDetailNum);
		model.addAttribute("ordDetailNum",ordDetailNum1);
		model.addAttribute("cmNum",cmNum);
		return "user_mypage/review_write";
	}
	
	//리뷰추가메소드
	@RequestMapping(value = "review/write", method = RequestMethod.POST )
	public String reviewInsert(@ModelAttribute ReviewDTO review,Model model,HttpSession session) throws IllegalStateException, IOException {
		
		if(!(review.getFile()==null)){
			
			String uploadDirectory = context.getServletContext().getRealPath("/resources/review");
			
			String originalFileName=review.getFile().getOriginalFilename();
			
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
			
			review.getFile().transferTo(file);
			
			review.setRevOrigin(originalFileName);
			review.setRevUpload(uploadFilename);
		}else {
			review.setRevOrigin(review.getRevOrigin());
			review.setRevUpload(review.getRevUpload());	
		}
		
		
		review.setMemEmail((String)session.getAttribute("loginId"));
		
		reviewService.insertReview(review);
		System.out.println("리뷰작성 완료!");
		return "user_mypage/account-home";
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
	
	@RequestMapping(value = "/review_insert", method = RequestMethod.POST)
	public String reviewInsert(@ModelAttribute ReviewDTO review) throws IllegalStateException, IOException {
		
		if(!(review.getFile()==null)){
			
			String uploadDirectory = context.getServletContext().getRealPath("/resources/storeImg");
			
			String originalFileName=review.getFile().getOriginalFilename();
			
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
			
			review.getFile().transferTo(file);
			
			review.setRevOrigin(originalFileName);
			review.setRevUpload(uploadFilename);
		}else {
			review.setRevOrigin(review.getRevOrigin());
			review.setRevUpload(review.getRevUpload());	
		}
		
		reviewService.insertReview(review);
		System.out.println("리뷰 등록 완료");
		
		return "user_mypage/account-home";
	}

	
	
	
	
	
	
	
	
}
