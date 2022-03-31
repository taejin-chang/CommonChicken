package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.ReviewDAO;
import com.commonchicken.dto.ReviewDTO;
import com.commonchicken.dto.ReviewVO;
@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	ReviewDAO reviewDAO;

	@Override
	public void insertReview(ReviewDTO review) {
		reviewDAO.insertReview(review);
	}

	@Override
	public void updateReiew(ReviewDTO review) {
		reviewDAO.updateReiew(review);
	}

	@Override
	public ReviewDTO selectReview(int revNum) {
		return reviewDAO.selectReview(revNum);
	}

	@Override
	public int getReviewCount(String memEmail) {
		return reviewDAO.getReviewCount(memEmail);
	}

	@Override
	public List<ReviewVO> selectAllReview() {
		return reviewDAO.selectAllReview();
	}

	@Override
	public List<ReviewVO> selectPagerReview(Map<String, Object> map) {
		return reviewDAO.selectPagerReview(map);
	}
	
	


}
