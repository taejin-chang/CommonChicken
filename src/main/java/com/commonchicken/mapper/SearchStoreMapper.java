package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.SearchStoreVO;

public interface SearchStoreMapper {
	List<SearchStoreVO>selectMainSearch(Map<String, Object> map);
	List<SearchStoreVO>selectDetailSearch(Map<String, Object> map);
}
