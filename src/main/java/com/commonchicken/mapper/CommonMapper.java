package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.CommonDTO;

public interface CommonMapper {
	int insertCommon(CommonDTO common);
	int updateCommon(CommonDTO common);
	CommonDTO selectCommon(int cmNum);
	List<CommonDTO> selectCommonList(Map<String, Object>map);
	int deleteCommon(int cmNum);
	CommonDTO searchCommon(int cmNum);
	int getCommonCount(String stoNum);
	int successCommon();
	int totalSales();
	List<Map<String,Object>> getMonthSales();

}
