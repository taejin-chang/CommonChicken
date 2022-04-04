package com.commonchicken.service;

import java.util.List;

import com.commonchicken.dto.CommonBoardDTO;
import com.commonchicken.dto.CommonBoardListVO;

public interface CommonBoardService {
	int insertCommonBoard(CommonBoardDTO commonboard);
	List<CommonBoardListVO> selectCommonBoardList();
	CommonBoardListVO selectCommonBoard(int cmbdNum);
}
