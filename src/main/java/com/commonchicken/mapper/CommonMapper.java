package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.CommonDTO;

public interface CommonMapper {
	int insertCommon(CommonDTO common);
	int updateCommon(CommonDTO common);
	CommonDTO selectCommon(int cmNum);
	List<CommonDTO> selectCommonList();
	int deleteCommon(int cmNum);
}
