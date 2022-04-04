package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.CommonBoardDTO;
import com.commonchicken.dto.CommonBoardListVO;

public interface CommonBoardDAO {
	int insertCommonBoard(CommonBoardDTO commonboard);
	List<CommonBoardListVO> selectCommonBoardList(Map<String, Object> map);
	CommonBoardListVO selectCommonBoard(int cmbdNum);
	int getCommonBoardCount();

	}
