package com.grownited.bean;

public class OrderBean {

	private Integer orderId,userId;
	private String orderDate;
	private String totalAmount;
	
	
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
	
	public String getOderDate() {
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
}
