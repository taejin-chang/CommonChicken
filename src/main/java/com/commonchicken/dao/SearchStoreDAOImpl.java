package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.SearchStoreVO;
import com.commonchicken.mapper.SearchStoreMapper;

@Repository
public class SearchStoreDAOImpl implements SearchStoreDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<SearchStoreVO> selectMainSearch(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(SearchStoreMapper.class).selectMainSearch(map);
	}

	@Override
	public List<SearchStoreVO> selectDetailSearch(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(SearchStoreMapper.class).selectDetailSearch(map);
	}

	@Override
	public List<SearchStoreVO> selectAllSearch() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(SearchStoreMapper.class).selectAllSearch();
	}
	
	
}

