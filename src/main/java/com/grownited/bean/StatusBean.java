package com.grownited.bean;

public class StatusBean {
	private Integer StatusId;
	private String Status;
	private Boolean deleted;


	public Integer getStatusId() {
		return StatusId;
	}

	public void setStatusId(Integer statusId) {
		this.StatusId = statusId;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		this.Status = status;
	}
	
	public boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}


	
}
