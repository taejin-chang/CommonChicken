package com.commonchicken.dto;

public class CommonDTO {

	private int cmNum;
	private String cmDeliveryTime;
	private String cmClose;
	private int cmGoalPeople;
	private String cmRegdate;
	private String cmExpdate;
	private int cmSales;
	private String stoNum;
	private String memEmail;
	
	public CommonDTO() {
		// TODO Auto-generated constructor stub
	}

	public CommonDTO(int cmNum, String cmDeliveryTime, String cmClose, int cmGoalPeople, String cmRegdate,
			String cmExpdate, int cmSales, String stoNum, String memEmail) {
		super();
		this.cmNum = cmNum;
		this.cmDeliveryTime = cmDeliveryTime;
		this.cmClose = cmClose;
		this.cmGoalPeople = cmGoalPeople;
		this.cmRegdate = cmRegdate;
		this.cmExpdate = cmExpdate;
		this.cmSales = cmSales;
		this.stoNum = stoNum;
		this.memEmail = memEmail;
	}

	public int getCmNum() {
		return cmNum;
	}

	public void setCmNum(int cmNum) {
		this.cmNum = cmNum;
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

	public int getCmGoalPeople() {
		return cmGoalPeople;
	}

	public void setCmGoalPeople(int cmGoalPeople) {
		this.cmGoalPeople = cmGoalPeople;
	}

	public String getCmRegdate() {
		return cmRegdate;
	}

	public void setCmRegdate(String cmRegdate) {
		this.cmRegdate = cmRegdate;
	}

	public String getCmExpdate() {
		return cmExpdate;
	}

	public void setCmExpdate(String cmExpdate) {
		this.cmExpdate = cmExpdate;
	}

	public int getCmSales() {
		return cmSales;
	}

	public void setCmSales(int cmSales) {
		this.cmSales = cmSales;
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
	
	
	
}
