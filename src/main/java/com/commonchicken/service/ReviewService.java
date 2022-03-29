package com.commonchicken.service;

import java.util.List;

import com.commonchicken.dto.ReviewDTO;

public interface ReviewService {
	void insertReview(ReviewDTO review);
	void updateReiew(ReviewDTO review);
	ReviewDTO selectReview(int revNum);
	List<ReviewDTO> selectAllReview();
}
