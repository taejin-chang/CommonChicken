package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.CommonBoardDTO;
import com.commonchicken.dto.CommonBoardListVO;


public interface CommonBoardMapper {
	int insertCommonBoard(CommonBoardDTO commonboard);
	List<CommonBoardListVO> selectCommonBoardList();
	CommonBoardListVO selectCommonBoard(int cmbdNum);
}
