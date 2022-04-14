package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.CommonDTO;
import com.commonchicken.mapper.CommonMapper;

@Repository
public class CommonDAOImpl implements CommonDAO {

	public static final Logger logger=LoggerFactory.getLogger(CommonDAOImpl.class);

	
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertCommon(CommonDTO common) {

		return sqlSession.getMapper(CommonMapper.class).insertCommon(common);
	}

	@Override
	public int updateCommon(CommonDTO common) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public CommonDTO selectCommon(int cmNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CommonDTO> selectCommonList(Map<String, Object>map) {
		return sqlSession.getMapper(CommonMapper.class).selectCommonList(map);
	}

	@Override
	public int deleteCommon(int cmNum) {
		return sqlSession.getMapper(CommonMapper.class).deleteCommon(cmNum);
	}

	@Override
	public CommonDTO searchCommon(int cmNum) {
		return sqlSession.getMapper(CommonMapper.class).searchCommon(cmNum);
	}

	@Override
	public int getCommonCount(String stoNum) {
		return sqlSession.getMapper(CommonMapper.class).getCommonCount(stoNum);
	}

	@Override
	public int successCommon() {
		return sqlSession.getMapper(CommonMapper.class).successCommon();
	}
	
	@Override
	public int totalSales() {
		return sqlSession.getMapper(CommonMapper.class).totalSales();
	}

	@Override
	public List<Map<String, Object>> getMonthSales() {
		return sqlSession.getMapper(CommonMapper.class).getMonthSales();
	}

}
