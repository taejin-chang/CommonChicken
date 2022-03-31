package com.commonchicken.dto;

import java.util.List;

public class SearchStoreVO {
	private String stoNum;
	private String stoName;
	private String stoAdd1;
	private String stoAdd2;	
	private String stoPhone;
	private double revRated1;
	//private List<CommonDTO> commonlist;
	private int cmNum;
	private int cmGoalPeople;
	private String cmDeliveryTime;
	private String cmClose;
	private List<Integer> ratelist;
	
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
	public double getRevRated1() {
		return revRated1;
	}
	public void setRevRated1(double revRated1) {
		this.revRated1 = revRated1;
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
	public List<Integer> getRatelist() {
		return ratelist;
	}
	public void setRatelist(List<Integer> ratelist) {
		this.ratelist = ratelist;
	}
	
	
	
	
	
}
