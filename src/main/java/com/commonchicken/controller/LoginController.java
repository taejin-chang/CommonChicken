package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;

import com.commonchicken.dto.MemberDTO;
import com.commonchicken.exception.LoginAuthFailException;
import com.commonchicken.service.LoginService;


@Controller
public class LoginController {

	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
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
	//회원가입
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
	/*
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute Member member, Model model, HttpSession session) {
		if(!member.getId().equals("abc123") || !member.getPasswd().equals("123456")) {//인증 실패
			model.addAttribute("message", "아이디 또는 비밀번호를 확인해 주세요.");
			return "session/login_form";
		}
		
		session.setAttribute("loginId", member.getId());
		
		return "session/login_result";
	}
	*/
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute MemberDTO member, Model model,HttpSession session) throws LoginAuthFailException{
		//아이디가 없는경우
		if(loginService.selectMember(member.getMemEmail()).getMemEmail()==null) {
			throw new LoginAuthFailException();
		}
		//아이디는 있는데 비밀번호가 일치하지 않는 경우
		if(!loginService.selectMember(member.getMemEmail()).getMemPw().equals(member.getMemPw())) {
			throw new LoginAuthFailException();
		}
		
		
		session.setAttribute("loginId", member.getMemEmail());
		System.out.println("로그인 성공");
		return "redirect:/";
	}
	
	
	@ExceptionHandler(value = LoginAuthFailException.class)
	public String exceptionHandler(LoginAuthFailException exception, Model model) {
		model.addAttribute("loginmessage", "아이디 또는 비밀번호가 잘못 입력되었습니다.");
		//model.addAttribute("userid", exception.getUserid());
		return "user/login";
	}
	
	
}
