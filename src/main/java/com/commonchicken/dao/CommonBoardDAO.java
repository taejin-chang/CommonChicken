package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.CommonBoardDTO;
import com.commonchicken.dto.CommonBoardListVO;

public interface CommonBoardDAO {
	int insertCommonBoard(CommonBoardDTO commonboard);
	List<CommonBoardListVO> selectCommonBoardList();
	CommonBoardListVO selectCommonBoard(int cmbdNum);

	}
