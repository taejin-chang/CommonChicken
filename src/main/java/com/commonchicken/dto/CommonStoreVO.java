package com.commonchicken.dto;

public class CommonStoreVO {
	private int cmNum;
	private String cmDeliveryTime;
	private String cmClose;
	private double revRatedAvg;
	private int revRatedCount;
	private StoreDTO storeDTO;
	private ProductDTO productDTO;
	private ReviewDTO reviewDTO;
	private MemberDTO memberDTO;
	
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
	public double getRevRatedAvg() {
		return revRatedAvg;
	}
	public void setRevRatedAvg(double revRatedAvg) {
		this.revRatedAvg = revRatedAvg;
	}
	public int getRevRatedCount() {
		return revRatedCount;
	}
	public void setRevRatedCount(int revRatedCount) {
		this.revRatedCount = revRatedCount;
	}
	public StoreDTO getStoreDTO() {
		return storeDTO;
	}
	public void setStoreDTO(StoreDTO storeDTO) {
		this.storeDTO = storeDTO;
	}
	public ProductDTO getProductDTO() {
		return productDTO;
	}
	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}
	public ReviewDTO getReviewDTO() {
		return reviewDTO;
	}
	public void setReviewDTO(ReviewDTO reviewDTO) {
		this.reviewDTO = reviewDTO;
	}
	public MemberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	
	
	
	
	
	
}
