package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.MemberDTO;
import com.commonchicken.dto.ProductDTO;

public interface ProductMapper {
	int insertProduct(ProductDTO product);
	List<ProductDTO> selectProductList();
}
