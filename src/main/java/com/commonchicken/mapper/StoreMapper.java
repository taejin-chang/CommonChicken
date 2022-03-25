package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.StoreDTO;

public interface StoreMapper {
	int insertStore(StoreDTO store);
	List<StoreDTO> selectStoreList();
}
