package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.BoardDTO;

public interface BoardMapper {
	int insertBoard(BoardDTO notice);
	int updateBoard(Map<String, Object> map);
	BoardDTO selectBoard(int brdNum);
	List<BoardDTO> selectBoardList(int brdCategory);
	int deleteBoard(int brdNum);
}
