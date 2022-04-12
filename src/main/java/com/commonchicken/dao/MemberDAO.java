package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.MemberDTO;

public interface MemberDAO {
	int insertMember(MemberDTO member);//ȸ������
	int updateMember(MemberDTO member);//ȸ������ ����
	MemberDTO selectMember(String memEmail);//ȸ������ �ҷ�����
	List<MemberDTO> selectAllMemberList(Map<String,Object>map);//��ü ȸ������ �ҷ�����
	int deleteMember(String memEmail);//ȸ��Ż��
	int updateDeleteMember(String memEmail);
	MemberDTO findId(String memName,String memPhone);
	MemberDTO findPw(String memName,String memPhone,String memEmail);
	int updateChangeMember(Map<String,Object>map);
	int getMemberCount();
}
