package com.grownited.bean;

public class OrderBean {

	private Integer orderId,userId,addressId,statusId;
	private String orderDate;
	private String totaleAmount;
	private String Status;
	private Boolean deleted;
	
	
	public Integer getOrderId() {
		return orderId;	
	}
	
	public void setOrderId(Integer orderId ){
		this.orderId=orderId;
		
	}
	
	
	public Integer getUserId() {
		return userId;	
	}
	
	public void setUserId(Integer userId ){
		this.userId=userId;
		
	}
		
	public Integer getAddressId() {
		return addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public Integer getStatusId() {
		return statusId;
	}

	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public String getOrderDate() {
		return orderDate;
	} 
	
	public void setOrderDate(String orderDate) {
		this.orderDate=orderDate;
			
	}

	public String getTotaleAmount() {
		return totaleAmount;
	}

	public void setTotaleAmount(String totaleAmount) {
		this.totaleAmount = totaleAmount;
	}

	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}

	
	
	
}
