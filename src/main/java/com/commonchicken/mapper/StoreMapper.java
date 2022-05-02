package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.CommonStoreVO;
import com.commonchicken.dto.StoreDTO;

public interface StoreMapper {
	int insertStore(StoreDTO store);
	int updateStore(StoreDTO store);
	StoreDTO selectStore(String stoNum);
	StoreDTO selectStore1(String stoNum);
	CommonStoreVO selectStoreInfoReivewAvg(Map<String, Object> map);
	CommonStoreVO selectStoreInfoReivewCount(Map<String, Object> map);
	List<StoreDTO> selectStoreList(Map<String, Object> map);
	
	CommonStoreVO selectStoreInfo(Map<String, Object> map);
	List<CommonStoreVO> selectStoreProductInfo(String stoNum);
	List<CommonStoreVO> selectCommonStore(Map<String, Object> map);
	List<CommonStoreVO> selectStoreCommonlist(String stoNum);
	String selectStoreEmail(String memEmail);
	int deleteStore(String stoNum);
	int getStoreCount();
	int updateStoStatus(Map<String,Object>map);
	List<Map<String,Object>> getBestStore();

}
