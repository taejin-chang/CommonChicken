package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.SearchStoreVO;

public interface SearchStoreDAO {
	List<SearchStoreVO>selectMainSearch(Map<String, Object> map);
	List<SearchStoreVO>selectDetailSearch(Map<String, Object> map);
	List<SearchStoreVO>selectAllSearch();
}

