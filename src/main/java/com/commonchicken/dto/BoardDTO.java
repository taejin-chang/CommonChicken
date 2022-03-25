package com.commonchicken.dto;

public class BoardDTO {
	
	private int brdNum;
	private String memEmail;
	private String brdTitle;
	private String brdContent;
	private String brdImg;
	private String brdDate;
	private int brdViews;
	private int brdCategory;
	private int brdStatus;
	
	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}

	public BoardDTO(int brdNum, String memEmail, String brdTitle, String brdContent, String brdImg, String brdDate,
			int brdViews, int brdCategory, int brdStatus) {
		super();
		this.brdNum = brdNum;
		this.memEmail = memEmail;
		this.brdTitle = brdTitle;
		this.brdContent = brdContent;
		this.brdImg = brdImg;
		this.brdDate = brdDate;
		this.brdViews = brdViews;
		this.brdCategory = brdCategory;
		this.brdStatus = brdStatus;
	}

	public int getBrdNum() {
		return brdNum;
	}

	public void setBrdNum(int brdNum) {
		this.brdNum = brdNum;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getBrdTitle() {
		return brdTitle;
	}

	public void setBrdTitle(String brdTitle) {
		this.brdTitle = brdTitle;
	}

	public String getBrdContent() {
		return brdContent;
	}

	public void setBrdContent(String brdContent) {
		this.brdContent = brdContent;
	}

	public String getBrdImg() {
		return brdImg;
	}

	public void setBrdImg(String brdImg) {
		this.brdImg = brdImg;
	}

	public String getBrdDate() {
		return brdDate;
	}

	public void setBrdDate(String brdDate) {
		this.brdDate = brdDate;
	}

	public int getBrdViews() {
		return brdViews;
	}

	public void setBrdViews(int brdViews) {
		this.brdViews = brdViews;
	}

	public int getBrdCategory() {
		return brdCategory;
	}

	public void setBrdCategory(int brdCategory) {
		this.brdCategory = brdCategory;
	}

	public int getBrdStatus() {
		return brdStatus;
	}

	public void setBrdStatus(int brdStatus) {
		this.brdStatus = brdStatus;
	}
	
	
	
	
}
