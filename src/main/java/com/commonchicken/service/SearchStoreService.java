package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.SearchStoreVO;

public interface SearchStoreService {
	List<SearchStoreVO>getMainSearch(Map<String, Object> map);
	List<SearchStoreVO>getDetailSearch(Map<String, Object> map);
	List<SearchStoreVO>getTotalSearch();

}
