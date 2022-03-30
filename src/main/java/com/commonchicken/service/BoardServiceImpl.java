package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.BoardDAO;
import com.commonchicken.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO commonDAO;

	@Override
	public void insertBoard(BoardDTO notice) {
		commonDAO.insertBoard(notice);
	}

	@Override
	public void updateBoard(Map<String,Object> map) {
		commonDAO.updateBoard(map);
	}

	@Override
	public BoardDTO selectBoard(int brdNum) {
		return commonDAO.selectBoard(brdNum);
	}

	@Override
	public List<BoardDTO> selectBoardList(int brdCategory) {
		return commonDAO.selectBoardList(brdCategory);
	}

	@Override
	public void deleteBoard(int brdNum) {
		commonDAO.deleteBoard(brdNum);
	}

}
