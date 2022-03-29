package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.BoardDTO;

public interface BoardMapper {
	int insertBoard(BoardDTO common);
	int updateBoard(BoardDTO common);
	BoardDTO selectBoard(int cmNum);
	List<BoardDTO> selectBoardList(int brdCategory);
	int deleteBoard(int cmNum);
}
