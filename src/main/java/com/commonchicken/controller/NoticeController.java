package com.commonchicken.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.commonchicken.service.BoardService;
import com.commonchicken.util.Pager;

@Controller
public class NoticeController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/notice")
	public String ShowNotice(@RequestParam(defaultValue="1") int pageNum,@RequestParam(defaultValue = "1")int brdCategory,Model model) {
		
		System.out.println("공지사항 리스트");
		int totalBoard=boardService.getBoardCount(brdCategory);
		int pageSize=10;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("noticePagerList",boardService.selectPagerBoardList(pagerMap));
		model.addAttribute("pager",pager);
		
		return "community/notice";
	}
	
	//공지사항 상세페이지
	@RequestMapping(value="/community/noticeDetail/{brdNum}", method = RequestMethod.GET)
	public String selectnoticeDetail(@PathVariable int brdNum, Model model) {
		model.addAttribute("noticeDetail", boardService.selectBoard(brdNum));
		
		return "community/notice_detail";
	}
	
	
}
