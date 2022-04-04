package com.commonchicken.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.CommonBoardDAO;
import com.commonchicken.dto.CommonBoardDTO;
import com.commonchicken.dto.CommonBoardListVO;

@Service
public class CommonBoardServiceImpl implements CommonBoardService{
	
	@Autowired
	CommonBoardDAO commonBoardDAO;

	@Override
	public int insertCommonBoard(CommonBoardDTO commonboard) {
		return commonBoardDAO.insertCommonBoard(commonboard);
	}

	@Override
	public List<CommonBoardListVO> selectCommonBoardList() {
		return commonBoardDAO.selectCommonBoardList();
	}

	@Override
	public CommonBoardListVO selectCommonBoard(int cmbdNum) {
		return commonBoardDAO.selectCommonBoard(cmbdNum);
	}

	
}
