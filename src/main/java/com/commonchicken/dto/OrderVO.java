package com.commonchicken.dto;

public class OrderVO {
	
	private int ordDetailNum;
	private String memEmail;
	private int cmNum;
	private int ordBundleNum;
	private int ordQuantity;
	private int ordStatus;
	private String ordAdd1;
	private String ordAdd2;
	private String ordPhone;
	private String ordRequest;
	private String prdName;
	private String stoName;
	
	public OrderVO() {
		// TODO Auto-generated constructor stub
	}

	

	public String getOrdRequest() {
		return ordRequest;
	}



	public void setOrdRequest(String ordRequest) {
		this.ordRequest = ordRequest;
	}



	public OrderVO(int ordDetailNum, String memEmail, int cmNum, int ordBundleNum, int ordQuantity, int ordStatus,
			String ordAdd1, String ordAdd2, String ordPhone, String ordRequest, String prdName, String stoName) {
		super();
		this.ordDetailNum = ordDetailNum;
		this.memEmail = memEmail;
		this.cmNum = cmNum;
		this.ordBundleNum = ordBundleNum;
		this.ordQuantity = ordQuantity;
		this.ordStatus = ordStatus;
		this.ordAdd1 = ordAdd1;
		this.ordAdd2 = ordAdd2;
		this.ordPhone = ordPhone;
		this.ordRequest = ordRequest;
		this.prdName = prdName;
		this.stoName = stoName;
	}



	public int getOrdDetailNum() {
		return ordDetailNum;
	}

	public void setOrdDetailNum(int ordDetailNum) {
		this.ordDetailNum = ordDetailNum;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public int getCmNum() {
		return cmNum;
	}

	public void setCmNum(int cmNum) {
		this.cmNum = cmNum;
	}

	public int getOrdBundleNum() {
		return ordBundleNum;
	}

	public void setOrdBundleNum(int ordBundleNum) {
		this.ordBundleNum = ordBundleNum;
	}

	public int getOrdQuantity() {
		return ordQuantity;
	}

	public void setOrdQuantity(int ordQuantity) {
		this.ordQuantity = ordQuantity;
	}

	public int getOrdStatus() {
		return ordStatus;
	}

	public void setOrdStatus(int ordStatus) {
		this.ordStatus = ordStatus;
	}

	public String getOrdAdd1() {
		return ordAdd1;
	}

	public void setOrdAdd1(String ordAdd1) {
		this.ordAdd1 = ordAdd1;
	}

	public String getOrdAdd2() {
		return ordAdd2;
	}

	public void setOrdAdd2(String ordAdd2) {
		this.ordAdd2 = ordAdd2;
	}

	public String getOrdPhone() {
		return ordPhone;
	}

	public void setOrdPhone(String ordPhone) {
		this.ordPhone = ordPhone;
	}

	public String getPrdName() {
		return prdName;
	}

	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}

	public String getStoName() {
		return stoName;
	}

	public void setStoName(String stoName) {
		this.stoName = stoName;
	}
	
	
	
	
}
