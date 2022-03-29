package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.ReviewDTO;


public interface ReviewMapper {
	int insertReview(ReviewDTO review);
	int updateReiew(ReviewDTO review);
	ReviewDTO selectReview(int revNum);
	List<ReviewDTO> selectAllReview();
}
