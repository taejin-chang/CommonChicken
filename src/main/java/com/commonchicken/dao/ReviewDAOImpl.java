package com.commonchicken.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.ReviewDTO;
import com.commonchicken.mapper.ReviewMapper;
@Repository
public class ReviewDAOImpl implements ReviewDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertReview(ReviewDTO review) {
		return sqlSession.getMapper(ReviewMapper.class).insertReview(review);	
	}

	@Override
	public int updateReiew(ReviewDTO review) {
		return sqlSession.getMapper(ReviewMapper.class).updateReiew(review);
	}

	@Override
	public ReviewDTO selectReview(int revNum) {
		return sqlSession.getMapper(ReviewMapper.class).selectReview(revNum);
	}

	@Override
	public List<ReviewDTO> selectAllReview() {
		return sqlSession.getMapper(ReviewMapper.class).selectAllReview();
	}

}
