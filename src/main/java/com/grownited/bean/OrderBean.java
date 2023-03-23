package com.grownited.bean;

public class OrderBean {

	private Integer orderId,userId;
	private String orderDate;
	private String totalAmount;
	private Integer productId;
	private String productName;
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
	
	
	public String getOrderDate() {
		return orderDate;
	} 
	
	public void setOrderDate(String orderDate) {
		this.orderDate=orderDate;
			
	}
	
	public String getTotaleAmount() {
		return totalAmount;
	}
	
	public void setTotaleAmount(String totaleAmount) {
		this.totalAmount=totaleAmount;
		
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}

	
	
	
}
