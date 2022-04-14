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
	public StoreDTO selectStore(String stoNum) {
		return storeDAO.selectStore(stoNum);
	}

	@Override
	public List<StoreDTO> selectStoreList(Map<String, Object> map) {
		return storeDAO.selectStoreList(map);
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

	@Override
	public List<CommonStoreVO> getStoreCommonlist(int stoNum) {
		return storeDAO.selectStoreCommonlist(stoNum);
	}

	@Override
	public StoreDTO selectStore1(String stoNum) {
		return storeDAO.selectStore1(stoNum);
	}

	@Override
	public String selectStoreEmail(String memEmail) {
		return storeDAO.selectStoreEmail(memEmail);
	}

	@Override
	public CommonStoreVO selectStoreInfoReivewAvg(Map<String, Object> map) {
		return storeDAO.selectStoreInfoReivewAvg(map);
	}

	@Override
	public CommonStoreVO selectStoreInfoReivewCount(Map<String, Object> map) {
		return storeDAO.selectStoreInfoReivewCount(map);
	}
	
	@Override
	public int deleteStore(String stoNum) {
		return storeDAO.deleteStore(stoNum);
	}

	@Override
	public int getStoreCount() {
		return storeDAO.getStoreCount();
	}

	@Override
	public void updateStoStatus(Map<String, Object> map) {
		storeDAO.updateStoStatus(map);
	}

	@Override
	public List<Map<String, Object>> getBestStore() {
		return storeDAO.getBestStore();
	}	

}
