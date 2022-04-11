package com.commonchicken.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.ReplyDTO;
import com.commonchicken.mapper.ReplyMapper;

@Repository
public class ReplyDAOImpl implements ReplyDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertReply(ReplyDTO reply) {
		return sqlSession.getMapper(ReplyMapper.class).insertReply(reply);
	}

	@Override
	public 	List<ReplyDTO> selectReplyList(String stoNum){
		return sqlSession.getMapper(ReplyMapper.class).selectReplyList(stoNum);

	}
}
