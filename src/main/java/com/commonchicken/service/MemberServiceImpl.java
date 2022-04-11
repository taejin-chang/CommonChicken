package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.MemberDAO;
import com.commonchicken.dto.MemberDTO;
@Service
public class MemberServiceImpl implements MemberService{

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
	
	@Override
	public void updateDeleteMember(String memEmail) {
		memberDAO.updateDeleteMember(memEmail);
	}

	@Override
	public MemberDTO findId(String memName, String memPhone) {
		return memberDAO.findId(memName, memPhone);
	}

	@Override
	public MemberDTO findPw(String memName, String memPhone, String memEmail) {
		return memberDAO.findPw(memName, memPhone, memEmail);
	}
	
	@Override
	public void updateChangeMember(Map<String, Object> map) {
		memberDAO.updateChangeMember(map);
	}

}
