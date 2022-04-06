package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.MemberDTO;

public interface MemberMapper {
	int insertMember(MemberDTO member);//ȸ������
	int updateMember(MemberDTO member);//ȸ������ ����
	MemberDTO selectMember(String memEmail);//ȸ������ �ҷ�����
	List<MemberDTO> selectAllMemberList();//��ü ȸ������ �ҷ�����
	int deleteMember(String memEmail);//ȸ��Ż��
	int updateDeleteMember(String memEmail);
}
