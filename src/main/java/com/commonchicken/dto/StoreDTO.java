package com.commonchicken.dto;
/*
STO_NUM          NOT NULL VARCHAR2(50)   
MEM_EMAIL        NOT NULL VARCHAR2(50)   
STO_CODE         NOT NULL VARCHAR2(50)   
STO_NAME         NOT NULL VARCHAR2(50)   
STO_CEO          NOT NULL VARCHAR2(50)   
STO_CONDITION    NOT NULL VARCHAR2(50)   
STO_SECTOR       NOT NULL VARCHAR2(50)   
STO_ZIP_CODE     NOT NULL VARCHAR2(50)   
STO_ADD1         NOT NULL VARCHAR2(50)   
STO_ADD2         NOT NULL VARCHAR2(50)   
STO_PHONE        NOT NULL VARCHAR2(50)   
STO_STATUS       NOT NULL NUMBER(1)      
STO_OPENNING              VARCHAR2(50)   
STO_MINORDER              VARCHAR2(50)   
STO_PAYMENT               VARCHAR2(50)   
STO_BONE_ORG              VARCHAR2(50)   
STO_BONELESS_ORG          VARCHAR2(50)   
STO_MESSAGE               VARCHAR2(1000) 
 */


public class StoreDTO {
	private String stoNum;
	private String memEmail;
	private String stoCode;
	private String stoName;
	private String stoCeo;
	private String stoCondition;
	private String stoSector;
	private String stoZipCode;
	private String stoAdd1;
	private String stoAdd2;
	private String stoPhone;
	private int stoStatus;
	private String stoOpenning;
	private String stoMinorder;
	private String stoPayment;
	private String stoBoneOrg;
	private String stoBonelessOrg;
	private String stoMessage;
	private String stoOrigin;
	private String stoUpload;
	
	public StoreDTO() {
		// TODO Auto-generated constructor stub
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

	public String getStoCode() {
		return stoCode;
	}

	public void setStoCode(String stoCode) {
		this.stoCode = stoCode;
	}

	public String getStoName() {
		return stoName;
	}

	public void setStoName(String stoName) {
		this.stoName = stoName;
	}

	public String getStoCeo() {
		return stoCeo;
	}

	public void setStoCeo(String stoCeo) {
		this.stoCeo = stoCeo;
	}

	public String getStoCondition() {
		return stoCondition;
	}

	public void setStoCondition(String stoCondition) {
		this.stoCondition = stoCondition;
	}

	public String getStoSector() {
		return stoSector;
	}

	public void setStoSector(String stoSector) {
		this.stoSector = stoSector;
	}

	public String getStoZipCode() {
		return stoZipCode;
	}

	public void setStoZipCode(String stoZipCode) {
		this.stoZipCode = stoZipCode;
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

	public int getStoStatus() {
		return stoStatus;
	}

	public void setStoStatus(int stoStatus) {
		this.stoStatus = stoStatus;
	}

	public String getStoOpenning() {
		return stoOpenning;
	}

	public void setStoOpenning(String stoOpenning) {
		this.stoOpenning = stoOpenning;
	}

	public String getStoMinorder() {
		return stoMinorder;
	}

	public void setStoMinorder(String stoMinorder) {
		this.stoMinorder = stoMinorder;
	}

	public String getStoPayment() {
		return stoPayment;
	}

	public void setStoPayment(String stoPayment) {
		this.stoPayment = stoPayment;
	}

	public String getStoBoneOrg() {
		return stoBoneOrg;
	}

	public void setStoBoneOrg(String stoBoneOrg) {
		this.stoBoneOrg = stoBoneOrg;
	}

	public String getStoBonelessOrg() {
		return stoBonelessOrg;
	}

	public void setStoBonelessOrg(String stoBonelessOrg) {
		this.stoBonelessOrg = stoBonelessOrg;
	}

	public String getStoMessage() {
		return stoMessage;
	}

	public void setStoMessage(String stoMessage) {
		this.stoMessage = stoMessage;
	}

	public String getStoOrigin() {
		return stoOrigin;
	}

	public void setStoOrigin(String stoOrigin) {
		this.stoOrigin = stoOrigin;
	}

	public String getStoUpload() {
		return stoUpload;
	}

	public void setStoUpload(String stoUpload) {
		this.stoUpload = stoUpload;
	}
	
	
}
