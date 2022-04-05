package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.CommonBoardDTO;
import com.commonchicken.dto.CommonBoardListVO;


public interface CommonBoardMapper {
	int insertCommonBoard(CommonBoardDTO commonboard);
	List<CommonBoardListVO> selectCommonBoardList(Map<String, Object> map);
	CommonBoardListVO selectCommonBoard(int cmbdNum);
	int getCommonBoardCount();
}
