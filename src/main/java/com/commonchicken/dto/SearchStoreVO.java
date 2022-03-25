package com.commonchicken.dto;

public class SearchStoreVO {
	private String stoNum;
	private String stoName;
	private String stoAdd1;
	private String stoAdd2;	
	private String stoPhone;
	private String revRated;
	private int cmNum;
	private int cmGoalPeople;
	private String cmDeliveryTime;
	private String cmClose;

	public SearchStoreVO() {
		// TODO Auto-generated constructor stub
	}

	public String getStoNum() {
		return stoNum;
	}

	public void setStoNum(String stoNum) {
		this.stoNum = stoNum;
	}

	public String getStoName() {
		return stoName;
	}

	public void setStoName(String stoName) {
		this.stoName = stoName;
	}

	public String getStoAdd1() {
		return stoAdd1;
	}

	public void setStoAdd1(String stoAdd1) {
		this.stoAdd1 = stoAdd1;
	}

	public String getStoAdd2() {
		return stoAdd2;
	}

	public void setStoAdd2(String stoAdd2) {
		this.stoAdd2 = stoAdd2;
	}

	public String getStoPhone() {
		return stoPhone;
	}

	public void setStoPhone(String stoPhone) {
		this.stoPhone = stoPhone;
	}

	public String getRevRated() {
		return revRated;
	}

	public void setRevRated(String revRated) {
		this.revRated = revRated;
	}

	public int getCmNum() {
		return cmNum;
	}

	public void setCmNum(int cmNum) {
		this.cmNum = cmNum;
	}

	public int getCmGoalPeople() {
		return cmGoalPeople;
	}

	public void setCmGoalPeople(int cmGoalPeople) {
		this.cmGoalPeople = cmGoalPeople;
	}

	public String getCmDeliveryTime() {
		return cmDeliveryTime;
	}

	public void setCmDeliveryTime(String cmDeliveryTime) {
		this.cmDeliveryTime = cmDeliveryTime;
	}

	public String getCmClose() {
		return cmClose;
	}

	public void setCmClose(String cmClose) {
		this.cmClose = cmClose;
	}
	
	
}
