package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.MemberDTO;

public interface MemberDAO {
	int insertMember(MemberDTO member);
	List<MemberDTO> selectMemberList();
}
