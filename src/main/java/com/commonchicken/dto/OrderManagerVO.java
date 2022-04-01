package com.commonchicken.dto;

import java.util.List;

public class OrderManagerVO {
	private int cmNum;
	private String cmDeliveryTime;
	private String cmClose;
	private int cmGoalPeople;
	private String cmRegdate;
	private int cmStatus;
	private int cmSales;
	private String stoNum;
	private String memEmail;
	private StoreDTO storeDTO;
	private List<OrderAdminVO> orderList;

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
	public int getCmStatus() {
		return cmStatus;
	}
	public void setCmStatus(int cmStatus) {
		this.cmStatus = cmStatus;
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
	public StoreDTO getStoreDTO() {
		return storeDTO;
	}
	public void setStoreDTO(StoreDTO storeDTO) {
		this.storeDTO = storeDTO;
	}
	public List<OrderAdminVO> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<OrderAdminVO> orderList) {
		this.orderList = orderList;
	}

	

}