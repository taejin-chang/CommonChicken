package com.commonchicken.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.commonchicken.dto.CommonBoardDTO;
import com.commonchicken.service.CommonBoardService;
import com.commonchicken.service.CommonService;
import com.commonchicken.service.StoreService;
import com.commonchicken.util.Pager;


@Controller
public class CommunityController {

	@Autowired
	CommonService commonService;
	
	@Autowired
	CommonBoardService commonboardService;
	
	@Autowired
	StoreService storeService;
	
	@RequestMapping("/community")
	public String login() {
		return "community/common-notice";
	}
	
	@GetMapping("/common_board")
	public String commonBoard(@RequestParam(defaultValue="1") int pageNum, @RequestParam int cmNum, Model model, HttpSession session) {
		
		//model.addAttribute("cmGoalPeople", commonService.searchCommon(cmNum).getCmGoalPeople());
		//commonService.searchCommon(cmNum).getCmDeliveryTime();
		//commonService.searchCommon(cmNum).getCmClose();
		//int stoNum = Integer.parseInt(commonService.searchCommon(cmNum).getStoNum());
		//model.addAttribute("storeaddress",storeService.selectStore1(stoNum).getStoAdd1());


		String stoNum = commonService.searchCommon(cmNum).getStoNum();
		String StoName = storeService.selectStore1(stoNum).getStoName();
		
		CommonBoardDTO commonboard = new CommonBoardDTO();
		commonboard.setCmbdTitle(StoName+"으로 오세요~~");
		commonboard.setMemEmail((String)session.getAttribute("loginId"));
		commonboard.setCmNum(cmNum);
		
		commonboardService.insertCommonBoard(commonboard);
		
		int totalBoard=commonboardService.getCommonBoardCount();
		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 페이지 블럭에 출력될 페이지 번호의 갯수 저장
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("pager",pager);
		model.addAttribute("commonboardList", commonboardService.selectCommonBoardList(pagerMap));

		//return "redirect:/";
		return "community/common-notice";
	}
	
	@GetMapping("/common_boardlist")
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
		return "community/common-notice";
	}
}
