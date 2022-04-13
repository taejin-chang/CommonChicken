package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.ReplyDTO;

public interface ReplyDAO {
	int insertReply(Map<String, Object>map);
	List<ReplyDTO> selectReplyList(String stoNum);
}
