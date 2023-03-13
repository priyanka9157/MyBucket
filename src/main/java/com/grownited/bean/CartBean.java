package com.grownited.bean;

public class CartBean {

	private Integer cartId;
	private Integer userId;
	private Integer productId;
	private String productName;
	private String quantity;
	private Boolean deleted;
	
	
	public Integer getCartId() {
		return cartId;
	}
	

	public void setCartId(Integer cartId) {
		this.cartId=cartId;
	}
	
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId=userId;
	}
	
	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId=productId;
	}
	
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productname) {
		this.productName = productname;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) { 
		this.quantity = quantity;
	}
	
	public Boolean isDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}
	
	

}
