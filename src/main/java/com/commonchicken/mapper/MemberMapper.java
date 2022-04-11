package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.commonchicken.dto.MemberDTO;

public interface MemberMapper {
	int insertMember(MemberDTO member);//ȸ������
	int updateMember(MemberDTO member);//ȸ������ ����
	MemberDTO selectMember(String memEmail);//ȸ������ �ҷ�����
	List<MemberDTO> selectAllMemberList();//��ü ȸ������ �ҷ�����
	int deleteMember(String memEmail);//ȸ��Ż��
	int updateDeleteMember(String memEmail);
	MemberDTO findId(@Param("memName") String memName,@Param("memPhone") String memPhone);
	MemberDTO findPw(@Param("memName") String memName,@Param("memPhone") String memPhone,@Param("memEmail") String memEmail);
	int updateChangeMember(Map<String,Object>map);
}
