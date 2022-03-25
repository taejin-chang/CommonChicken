package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.ReplyDTO;

public interface ReplyMapper {
	int insertReply(ReplyDTO reply);
	List<ReplyDTO> selectReplyList();
}
