package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.ProductDTO;
import com.commonchicken.dto.SearchProductVO;

public interface ProductService {
	List<ProductDTO> getProductList();
	List<SearchProductVO> getProduct(Map<String, Object> map);
}
