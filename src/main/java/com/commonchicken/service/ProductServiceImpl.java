package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.ProductDAO;
import com.commonchicken.dto.ProductDTO;
import com.commonchicken.dto.SearchProductVO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDAO productDAO;

	@Override
	public List<ProductDTO> getProductList() {
		return productDAO.selectProductList();
	}

	@Override
	public List<ProductDTO> selectProductListAdmin(Map<String, Object> map) {
		return productDAO.selectProductListAdmin(map);
	}

	@Override
	public List<SearchProductVO> getProduct(Map<String, Object> map) {
		return productDAO.selectProduct(map);
	}

	@Override
	public void insertProduct(ProductDTO product) {
		productDAO.insertProduct(product);
		
	}

	@Override
	public void deletePoduct(String prdCode) {
		productDAO.deletePoduct(prdCode);
	}

	@Override
	public int getStoreProductCount(String stoNum) {
		return productDAO.getStoreProductCount(stoNum);
	}


}
