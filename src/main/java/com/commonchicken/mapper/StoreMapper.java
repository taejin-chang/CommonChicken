package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.CommonStoreVO;
import com.commonchicken.dto.StoreDTO;

public interface StoreMapper {
	int insertStore(StoreDTO store);
	int updateStore(StoreDTO store);
	StoreDTO selectStore(int stoNum);
	StoreDTO selectStore1(String stoNum);
	List<StoreDTO> selectStoreList();
	
	CommonStoreVO selectStoreInfo(Map<String, Object> map);
	List<CommonStoreVO> selectStoreProductInfo(int stoNum);
	List<CommonStoreVO> selectCommonStore(Map<String, Object> map);
	List<CommonStoreVO> selectStoreCommonlist(int stoNum);
}
