package com.commonchicken.service;

import java.util.List;

import com.commonchicken.dto.BoardDTO;

public interface BoardService {
	void insertBoard(BoardDTO common);
	void updateBoard(BoardDTO common);
	BoardDTO selectBoard(int cmNum);
	List<BoardDTO> selectBoardList(int brdCategory);
	void deleteBoard(int cmNum);
}
