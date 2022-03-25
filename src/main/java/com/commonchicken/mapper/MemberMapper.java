package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.MemberDTO;

public interface MemberMapper {
	int insertMember(MemberDTO member);
	List<MemberDTO> selectMemberList();
}
