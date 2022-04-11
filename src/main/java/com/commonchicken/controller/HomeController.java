package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
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
import com.commonchicken.dto.CommonDTO;
import com.commonchicken.dto.MemberDTO;
import com.commonchicken.dto.OrderDTO;
import com.commonchicken.dto.ProductDTO;
import com.commonchicken.dto.ReplyDTO;
import com.commonchicken.dto.StoreDTO;
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
	private CommonBoardService commonboardService;
	
	
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
	public String storeSelect(HttpSession session, Model model){
		model.addAttribute("storeOwner", memberService.selectMember((String)session.getAttribute("loginId")));
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

		memberService.updateMember(member);
		return "redirect:/store/owner";
	}
	
	
	
	
	
	
	//-------------------------------------------------------------------------------------------------------------------------------
	
	
	//점포 관리 페이지 
	@RequestMapping(value = "store/info", method = RequestMethod.GET)
	public String storeSelect1(HttpSession session, Model model){
		

		String stoNum = (String)session.getAttribute("storeSession");

		
		model.addAttribute("storeInfo", storeService.selectStore(stoNum));
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
		
	
	
	//-------------------------------------------------------------------------------------------------------------------------------
	
	//커먼 페이지 
	@RequestMapping(value = "store/common", method = RequestMethod.GET)
	public String Common(){
		return "store_mypage/store_common";
	}
	
	@RequestMapping(value = "store/common", method = RequestMethod.POST)
	public String CommonAdd(@ModelAttribute CommonDTO common, HttpSession session) throws ParseException{
		
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
		SimpleDateFormat output = new SimpleDateFormat("HH:mm:ss");
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
//		SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date Delivery = sdf.parse(common.getCmDeliveryTime());
		String cmDeliveryTime = output.format(Delivery);
		
		Date close = sdf.parse(common.getCmClose());
		String cmClose = output.format(close);
		String stoNum = (String)session.getAttribute("storeSession");

		
		common.setStoNum(stoNum);
		common.setMemEmail((String)session.getAttribute("loginId"));
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
	public String deleteCommon(@PathVariable int cmNum) {
		System.out.println("헤이 !!! ");
		System.out.println(cmNum);
		
		commonService.deleteCommon(cmNum);		
		return "redirect:/store/commonlist";
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
		
	//-------------------------------------------------------------------------------------------------------------------------------
	
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
		
//		Map<String,Object> map = new HashMap<String, Object>();
//		map.put("brdTitle", "하하");
//		map.put("brdContent", "하하");
//		map.put("brdImg", "하하");
//		map.put("brdStatus", 2);
//		map.put("brdNum", 10);
//		
//		boardService.updateBoard(map);
		
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
	
	
//	@RequestMapping(value = "/adminMng/order", method = RequestMethod.GET)
//	public String adminOrder(Model model){
//		System.out.println("하이!");
//		model.addAttribute("commonList", commonService.selectCommonList());
//
//		return "admin/admin_order";
//	}
//	
//	//------------------------------------------------------------------------------
//	@RequestMapping(value = "/orderManager", method= RequestMethod.GET)
//	@ResponseBody
//	public List<OrderDTO> restOrderMngList() {
//		
//		return  orderService.selectOrderManager(1);
//	}	
	
	
//	@RequestMapping(value = "/admin/order", method = RequestMethod.GET)
//	public String adminOrder(Model model){
//		System.out.println("하이!");
//		model.addAttribute("commonList", commonService.selectCommonList());
//		model.addAttribute("orderManager", orderManagerService.selectOrderMgtList());
//		
//		return "admin/admin_order";
//	}
	
	
	@RequestMapping(value = "/admin/order", method = RequestMethod.GET)
	public String adminOrder(Model model){
		System.out.println("하이!");
		//model.addAttribute("commonList", commonService.selectCommonList());
		model.addAttribute("orderManager", orderManagerService.selectOrderTestList());
		model.addAttribute("productManager", orderManagerService.selectOrderTest2List());
		
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
	
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------
	//상품관리 
	
	@RequestMapping(value = "store/product", method = RequestMethod.GET)
	public String storeSelect(){
		return "store_mypage/store_product";
	}
	
	
	
	@RequestMapping(value = "store/product", method = RequestMethod.POST)
	public String productInsert(@ModelAttribute ProductDTO product) throws IllegalStateException, IOException{	
		
		if(!(product.getFile().isEmpty())){
		
			String uploadDirectory = context.getServletContext().getRealPath("/resources/images");
			
			String originalFileName=product.getFile().getOriginalFilename();
			
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
			
			product.getFile().transferTo(file);
			
			product.setPrdUpload(uploadFilename);
		}else {
			product.setPrdUpload(product.getPrdUpload());	
		}
		
		productService.insertProduct(product);
		
		return "redirect:/store/productlist";
	}
		

	
		@RequestMapping(value = "store/productlist", method = RequestMethod.GET)
		public String ProductList(Model model, HttpSession session) {
			String stoNum = (String)session.getAttribute("storeSession");

			model.addAttribute("productList", productService.selectProductListAdmin(stoNum));
			
			return "store_mypage/store_product_list";
		}
	
		//커먼 삭제
		@RequestMapping(value="/store/deleteProduct/{prdCode}", method = RequestMethod.GET)
		public String deleteProduct(@PathVariable String prdCode) {
			System.out.println("헤이 !!! ");
			System.out.println(prdCode);
			
			productService.deletePoduct(prdCode);		
			return "redirect:/store/productlist";
		}
		
		
//		@RequestMapping(value = "/store/order", method = RequestMethod.GET)
//		public String storeOrder(Model model){
//			System.out.println("하이!");
//			model.addAttribute("commonList", commonService.selectCommonList());
//			model.addAttribute("orderManager", orderManagerService.selectOrderMgtList());
//			
//			return "store_mypage/order_state";
//		}
		
		
//------------------------------------------------------------------------
		//리뷰 페이지
//		@RequestMapping("/store/review")
//		public String storeReivew(Model model) {
//			return "store_mypage/store_review";
//		}
		
		@RequestMapping(value = "/store/review", method = RequestMethod.GET)
		public String myBoardpage(@RequestParam(defaultValue="1") int pageNum,Model model,HttpSession session) {
			
			String stoNum = (String)session.getAttribute("storeSession");
			
			int totalBoard=reviewService.selectStoreReviewMng(stoNum);

			int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
			int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
			Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
			Map<String, Object> pagerMap=new HashMap<String, Object>();
			pagerMap.put("startRow", pager.getStartRow());
			pagerMap.put("endRow", pager.getEndRow());
			pagerMap.put("stoNum", stoNum);
			
			model.addAttribute("pager", pager);
			model.addAttribute("reviewList", reviewService.selectReviewReply(pagerMap));
				
			return "store_mypage/store_review";
		}

		@RequestMapping(value="/store/review", method = RequestMethod.POST)
		public String insertReply(@ModelAttribute ReplyDTO reply, Model model, HttpSession session) {
			System.out.println("수정페이지 입니다.");
			String stoNum = (String)session.getAttribute("storeSession");
			String memEmail = (String)session.getAttribute("loginId");

			reply.setStoNum(stoNum);
			reply.setMemEmail(memEmail);
			
			replyService.insertReply(reply);

			
			return "redirect:/store/review";
		}
		
		//------------------------------------------------------------------------
		@RequestMapping(value = "store/deletePage", method = RequestMethod.GET)
		public String deleteStorePage(){
			return "store_mypage/store_sign_out";
		}
		
		
		
		@RequestMapping(value="store/delete", method = RequestMethod.GET)
		public String deleteStore(HttpSession session) {

		String stoNum = (String)session.getAttribute("storeSession");
		String member = (String)session.getAttribute("loginId");
			
			System.out.println("============================dkdkdkddk==============");
			System.out.println(stoNum);
		
			storeService.deleteStore(stoNum);	
			memberService.updateDeleteMember(member);	
			
			return "main";
		}
		
		
		@RequestMapping(value = "store/out", method = RequestMethod.GET)
		public String deleteMemberPage(){
			return "store_mypage/store_member_sign_out";
		}
		
		
		
		@RequestMapping(value="store/deleteMember", method = RequestMethod.GET)
		public String deleteMember(HttpSession session) {
			
			String stoNum = (String)session.getAttribute("storeSession");
			String member = (String)session.getAttribute("loginId");
			
			storeService.deleteStore(stoNum);	
			memberService.deleteMember(member);	
			
			return "redirect:/";
		}
		
		
		
		@RequestMapping(value = "/store/order", method = RequestMethod.GET)
		public String storeOrder(Model model){
			System.out.println("하이!");
			//model.addAttribute("commonList", commonService.selectCommonList());
			model.addAttribute("orderManager", orderManagerService.selectOrderTestList());
			model.addAttribute("productManager", orderManagerService.selectOrderTest2List());
			
			return "store_mypage/store_order";
		}
	
		@RequestMapping(value="/store_order/changeOrder/{ordStatus}/{ordBundleNum}", method = RequestMethod.GET)
		public String changeStoreOrder(@PathVariable int ordStatus, @PathVariable String ordBundleNum, Map<String,Object> map ) {
			System.out.println("배달 시작입니다람1");
			System.out.println("배달 시작입니다람2");
			map.put("ordStatus", ordStatus);
			map.put("ordBundleNum", ordBundleNum);
			
			orderService.updateOrderStatus(map);
			System.out.println("배달 시작입니다람3");
			
			return "redirect:/store/order";
		}
		
// 페이지 회원관리===================================================================================				
		@RequestMapping(value = "/admin/member", method = RequestMethod.GET)
		public String adminMember(Model model){
			System.out.println("하이!");
			model.addAttribute("memberList", memberService.selectAllMemberList());
			
			return "admin/admin_member";
		}
		
//		@RequestMapping(value = "/admin/member", method = RequestMethod.POST)
//		public String changeMemberStatus(@ModelAttribute MemberDTO member, Map<String,Object>map){	
//			System.out.println(member.getMemStatus());
//			System.out.println(member.getMemEmail());
//			map.put("memStatus", member.getMemStatus());
//			map.put("memEmail", member.getMemEmail());
//			
//			memberService.updateChangeMember(map);
//			
//			return "redirect:/store/order";
//		}
//		
		
		@RequestMapping(value = "/admin/member", method = RequestMethod.POST)
		public String changeMemberStatus(@ModelAttribute MemberDTO member, Map<String,Object>map){	
			System.out.println(member.getMemStatus());
			System.out.println(member.getMemEmail());
			map.put("memStatus", member.getMemStatus());
			map.put("memEmail", member.getMemEmail());
			
			memberService.updateChangeMember(map);
			
			return "redirect:/store/order";
		}
		
// 페이지 점포 관리===================================================================================				
		@RequestMapping(value = "/admin/store", method = RequestMethod.GET)
		public String adminStore(Model model){
//			System.out.println("하이!");
			model.addAttribute("storeList", storeService.selectStoreList());
			
			return "admin/admin_store";
		}	
		
		
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
			String stoNum = (String)session.getAttribute("storeSession");
//			
			int totalBoard=reviewService.selectStoreReviewMng("");

			int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
			int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
			Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
			Map<String, Object> pagerMap=new HashMap<String, Object>();
			pagerMap.put("startRow", pager.getStartRow());
			pagerMap.put("endRow", pager.getEndRow());
			pagerMap.put("stoNum", stoNum);
			
			model.addAttribute("pager", pager);
			model.addAttribute("reviewList", reviewService.selectReviewReply(pagerMap));
				
			return "admin/admin_review";
		}
		

}









