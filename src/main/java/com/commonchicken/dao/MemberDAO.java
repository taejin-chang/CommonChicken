package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.MemberDTO;

public interface MemberDAO {
	int insertMember(MemberDTO member);//회원가입
	int updateMember(MemberDTO member);//회원정보 수정
	MemberDTO selectMember(String memEmail);//회원정보 불러오기
	List<MemberDTO> selectAllMemberList();//전체 회원정보 불러오기
	int deleteMember(String memEmail);//회원탈퇴
}
