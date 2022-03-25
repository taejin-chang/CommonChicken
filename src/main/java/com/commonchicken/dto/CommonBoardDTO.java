package com.commonchicken.dto;

public class CommonBoardDTO {

	private int cmbdNum;
	private String ordDetailNum;
	private String memEmail;
	private int cmNum;
	private String cmbdTitle;
	private String cmbdDate;
	private int cmbdStatus;
	
	public CommonBoardDTO() {
		// TODO Auto-generated constructor stub
	}

	public CommonBoardDTO(int cmbdNum, String ordDetailNum, String memEmail, int cmNum, String cmbdTitle,
			String cmbdDate, int cmbdStatus) {
		super();
		this.cmbdNum = cmbdNum;
		this.ordDetailNum = ordDetailNum;
		this.memEmail = memEmail;
		this.cmNum = cmNum;
		this.cmbdTitle = cmbdTitle;
		this.cmbdDate = cmbdDate;
		this.cmbdStatus = cmbdStatus;
	}

	public int getCmbdNum() {
		return cmbdNum;
	}

	public void setCmbdNum(int cmbdNum) {
		this.cmbdNum = cmbdNum;
	}

	public String getOrdDetailNum() {
		return ordDetailNum;
	}

	public void setOrdDetailNum(String ordDetailNum) {
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

	public String getCmbdTitle() {
		return cmbdTitle;
	}

	public void setCmbdTitle(String cmbdTitle) {
		this.cmbdTitle = cmbdTitle;
	}

	public String getCmbdDate() {
		return cmbdDate;
	}

	public void setCmbdDate(String cmbdDate) {
		this.cmbdDate = cmbdDate;
	}

	public int getCmbdStatus() {
		return cmbdStatus;
	}

	public void setCmbdStatus(int cmbdStatus) {
		this.cmbdStatus = cmbdStatus;
	}
	
	
	
	
}
