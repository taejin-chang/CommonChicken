package com.commonchicken.exception;

//로그인 인증 실패를 위해 작성된 예외클래스
public class LoginAuthFailException extends Exception {
	private static final long serialVersionUID = 1L;

	private String userid;
	
	public LoginAuthFailException() {
		// TODO Auto-generated constructor stub
	}

	public LoginAuthFailException(String message, String userid) {
		super(message);
		this.userid = userid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
}
