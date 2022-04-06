package com.commonchicken.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.MemberDTO;
import com.commonchicken.mapper.MemberMapper;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertMember(MemberDTO member) {
		return sqlSession.getMapper(MemberMapper.class).insertMember(member);
	}

	@Override
	public int updateMember(MemberDTO member) {
		return sqlSession.getMapper(MemberMapper.class).updateMember(member);
	}

	@Override
	public MemberDTO selectMember(String memEmail) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(memEmail);
	}

	@Override
	public List<MemberDTO> selectAllMemberList() {
		return sqlSession.getMapper(MemberMapper.class).selectAllMemberList();
	}

	@Override
	public int deleteMember(String memEmail) {
		return sqlSession.getMapper(MemberMapper.class).deleteMember(memEmail);
	}
	@Override
	public int updateDeleteMember(String memEmail) {
		return sqlSession.getMapper(MemberMapper.class).updateDeleteMember(memEmail);
	}


}
