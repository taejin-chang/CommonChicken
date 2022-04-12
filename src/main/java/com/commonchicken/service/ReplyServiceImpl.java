package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.ReplyDAO;
import com.commonchicken.dto.ReplyDTO;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	ReplyDAO replyDAO;

	@Override
	public void insertReply(Map<String, Object>map) {
		replyDAO.insertReply(map);
	}

	@Override
	public 	List<ReplyDTO> selectReplyList(String stoNum){
		return replyDAO.selectReplyList(stoNum);
	}

}
