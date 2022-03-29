package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.ReviewDTO;

public interface ReviewDAO {
	int insertReview(ReviewDTO review);
	int updateReiew(ReviewDTO review);
	ReviewDTO selectReview(int revNum);
	List<ReviewDTO> selectAllReview();
	
}
