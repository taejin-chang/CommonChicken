package com.commonchicken.dto;

public class ReviewVO {
	private int revNum;
	private String memEmail;
	private String revContent;
	private int revRated;
	private String revDate;
	private String revUpload;
	private String prdName;
	private String stoNum;
	
	public ReviewVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	



	public String getStoNum() {
		return stoNum;
	}






	public void setStoNum(String stoNum) {
		this.stoNum = stoNum;
	}






	public ReviewVO(int revNum, String memEmail, String revContent, int revRated, String revDate, String revUpload,
			String prdName, String stoNum) {
		super();
		this.revNum = revNum;
		this.memEmail = memEmail;
		this.revContent = revContent;
		this.revRated = revRated;
		this.revDate = revDate;
		this.revUpload = revUpload;
		this.prdName = prdName;
		this.stoNum = stoNum;
	}






	public int getRevNum() {
		return revNum;
	}

	public void setRevNum(int revNum) {
		this.revNum = revNum;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getRevContent() {
		return revContent;
	}

	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}

	public int getRevRated() {
		return revRated;
	}

	public void setRevRated(int revRated) {
		this.revRated = revRated;
	}

	public String getRevDate() {
		return revDate;
	}

	public void setRevDate(String revDate) {
		this.revDate = revDate;
	}

	public String getRevUpload() {
		return revUpload;
	}

	public void setRevUpload(String revUpload) {
		this.revUpload = revUpload;
	}

	public String getPrdName() {
		return prdName;
	}

	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
	
	
}
