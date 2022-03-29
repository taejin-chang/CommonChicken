package com.commonchicken.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.ReviewDAO;
import com.commonchicken.dto.ReviewDTO;
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
	public List<ReviewDTO> selectAllReview() {
		return reviewDAO.selectAllReview();
	}

}
