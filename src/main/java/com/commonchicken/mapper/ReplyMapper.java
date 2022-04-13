package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.ReplyDTO;

public interface ReplyMapper {
	int insertReply(Map<String, Object>map);
	List<ReplyDTO> selectReplyList(String stoNum);
}
