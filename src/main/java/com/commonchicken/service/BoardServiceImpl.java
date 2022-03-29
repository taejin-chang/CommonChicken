package com.commonchicken.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.BoardDAO;
import com.commonchicken.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO commonDAO;

	@Override
	public void insertBoard(BoardDTO common) {
		commonDAO.insertBoard(common);
	}

	@Override
	public void updateBoard(BoardDTO common) {
		// TODO Auto-generated method stub

	}

	@Override
	public BoardDTO selectBoard(int cmNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardDTO> selectBoardList(int brdCategory) {
		return commonDAO.selectBoardList(brdCategory);
	}

	@Override
	public void deleteBoard(int cmNum) {
		commonDAO.deleteBoard(cmNum);
	}

}
