package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.commonchicken.dao.CommonBoardDAO;
import com.commonchicken.dto.CommonBoardDTO;
import com.commonchicken.dto.CommonBoardListVO;

@Service
public class CommonBoardServiceImpl implements CommonBoardService{
	
	@Autowired
	CommonBoardDAO commonBoardDAO;

	@Transactional
	@Override
	public int insertCommonBoard(CommonBoardDTO commonboard) {
		return commonBoardDAO.insertCommonBoard(commonboard);
	}


	@Override
	public CommonBoardListVO selectCommonBoard(int cmbdNum) {
		return commonBoardDAO.selectCommonBoard(cmbdNum);
	}

	@Override
	public int getCommonBoardCount() {
		return commonBoardDAO.getCommonBoardCount();
	}


	@Override
	public List<CommonBoardListVO> selectCommonBoardList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return commonBoardDAO.selectCommonBoardList(map);
	}

	
}
