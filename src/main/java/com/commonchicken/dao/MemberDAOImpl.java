package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

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
	public List<MemberDTO> selectAllMemberList(Map<String,Object>map) {
		return sqlSession.getMapper(MemberMapper.class).selectAllMemberList(map);
	}

	@Override
	public int deleteMember(String memEmail) {
		return sqlSession.getMapper(MemberMapper.class).deleteMember(memEmail);
	}
	@Override
	public int updateDeleteMember(String memEmail) {
		return sqlSession.getMapper(MemberMapper.class).updateDeleteMember(memEmail);
	}

	@Override
	public MemberDTO findId(String memName, String memPhone) {
		return sqlSession.getMapper(MemberMapper.class).findId(memName, memPhone);
	}

	@Override
	public MemberDTO findPw(String memName, String memPhone, String memEmail) {
		return sqlSession.getMapper(MemberMapper.class).findPw(memName, memPhone, memEmail);
	}
	@Override
	public int updateChangeMember(Map<String, Object> map) {
		return sqlSession.getMapper(MemberMapper.class).updateChangeMember(map);
	}

	@Override
	public int getMemberCount() {
		return sqlSession.getMapper(MemberMapper.class).getMemberCount();
	}


}
