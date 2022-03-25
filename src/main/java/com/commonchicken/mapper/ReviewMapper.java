package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.ReviewDTO;


public interface ReviewMapper {
	int insertReview(ReviewDTO review);
	List<ReviewDTO> selectReviewList();
}
