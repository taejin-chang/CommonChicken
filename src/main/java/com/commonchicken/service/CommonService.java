package com.commonchicken.service;

import java.util.List;

import com.commonchicken.dto.CommonDTO;

public interface CommonService {
	void insertCommon(CommonDTO common);
	void updateCommon(CommonDTO common);
	CommonDTO selectCommon(int cmNum);
	List<CommonDTO> selectCommonList();
}
