package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import com.commonchicken.dto.BoardDTO;
import com.commonchicken.dto.CommonDTO;
import com.commonchicken.dto.MemberDTO;
import com.commonchicken.dto.StoreDTO;
import com.commonchicken.service.BoardService;
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
	
	@Autowired
	private BoardService boardService;
	
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
	
	
	
	
	
	
	//-------------------------------------------------------------------------------------------------------------------------------
	
	
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
		
	
	
	//-------------------------------------------------------------------------------------------------------------------------------
	
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
	public String deleteCommon(@PathVariable int cmNum) {
		System.out.println("헤이 !!! ");
		System.out.println(cmNum);
		
		commonService.deleteCommon(cmNum);		
		return "redirect:/store/commonlist";
	}
	
	
	
	
	//공지사항리스트
	@RequestMapping(value = "admin/notice", method = RequestMethod.GET)
	public String selectNoticeList(@RequestParam(defaultValue = "1")int brdCategory, Model model){
		System.out.println("공지사항 리스트");
		model.addAttribute("noticeList", boardService.selectBoardList(brdCategory));
			
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
	

	
}









