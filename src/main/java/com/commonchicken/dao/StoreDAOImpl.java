package com.commonchicken.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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





}
