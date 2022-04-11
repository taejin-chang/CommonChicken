package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.MemberDTO;

public interface MemberService {
	void insertMember(MemberDTO member);//ȸ������
	void updateMember(MemberDTO member);//ȸ������ ����
	MemberDTO selectMember(String memEmail);//ȸ������ �ҷ�����
	List<MemberDTO> selectAllMemberList();//��ü ȸ������ �ҷ�����
	void deleteMember(String memEmail);//ȸ��Ż��
	void updateDeleteMember(String memEmail);
	MemberDTO findId(String memName,String memPhone);
	MemberDTO findPw(String memName,String memPhone,String memEmail);
	void updateChangeMember(Map<String,Object>map);
}
