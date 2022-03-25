package com.commonchicken.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.MemberDAO;
import com.commonchicken.dto.MemberDTO;
@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberDTO member) {
		memberDAO.insertMember(member);
	}

	@Override
	public void updateMember(MemberDTO member) {
		memberDAO.updateMember(member);
	}

	@Override
	public MemberDTO selectMember(String memEmail) {
		return memberDAO.selectMember(memEmail);
	}

	@Override
	public List<MemberDTO> selectAllMemberList() {
		return memberDAO.selectAllMemberList();
	}

	@Override
	public void deleteMember(String memEmail) {
		memberDAO.deleteMember(memEmail);
	}

}
