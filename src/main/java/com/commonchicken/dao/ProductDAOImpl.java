package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.ProductDTO;
import com.commonchicken.dto.SearchProductVO;
import com.commonchicken.mapper.ProductMapper;
@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	SqlSession sqlSession;
	

	@Override
	public List<ProductDTO> selectProductList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductMapper.class).selectProductList();
	}

	@Override
	public List<SearchProductVO> selectProduct(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductMapper.class).selectProduct(map);
	}
	
	@Override
	public int insertProduct(ProductDTO product) {
		// TODO Auto-generated method stub
		return 0;
	}


}
