package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.ProductDTO;
import com.commonchicken.dto.SearchProductVO;

public interface ProductMapper {
	int insertProduct(ProductDTO product);
	List<ProductDTO> selectProductList();
	List<SearchProductVO> selectProduct(Map<String, Object> map);
}
