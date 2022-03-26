package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.StoreDTO;

public interface StoreDAO {
	int insertStore(StoreDTO store);
	StoreDTO selectStore(int stoNum);
	List<StoreDTO> selectStoreList();
}
