package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.ProductDTO;
import com.commonchicken.dto.SearchProductVO;

public interface ProductDAO {
	List<SearchProductVO> selectProduct(Map<String, Object> map);
	int insertProduct(ProductDTO product);
	List<ProductDTO> selectProductList();
}
