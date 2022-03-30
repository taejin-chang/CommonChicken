package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.CommonStoreVO;
import com.commonchicken.dto.StoreDTO;
import com.commonchicken.mapper.StoreMapper;

@Repository
public class StoreDAOImpl implements StoreDAO {

	@Autowired
	SqlSession sqlSession;
	

	@Override
	public int insertStore(StoreDTO store) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(StoreMapper.class).insertStore(store);
	}
	
	@Override
	public int updateStore(StoreDTO store) {
		// TODO Auto-generated method stub

		return sqlSession.getMapper(StoreMapper.class).updateStore(store);
	}

	@Override
	public StoreDTO selectStore(int stoNum) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(StoreMapper.class).selectStore(stoNum);
	}

	@Override
	public List<StoreDTO> selectStoreList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(StoreMapper.class).selectStoreList();
	}

	@Override
	public List<CommonStoreVO> selectCommonStore(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(StoreMapper.class).selectCommonStore(map);
	}

	@Override
	public CommonStoreVO selectStoreInfo(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(StoreMapper.class).selectStoreInfo(map);
	}

	@Override
	public List<CommonStoreVO> selectStoreProductInfo(int stoNum) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(StoreMapper.class).selectStoreProductInfo(stoNum);
	}

	@Override
	public List<CommonStoreVO> selectStoreCommonlist(int stoNum) {
		return sqlSession.getMapper(StoreMapper.class).selectStoreCommonlist(stoNum);
	}





}
