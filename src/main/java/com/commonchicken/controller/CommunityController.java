package com.commonchicken.controller;

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
	public String commonBoard(@RequestParam int cmNum, Model model, HttpSession session) {
		
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
		
		model.addAttribute("commonboardList", commonboardService.selectCommonBoardList());
		//return "redirect:/";
		return "community/common-notice";
	}
	
	@GetMapping("/common_boardlist")
	public String commonBoardlist(/*int cmbdNum,*/ Model model) {
		model.addAttribute("commonboardList", commonboardService.selectCommonBoardList());
		//model.addAttribute("findcommonboard", commonboardService.selectCommonBoard(cmbdNum));
		return "community/common-notice";
	}
}
