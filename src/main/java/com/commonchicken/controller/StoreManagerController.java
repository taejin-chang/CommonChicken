package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.commonchicken.dto.ProductDTO;
import com.commonchicken.dto.StoreDTO;
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
public class StoreManagerController {
	private static final Logger logger = LoggerFactory.getLogger(StoreManagerController.class);

	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private MemberService memberService;
	
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
	
	//---------------------------------------------------------------
	
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
	
	//---------------------------------------------------------------

	@RequestMapping(value = "/store/order", method = RequestMethod.GET)
	public String storeOrder(Model model,HttpSession session){
		System.out.println("하이!");
		//model.addAttribute("commonList", commonService.selectCommonList());
		String stoNum = (String)session.getAttribute("storeSession");
		model.addAttribute("orderManager", orderManagerService.selectOrderTestList(stoNum));
		model.addAttribute("productManager", orderManagerService.selectOrderTest2List(stoNum));
		
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
	public String ProductList(@RequestParam(defaultValue="1") int pageNum,Model model,HttpSession session) {
		String stoNum = (String)session.getAttribute("storeSession");

		
		int totalBoard=productService.getStoreProductCount(stoNum);

		int pageSize=5;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("stoNum", stoNum);
		
		model.addAttribute("pager", pager);
		model.addAttribute("productList", productService.selectProductListAdmin(pagerMap));
		
		return "store_mypage/store_product_list";
	}
	
	//------------------------------------------------------------------------
			//리뷰 페이지

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
	public String insertReply(@RequestParam Map<String,Object>map , Model model, HttpSession session) {
		System.out.println("수정페이지 입니다.");
		String stoNum = (String)session.getAttribute("storeSession");
		String memEmail = (String)session.getAttribute("loginId");

		map.put("stoNum", stoNum);
		map.put("memEmail", memEmail);
		
		replyService.insertReply(map);

		
		return "redirect:/store/review";
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
	public String CommonList(@RequestParam(defaultValue="1") int pageNum,Model model,HttpSession session) {
		String stoNum = (String)session.getAttribute("storeSession");

		int totalBoard=commonService.getCommonCount(stoNum);
		int pageSize=6;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("stoNum", stoNum);
		
		model.addAttribute("commonList",commonService.selectCommonList(pagerMap));
		model.addAttribute("pager",pager);
		
		
		
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
	
	//------------------------------------------------------------------------
	//회원 탈퇴 및 점포 탈퇴
	
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
	
}
