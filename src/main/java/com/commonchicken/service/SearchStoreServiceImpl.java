package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.SearchStoreDAO;
import com.commonchicken.dto.SearchStoreVO;

@Service
public class SearchStoreServiceImpl implements SearchStoreService {
	@Autowired
	SearchStoreDAO searchStoreDAO;

	@Override
	public List<SearchStoreVO> getMainSearch(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return searchStoreDAO.selectMainSearch(map);
	}

	@Override
	public List<SearchStoreVO> getDetailSearch(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return searchStoreDAO.selectDetailSearch(map);
	}
	
	
}
