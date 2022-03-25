package com.commonchicken.dto;
/*
REV_NUM        NOT NULL NUMBER(20)     
ORD_DETAIL_NUM NOT NULL VARCHAR2(50)   
MEM_EMAIL      NOT NULL VARCHAR2(50)   
CM_NUM         NOT NULL NUMBER(10)     
REV_CONTENT             VARCHAR2(2000) 
REV_IMG1                VARCHAR2(100)  
REV_RATED      NOT NULL NUMBER         
REV_DATE                DATE           
REV_VIEWS               NUMBER         
 */


public class ReviewDTO {
	private String revNum;
	private String ordDetailNum;
	private String memEmail;
	private String cmNum;
	private String revContent;
	private String revRated;
	private String revDate;
	private String revViews;
	private String revOrigin;
	private String revUpload;
	
	public ReviewDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getRevNum() {
		return revNum;
	}

	public void setRevNum(String revNum) {
		this.revNum = revNum;
	}

	public String getOrdDetailNum() {
		return ordDetailNum;
	}

	public void setOrdDetailNum(String ordDetailNum) {
		this.ordDetailNum = ordDetailNum;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getCmNum() {
		return cmNum;
	}

	public void setCmNum(String cmNum) {
		this.cmNum = cmNum;
	}

	public String getRevContent() {
		return revContent;
	}

	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}

	public String getRevRated() {
		return revRated;
	}

	public void setRevRated(String revRated) {
		this.revRated = revRated;
	}

	public String getRevDate() {
		return revDate;
	}

	public void setRevDate(String revDate) {
		this.revDate = revDate;
	}

	public String getRevViews() {
		return revViews;
	}

	public void setRevViews(String revViews) {
		this.revViews = revViews;
	}

	public String getRevOrigin() {
		return revOrigin;
	}

	public void setRevOrigin(String revOrigin) {
		this.revOrigin = revOrigin;
	}

	public String getRevUpload() {
		return revUpload;
	}

	public void setRevUpload(String revUpload) {
		this.revUpload = revUpload;
	}
	
	
}
