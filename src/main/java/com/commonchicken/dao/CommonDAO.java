package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.CommonDTO;

public interface CommonDAO {
	int insertCommon(CommonDTO common);
	int updateCommon(CommonDTO common);
	CommonDTO selectCommon(int cmNum);
	List<CommonDTO> selectCommonList();
}
