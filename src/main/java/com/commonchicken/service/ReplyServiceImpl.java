package com.commonchicken.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.ReplyDAO;
import com.commonchicken.dto.ReplyDTO;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	ReplyDAO replyDAO;

	@Override
	public void insertReply(ReplyDTO reply) {
		replyDAO.insertReply(reply);
	}

	@Override
	public 	List<ReplyDTO> selectReplyList(String stoNum){
		return replyDAO.selectReplyList(stoNum);
	}

}
