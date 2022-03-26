package com.commonchicken.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.StoreDAO;
import com.commonchicken.dto.StoreDTO;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	StoreDAO storeDAO;
	
	@Override
	public void insertStore(StoreDTO store) {
		storeDAO.insertStore(store);
	}
	
	@Override
	public void updateStore(StoreDTO store) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public StoreDTO selectStore(int stoNum) {
		return storeDAO.selectStore(stoNum);
	}

	@Override
	public List<StoreDTO> selectStoreList() {
		return storeDAO.selectStoreList();
	}

}
