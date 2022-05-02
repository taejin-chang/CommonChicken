package com.commonchicken.socketHandler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.commonchicken.dto.MemberDTO;

public class EchoHandler extends TextWebSocketHandler {
	
	private List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	private Map<String, WebSocketSession> userSessions = new HashMap<String, WebSocketSession>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception{
		
		System.out.println("afterConnectionEstablished:" + session);
		sessions.add(session);
		String senderId = getId(session);
		System.out.println("loginId:" + senderId );
		userSessions.put(senderId, session);
	
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("handleTextMessage:" + session + " : " + message);
	
		//String senderId = getId(session);
		//for (WebSocketSession sess: sessions) {
		//	sess.sendMessage(new TextMessage(message.getPayload()+"님, 배달이 시작되었습니다!"));
		//}
		
		//protocol: cmd,댓글작성자,게시글작성자,bno  (ex: reply,user2,user1,234)
		String msg = message.getPayload();
		
		if (StringUtils.isNotEmpty(msg)) {
			//String[] strs = msg.split(",");
			//if (strs != null && strs.length == 4) {
				//String receiver = strs[0];
				//String cmd = strs[0];
				//String replyWriter = strs[1];
				//String boardWriter = strs[2];
				//String bno = strs[3];
				
				WebSocketSession boardWriterSession = userSessions.get(msg);
				if (boardWriterSession != null) {
					TextMessage tmpMsg = new TextMessage(msg + "님, 배달이 시작되었습니다!");
					boardWriterSession.sendMessage(tmpMsg);
					System.out.println("msg"+tmpMsg);
				}
			}
		}

	
	private String getId(WebSocketSession session) {
		
		Map<String, Object> httpSession = session.getAttributes();
		MemberDTO loginUser = (MemberDTO)httpSession.get("loginMember");
		if (loginUser == null) {
			return session.getId();
		} else {
			return loginUser.getMemEmail();
		}
	}
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("afterConnectionClosed:" + session + ":" + status);
		sessions.remove(session);
		userSessions.remove(session.getId());
	}
}