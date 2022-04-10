package com.commonchicken.service;

import java.util.List;

import com.commonchicken.dto.ReplyDTO;

public interface ReplyService {
	void insertReply(ReplyDTO reply);
	List<ReplyDTO> selectReplyList(String stoNum);
}
