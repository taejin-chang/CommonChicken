package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.CommonDAO;
import com.commonchicken.dto.CommonDTO;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	CommonDAO commonDAO;

	@Override
	public void insertCommon(CommonDTO common) {
		commonDAO.insertCommon(common);
	}

	@Override
	public void updateCommon(CommonDTO common) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public CommonDTO selectCommon(int cmNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CommonDTO> selectCommonList(Map<String,Object>map) {
		return commonDAO.selectCommonList(map);
	}

	@Override
	public void deleteCommon(int cmNum) {
		commonDAO.deleteCommon(cmNum);
	}

	@Override
	public CommonDTO searchCommon(int cmNum) {
		return commonDAO.searchCommon(cmNum);
	}

	@Override
	public int getCommonCount(String stoNum) {
		return commonDAO.getCommonCount(stoNum);
	}
	

}
