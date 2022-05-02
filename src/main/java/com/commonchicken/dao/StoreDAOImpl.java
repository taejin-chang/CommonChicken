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
	public StoreDTO selectStore(String stoNum) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(StoreMapper.class).selectStore(stoNum);
	}

	@Override
	public List<StoreDTO> selectStoreList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(StoreMapper.class).selectStoreList(map);
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
	public List<CommonStoreVO> selectStoreProductInfo(String stoNum) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(StoreMapper.class).selectStoreProductInfo(stoNum);
	}

	@Override
	public List<CommonStoreVO> selectStoreCommonlist(String stoNum) {
		return sqlSession.getMapper(StoreMapper.class).selectStoreCommonlist(stoNum);
	}

	@Override
	public StoreDTO selectStore1(String stoNum) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(StoreMapper.class).selectStore1(stoNum);
	}

	@Override
	public String selectStoreEmail(String memEmail) {
		return sqlSession.getMapper(StoreMapper.class).selectStoreEmail(memEmail);
	}

	@Override
	public CommonStoreVO selectStoreInfoReivewAvg(Map<String, Object> map) {
		return sqlSession.getMapper(StoreMapper.class).selectStoreInfoReivewAvg(map);
	}

	@Override
	public CommonStoreVO selectStoreInfoReivewCount(Map<String, Object> map) {
		return sqlSession.getMapper(StoreMapper.class).selectStoreInfoReivewCount(map);
	}
	
	@Override
	public int deleteStore(String stoNum) {
		return sqlSession.getMapper(StoreMapper.class).deleteStore(stoNum);
	}

	@Override
	public int getStoreCount() {
		return sqlSession.getMapper(StoreMapper.class).getStoreCount();
	}

	@Override
	public int updateStoStatus(Map<String, Object> map) {
		return sqlSession.getMapper(StoreMapper.class).updateStoStatus(map);
	}

	@Override
	public List<Map<String, Object>> getBestStore() {
		return sqlSession.getMapper(StoreMapper.class).getBestStore();
	}




}
