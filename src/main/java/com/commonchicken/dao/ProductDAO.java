package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.ProductDTO;

public interface ProductDAO {
	int insertProduct(ProductDTO product);
	List<ProductDTO> selectProductList();
}
