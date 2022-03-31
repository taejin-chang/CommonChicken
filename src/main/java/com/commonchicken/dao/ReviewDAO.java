package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.ReviewDTO;
import com.commonchicken.dto.ReviewVO;

public interface ReviewDAO {
	int insertReview(ReviewDTO review);
	int updateReiew(ReviewDTO review);
	ReviewDTO selectReview(int revNum);
	int getReviewCount();
	List<ReviewVO> selectAllReview();
	List<ReviewVO> selectPagerReview(Map<String, Object> map);
	
}
