package com.grownited.bean;

public class OrderDetailBean {
	
	private Integer orderDetailId,orderId,userId,productId;
	private String quantity;
	private String price;
	private Integer status;
	private String productName;
	private Boolean deleted;
	
	
	public Integer getOrderDetailId() {
		return orderDetailId;	
	}
	
	public void setOrderDetailId(Integer orderDetailId ){
		this.orderDetailId=orderDetailId;
		
	}
	
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
	
	public Integer getProductId() {
		return productId;	
	}
	
	public void setProductId(Integer productId ){
		this.productId=productId;
	}
	
	public String getQuantity() {
		return quantity;
		
	}
	
	public void setQuantity(String quantity) {
		this.quantity=quantity;
			
	}
	
	public String getPrice() {
		return price;
	}
	
	public void setPrice(String price) {
		this.price=price;
		
	} 
	
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public String getproductName() {
		return productName;
	}

	public void setproductName(String productName) {
		this.productName = productName;
	}

	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}
	
	
}
