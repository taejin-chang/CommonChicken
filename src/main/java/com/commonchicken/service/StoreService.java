package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.CommonStoreVO;
import com.commonchicken.dto.StoreDTO;

public interface StoreService {
	void insertStore(StoreDTO store);
	void updateStore(StoreDTO store);
	StoreDTO selectStore(String stoNum);
	StoreDTO selectStore1(String stoNum);
	CommonStoreVO selectStoreInfoReivewAvg(Map<String, Object> map);
	CommonStoreVO selectStoreInfoReivewCount(Map<String, Object> map);
	List<StoreDTO> selectStoreList(Map<String, Object> map);
	
	CommonStoreVO getStoreInfo(Map<String, Object> map);
	List<CommonStoreVO> getStoreProductInfo(int stoNum);
	List<CommonStoreVO> getCommonStore(Map<String, Object> map);
	List<CommonStoreVO> getStoreCommonlist(int stoNum);
	String selectStoreEmail(String memEmail);
	int deleteStore(String stoNum);
	int getStoreCount();
	void updateStoStatus(Map<String, Object> map);

}
