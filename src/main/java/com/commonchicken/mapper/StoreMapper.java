package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.StoreDTO;

public interface StoreMapper {
	int insertStore(StoreDTO store);
	int updateStore(StoreDTO store);
	StoreDTO selectStore(int stoNum);
	List<StoreDTO> selectStoreList();
}
