package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.StoreDAO;
import com.commonchicken.dto.CommonStoreVO;
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
		storeDAO.updateStore(store);		
	}

	@Override
	public StoreDTO selectStore(int stoNum) {
		return storeDAO.selectStore(stoNum);
	}

	@Override
	public List<StoreDTO> selectStoreList() {
		return storeDAO.selectStoreList();
	}

	@Override
	public List<CommonStoreVO> getCommonStore(Map<String, Object> map) {
		return storeDAO.selectCommonStore(map);
	}

	@Override
	public CommonStoreVO getStoreInfo(Map<String, Object> map) {
		return storeDAO.selectStoreInfo(map);
	}

	@Override
	public List<CommonStoreVO> getStoreProductInfo(int stoNum) {
		return storeDAO.selectStoreProductInfo(stoNum);
	}

}
