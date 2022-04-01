package com.commonchicken.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.CommonBoardDAO;
import com.commonchicken.dto.CommonBoardDTO;

@Service
public class CommonBoardServiceImpl implements CommonBoardService{
	
	@Autowired
	CommonBoardDAO commonBoardDAO;

	@Override
	public int insertCommonBoard(CommonBoardDTO commonboard) {
		// TODO Auto-generated method stub
		return commonBoardDAO.insertCommonBoard(commonboard);
	}
	
	
}
