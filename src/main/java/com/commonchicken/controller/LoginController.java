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
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute MemberDTO member, Model model,HttpSession session) throws LoginAuthFailException{
		//아이디 잘못입력했을때
		if(loginService.selectMember(member.getMemEmail()).getMemEmail()==null) {
			throw new LoginAuthFailException();
		}
		//비번 틀렸을때
		if(!loginService.selectMember(member.getMemEmail()).getMemPw().equals(member.getMemPw())) {
			throw new LoginAuthFailException();
		}
		
		MemberDTO loginMember =loginService.selectMember(member.getMemEmail());
		session.setAttribute("loginMember", loginMember);
		
		
		System.out.println("로그인성공");
		return "redirect:/";
	}
	
	
	@ExceptionHandler(value = LoginAuthFailException.class)
	public String exceptionHandler(LoginAuthFailException exception, Model model) {
		model.addAttribute("loginmessage", "아이디 또는 비밀번호가 잘못 입력되었습니다");
		//model.addAttribute("userid", exception.getUserid());
		return "user/login";
	}
	
	
}
