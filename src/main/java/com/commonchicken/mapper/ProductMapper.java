package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.ProductDTO;
import com.commonchicken.dto.SearchProductVO;

public interface ProductMapper {
	int insertProduct(ProductDTO product);
	List<ProductDTO> selectProductList();
	List<ProductDTO> selectProductListAdmin(Map<String, Object> map);
	List<SearchProductVO> selectProduct(Map<String, Object> map);
	int deletePoduct(String prdCode);
	int getStoreProductCount(String stoNum);
}
