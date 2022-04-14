package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.CommonDTO;

public interface CommonService {
	void insertCommon(CommonDTO common);
	void updateCommon(CommonDTO common);
	CommonDTO selectCommon(int cmNum);
	List<CommonDTO> selectCommonList(Map<String,Object>map);
	void deleteCommon(int cmNum);
	CommonDTO searchCommon(int cmNum);
	int getCommonCount(String stoNum);
	int successCommon();
	int totalSales();
	List<Map<String,Object>> getMonthSales();
}
