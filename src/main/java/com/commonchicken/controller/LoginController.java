package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;

import com.commonchicken.dto.MemberDTO;
import com.commonchicken.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("login","login_value");
		return "user/login";
	}
	
	
	/*
	@RequestMapping(value = "/file_upload", method = RequestMethod.POST)
	public String fileUpload(@ModelAttribute FileBoard fileBoard) throws IllegalStateException, IOException {
		if(fileBoard.getFile().isEmpty()) {
			return "file/file_upload";
		}
	
		String uploadDir=context.getServletContext().getRealPath("/WEB-INF/upload");
		
		//전달 파일명을 반환받아 저장
		String origin=fileBoard.getFile().getOriginalFilename();
		
		//업로드 파일명을 고유값(현재 시스템의 타임스템프)으로 저장
		// => 업로드 처리된 파일명이 중복되지 않도록 설정
		String upload=System.currentTimeMillis()+"";
		
		//DTO 객체의 필드값 변경
		fileBoard.setOrigin(origin);
		fileBoard.setUpload(upload);
		
		fileBoard.getFile().transferTo(new File(uploadDir, upload));
		
		fileBoardService.addFileBoard(fileBoard);
		
		return "redirect:/file_list";
	}
	*/
	@RequestMapping(value = "/sign_in", method = RequestMethod.POST)
	public String singIn(@ModelAttribute MemberDTO member, Model model) throws IllegalStateException, IOException {
		
		
		String uploadDir=context.getServletContext().getRealPath("/WEB-INF/upload");
		
		String origin=member.getFile().getOriginalFilename();
		
		String upload=System.currentTimeMillis()+"";
		
		member.setMemOrigin(origin);
		member.setMemUpload(upload);
		
		member.getFile().transferTo(new File(uploadDir, upload));
		
		loginService.insertMember(member);
		
		return "redirect:/";
				
	}
	
	
	
	
	
	
	
	
	
}
