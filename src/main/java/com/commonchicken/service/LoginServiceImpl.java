package com.commonchicken.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.commonchicken.dto.MemberDTO;

public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginService loginService;
	
	@Override
	public void insertMember(MemberDTO member) {
		loginService.insertMember(member);
	}

	@Override
	public void updateMember(MemberDTO member) {
		loginService.updateMember(member);
	}

	@Override
	public MemberDTO selectMember(String memEmail) {
		return loginService.selectMember(memEmail);
	}

	@Override
	public List<MemberDTO> selectAllMemberList() {
		return loginService.selectAllMemberList();
	}

	@Override
	public void deleteMember(String memEmail) {
		loginService.deleteMember(memEmail);
	}

}
