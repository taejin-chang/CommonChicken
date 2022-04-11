package com.commonchicken.dto;
/*
RPL_NUM        NOT NULL NUMBER(20)     
REV_NUM        NOT NULL NUMBER(20)     
ORD_DETAIL_NUM NOT NULL VARCHAR2(50)   
MEM_EMAIL2     NOT NULL VARCHAR2(50)   
CM_NUM         NOT NULL NUMBER(10)     
STO_NUM        NOT NULL VARCHAR2(50)   
MEM_EMAIL      NOT NULL VARCHAR2(50)   
RPL_CONTENT    NOT NULL VARCHAR2(1000) 
RPL_DATE       NOT NULL DATE      
 */


public class ReplyDTO {
	private int rplNum;
	private int revNum;
	private String ordDetailNum;
	private String memEmail2;
	private int cmNum;
	private String stoNum;
	private String memEmail;
	private String rplContent;
	private String rplDate;
	
	public ReplyDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getRplNum() {
		return rplNum;
	}

	public void setRplNum(int rplNum) {
		this.rplNum = rplNum;
	}

	public int getRevNum() {
		return revNum;
	}

	public void setRevNum(int revNum) {
		this.revNum = revNum;
	}

	public String getOrdDetailNum() {
		return ordDetailNum;
	}

	public void setOrdDetailNum(String ordDetailNum) {
		this.ordDetailNum = ordDetailNum;
	}

	public String getMemEmail2() {
		return memEmail2;
	}

	public void setMemEmail2(String memEmail2) {
		this.memEmail2 = memEmail2;
	}

	public int getCmNum() {
		return cmNum;
	}

	public void setCmNum(int cmNum) {
		this.cmNum = cmNum;
	}

	public String getStoNum() {
		return stoNum;
	}

	public void setStoNum(String stoNum) {
		this.stoNum = stoNum;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getRplContent() {
		return rplContent;
	}

	public void setRplContent(String rplContent) {
		this.rplContent = rplContent;
	}

	public String getRplDate() {
		return rplDate;
	}

	public void setRplDate(String rplDate) {
		this.rplDate = rplDate;
	}


}
