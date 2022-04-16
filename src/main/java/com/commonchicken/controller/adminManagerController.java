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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import com.commonchicken.dto.BoardDTO;
import com.commonchicken.service.BoardService;
import com.commonchicken.service.CommonBoardService;
import com.commonchicken.service.CommonService;
import com.commonchicken.service.MemberService;
import com.commonchicken.service.OrderManagerService;
import com.commonchicken.service.OrderService;
import com.commonchicken.service.ProductService;
import com.commonchicken.service.ReplyService;
import com.commonchicken.service.ReviewService;
import com.commonchicken.service.StoreService;
import com.commonchicken.util.Pager;

@Controller
public class adminManagerController {
	private static final Logger logger = LoggerFactory.getLogger(adminManagerController.class);
	
	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private OrderService orderService;

	@Autowired
	private OrderManagerService orderManagerService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ReplyService replyService;
	
	@Autowired
	private CommonService commonService;

	@Autowired
	private CommonBoardService commonboardService;
	
	// 페이지 회원관리===================================================================================				
	@RequestMapping(value = "/admin/member", method = RequestMethod.GET)
	public String adminMember(@RequestParam(defaultValue="1") int pageNum,  Model model, Map<String, Object> pagerMap){
		System.out.println("하이!");
		
		
		int totalBoard=memberService.getMemberCount();
		int pageSize=8;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("pager",pager);
		model.addAttribute("memberList", memberService.selectAllMemberList(pagerMap));
					
		return "admin/admin_member";
	}
			

	
	// 페이지 점포 관리===================================================================================				
	@RequestMapping(value = "/admin/store", method = RequestMethod.GET)
	public String adminStore(@RequestParam(defaultValue="1") int pageNum,  Model model, Map<String, Object> pagerMap){
		
		int totalBoard=storeService.getStoreCount();
		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("pager",pager);
		model.addAttribute("storeList", storeService.selectStoreList(pagerMap));
					
		return "admin/admin_store";
	}	
	
	@RequestMapping(value = "/admin/store", method = RequestMethod.POST)
	public String changeStoreStatus(@RequestParam Map<String,Object>map){	
		System.out.println("하이하이");
		map.get("memEmail");
		map.get("memStatus");
		System.out.println(map.get("stoNum"));
		System.out.println(map.get("stoStatus"));
			
		storeService.updateStoStatus(map);
		
		return "redirect:/admin/store";
	}
	
	@RequestMapping(value = "/admin/order", method = RequestMethod.GET)
	public String adminOrder(Model model){
		
		System.out.println("하이!");
		//model.addAttribute("commonList", commonService.selectCommonList());
		model.addAttribute("orderManager", orderManagerService.selectOrderTestList(""));
		model.addAttribute("productManager", orderManagerService.selectOrderTest2List(""));
		return "admin/admin_order";
	}
	
	@RequestMapping(value="/order/changeOrder/{ordStatus}/{ordBundleNum}", method = RequestMethod.GET)
	public String changeOrder(@PathVariable int ordStatus, @PathVariable String ordBundleNum, Map<String,Object> map ) {
		System.out.println("배달 시작입니다람1");
		System.out.println("배달 시작입니다람2");
		map.put("ordStatus", ordStatus);
		map.put("ordBundleNum", ordBundleNum);
		
		orderService.updateOrderStatus(map);
		System.out.println("배달 시작입니다람3");
		
		return "redirect:/admin/order";
	}
	
	//공지사항리스트
	@RequestMapping(value = "admin/notice", method = RequestMethod.GET)
	public String selectNoticeList(@RequestParam(defaultValue="1") int pageNum,@RequestParam(defaultValue = "1")int brdCategory,Model model){
		System.out.println("공지사항 리스트");
		int totalBoard=boardService.getBoardCount(brdCategory);
		int pageSize=10;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("noticeList",boardService.selectPagerBoardList(pagerMap));
		model.addAttribute("pager",pager);

		return "admin/admin_notice";
	}
		
	
	//공지 사항 글쓰,기 페이지 
	@RequestMapping(value = "admin/notice_writing", method = RequestMethod.GET)
	public String moveNoticeWriting(){
		return "admin/admin_notice_writing";
	}
	
	//글쓰기 
	
	@RequestMapping(value = "admin/notice_writing", method = RequestMethod.POST)
	public String writingNotice(@ModelAttribute BoardDTO board) throws IllegalStateException, IOException {	

		if(!(board.getFile().isEmpty())){
			
			System.out.println("파일이 들어 있습니다.");

			String uploadDirectory = context.getServletContext().getRealPath("/resources/images");
			
			String originalFileName=board.getFile().getOriginalFilename();
			
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
			
			board.getFile().transferTo(file);
			
			board.setBrdImg(uploadFilename);
		}else {
			System.out.println("파일이 없습니다.");
			board.setBrdImg(null); 

			
		}
		
		board.setBrdCategory(1);
		
		System.out.println(board.getBrdTitle()+board.getBrdImg());
		
		
		boardService.insertBoard(board);
		
		return "redirect:/admin/notice";
	}
	
	
	//목록으로 이동
	@RequestMapping(value = "admin/notice_list", method = RequestMethod.GET)
	public String listNotice(){
		System.out.println("하이!");
		
		return "redirect:/admin/notice";
	}
	
	//공지 게시판 삭제  삭제
	@RequestMapping(value="/admin/deleteNotice/{brdNum}", method = RequestMethod.GET)
	public String deleteBoard(@PathVariable int brdNum) {
		System.out.println("삭제입니다.");
		
		boardService.deleteBoard(brdNum);		
		return "redirect:/admin/notice";
	}
	
	
	//상세페이지 
	@RequestMapping(value="/admin/noticeDetail/{brdNum}", method = RequestMethod.GET)
	public String selectnoticeDetail(@PathVariable int brdNum, Model model) {
		model.addAttribute("noticeDetail", boardService.selectBoard(brdNum));
		boardService.updateViews(brdNum);

		return "admin/admin_notice_detail";
	}


	
	//수정 페이지 noticeDetail/13
	@RequestMapping(value="/admin/noticeModify/{brdNum}", method = RequestMethod.GET)
	public String modifyNotice(@PathVariable int brdNum, Model model) {
		model.addAttribute("noticeModify", boardService.selectBoard(brdNum));
		
		System.out.println("수정페이지 입니다.");
		return "admin/admin_notice_modify";
	}
	
	@RequestMapping(value="/admin/noticeModify/{brdNum}", method = RequestMethod.POST)
	public String modifyNotice2(@PathVariable int brdNum, @RequestPart("file") MultipartFile fileValue, @RequestParam Map<String,Object>map, Model model) throws IllegalStateException, IOException {
		System.out.println("수정페이지 입니다.");
		
		
		
		if(!(fileValue.isEmpty())){
			
			System.out.println("파일이 들어 있습니다.");

			String uploadDirectory = context.getServletContext().getRealPath("/resources/images");
			
			String originalFileName=fileValue.getOriginalFilename();
			
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
			
			fileValue.transferTo(file);
			
			
			map.put("brdImg", uploadFilename);
		}else {
			System.out.println("파일이 없습니다.");
			map.put("brdImg", null);

		}
		
		

		boardService.updateBoard(map);
		model.addAttribute("noticeDetail", boardService.selectBoard(brdNum));

		
		return "admin/admin_notice_detail";
	}
	
	//--------------------------------------------------
	//커먼 게시판 
	
	@GetMapping("admin/common")
	public String commonBoardlist(@RequestParam(defaultValue="1") int pageNum,  Model model) {
		
		int totalBoard=commonboardService.getCommonBoardCount();
		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("pager",pager);
		model.addAttribute("commonboardList", commonboardService.selectCommonBoardList(pagerMap));
		//model.addAttribute("findcommonboard", commonboardService.selectCommonBoard(cmbdNum));
		return "admin/admin_common";
	}
	
	@GetMapping("admin/review")
	public String reviewList(@RequestParam(defaultValue = "1") int pageNum, Model model, HttpSession session) {
		int totalBoard=reviewService.getReviewCount("");

		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("pager", pager);
		model.addAttribute("reviewList", reviewService.selectReviewReply(pagerMap));
			
		return "admin/admin_review";
	}
	
	@GetMapping("admin/main")
	public String dashboard(Model model){
		model.addAttribute("orderManager", orderManagerService.selectOrderTestList(""));
		model.addAttribute("productManager", orderManagerService.selectOrderTest2List(""));
		model.addAttribute("memberCount", memberService.getMemberCount());
		model.addAttribute("successCommon", commonService.successCommon());
		model.addAttribute("totalSales", commonService.totalSales());
		model.addAttribute("storeCount", storeService.getStoreCount());
		model.addAttribute("bestStore", storeService.getBestStore());
		
		return "admin/admin_dashboard";
	}
	
	@RequestMapping("admin/monthSales")
	public @ResponseBody List<Map<String,Object>> monthSales(Model model){
		
		List<Map<String,Object>> monthSale = commonService.getMonthSales();
		model.addAttribute("monthSale",monthSale);
		
		return monthSale;
		
	}
	
}


























