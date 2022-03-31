package com.commonchicken.dto;

import java.util.List;

public class SearchProductVO {
	private String prdCode;
	private String prdName;
	private String prdPrice;
	private List<String> prdCodelist;
	
	public SearchProductVO() {
		// TODO Auto-generated constructor stub
	}
	
	public String getPrdCode() {
		return prdCode;
	}
	public void setPrdCode(String prdCode) {
		this.prdCode = prdCode;
	}
	public String getPrdName() {
		return prdName;
	}
	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
	public String getPrdPrice() {
		return prdPrice;
	}
	public void setPrdPrice(String prdPrice) {
		this.prdPrice = prdPrice;
	}
	public List<String> getPrdCodelist() {
		return prdCodelist;
	}
	public void setPrdCodelist(List<String> prdCodelist) {
		this.prdCodelist = prdCodelist;
	}
	
	
	
}
