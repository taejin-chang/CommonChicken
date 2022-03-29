package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.BoardDTO;

public interface BoardDAO {
	int insertBoard(BoardDTO common);
	int updateBoard(BoardDTO common);
	BoardDTO selectBoard(int cmNum);
	List<BoardDTO> selectBoardList(int brdCategory);
	int deleteBoard(int cmNum);
}
