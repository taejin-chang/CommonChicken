package com.commonchicken.service;

import java.util.List;

import com.commonchicken.dto.MemberDTO;

public interface LoginService {
	void insertMember(MemberDTO member);//회원가입
	void updateMember(MemberDTO member);//회원정보 수정
	MemberDTO selectMember(String memEmail);//회원정보 불러오기
	List<MemberDTO> selectAllMemberList();//전체 회원정보 불러오기
	void deleteMember(String memEmail);//회원탈퇴
}
