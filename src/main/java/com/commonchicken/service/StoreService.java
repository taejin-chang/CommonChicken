package com.commonchicken.service;

import java.util.List;

import com.commonchicken.dto.StoreDTO;

public interface StoreService {
	void insertStore(StoreDTO store);
	void updateStore(StoreDTO store);
	StoreDTO selectStore(int stoNum);
	List<StoreDTO> selectStoreList();
}
