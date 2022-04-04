package com.commonchicken.dto;

public class OrderManagerVO2 {
	private int ordDetailNum;
	private String memEmail;
	private String ordBundleNum;
	private String ordQuantity;
	private int ordStatus;
	private String ordZipcode;
	private String ordAdd1;
	private String ordAdd2;
	private String ordPhone;
	private String ordRequest;
	private int ordPayMethod;
	private ProductDTO productList;
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
	public String getOrdBundleNum() {
		return ordBundleNum;
	}
	public void setOrdBundleNum(String ordBundleNum) {
		this.ordBundleNum = ordBundleNum;
	}
	public String getOrdQuantity() {
		return ordQuantity;
	}
	public void setOrdQuantity(String ordQuantity) {
		this.ordQuantity = ordQuantity;
	}
	public int getOrdStatus() {
		return ordStatus;
	}
	public void setOrdStatus(int ordStatus) {
		this.ordStatus = ordStatus;
	}
	public String getOrdZipcode() {
		return ordZipcode;
	}
	public void setOrdZipcode(String ordZipcode) {
		this.ordZipcode = ordZipcode;
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
	public String getOrdRequest() {
		return ordRequest;
	}
	public void setOrdRequest(String ordRequest) {
		this.ordRequest = ordRequest;
	}
	public int getOrdPayMethod() {
		return ordPayMethod;
	}
	public void setOrdPayMethod(int ordPayMethod) {
		this.ordPayMethod = ordPayMethod;
	}
	public ProductDTO getProductList() {
		return productList;
	}
	public void setProductList(ProductDTO productList) {
		this.productList = productList;
	}
}
