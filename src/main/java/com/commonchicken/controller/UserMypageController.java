package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.commonchicken.dto.ReviewDTO;
import com.commonchicken.dto.ReviewVO;
import com.commonchicken.dto.StoreDTO;
import com.commonchicken.service.ReviewService;
import com.commonchicken.service.StoreService;
import com.commonchicken.util.Pager;


@Controller
public class UserMypageController {

	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private ReviewService reviewService;
	
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
	public String myBoardpage(@RequestParam(defaultValue="1") int pageNum,Model model) {
		int totalBoard=reviewService.getReviewCount();
		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("reviewPagerList",reviewService.selectPagerReview(pagerMap));
		model.addAttribute("pager",pager);
		
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
	
	/*
	@RequestMapping(value = "/board_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> restBoardList(@RequestParam(defaultValue = "1") int pageNum) {
		//System.out.println("pageNum = "+pageNum);
		
		//REST_BOARD 테이블에 저장된 모든 게시글의 갯수를 검색하여 반환받아 저장
		int totalBoard=restBoardService.getRestBoardCount();
		int pageSize=5;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		
		//페이징 처리 관련 값을 제공하는 Pager 클래스로 객체를 생성하여 저장
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		//RestBoardService 클래스의 메소드 호출을 위해 매개변수에 전달하기 위한 Map 객체 생성
		// => 요청 페이지의 시작 행번호와 종료 행번호를 Map 객체의 엔트리로 저장하여 SQL 명령에 제공
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		//요청 처리 메소드의 반환값으로 사용될 Map 객체 생성
		// => 요청 페이지에 대한 게시글 목록과 페이징 처리 관련 정보를 Map 객체의 엔트리로 저장하여 반환
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("restBoardList", restBoardService.getRestBoardList(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	*/
	public String showReviewList(@RequestParam(defaultValue="1") int pageNum){
		int totalBoard=reviewService.getReviewCount();
		int pageSize=4;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("reviewList", reviewService.selectPagerReview(pagerMap));
		returnMap.put("pager", pager);
		
		return "user_mypage/account-myboard";
		
	}
	
	
	
	
	
	
	
	
	
	
}
