package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.ReplyDTO;

public interface ReplyService {
	void insertReply(Map<String, Object>map);
	List<ReplyDTO> selectReplyList(String stoNum);
}
