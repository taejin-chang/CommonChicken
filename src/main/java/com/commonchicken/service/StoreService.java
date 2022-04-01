package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.CommonStoreVO;
import com.commonchicken.dto.StoreDTO;

public interface StoreService {
	void insertStore(StoreDTO store);
	void updateStore(StoreDTO store);
	StoreDTO selectStore(int stoNum);
	StoreDTO selectStore1(String stoNum);
	List<StoreDTO> selectStoreList();
	
	CommonStoreVO getStoreInfo(Map<String, Object> map);
	List<CommonStoreVO> getStoreProductInfo(int stoNum);
	List<CommonStoreVO> getCommonStore(Map<String, Object> map);
	List<CommonStoreVO> getStoreCommonlist(int stoNum);
}
