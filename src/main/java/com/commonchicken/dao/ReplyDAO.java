package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.ReplyDTO;

public interface ReplyDAO {
	int insertReply(ReplyDTO reply);
	List<ReplyDTO> selectReplyList(String stoNum);
}
